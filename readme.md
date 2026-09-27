# Rivanna 3 telemetry display

STM32U5A9 firmware for the 800×480 Riverdi display. The active UI uses
[LVGL v9.6.0](https://github.com/lvgl/lvgl/tree/v9.6.0), FreeRTOS, and the
existing STM32 HAL peripheral setup.

## Open in LVGL Pro

Choose **Open UI Project** in LVGL Pro and select the [`LVGLPro/`](LVGLPro/)
folder. It contains the editable 800×480 Startup, Driver, and Telemetry Data
screens used by the firmware. After editing, use Pro's **Compile and export
code** action before rebuilding the firmware. See
[`LVGLPro/README.md`](LVGLPro/README.md) for the workflow.

## Build

Install Python 3.9+ and `cantools` (`python3 -m pip install -r requirements-can.txt`) along with
the ARM toolchain. The CAN definitions are pinned in `ThirdParty/CAN-messages`.

```sh
git submodule update --init
python3 compile.py
```

`python3 compile.py --clean` removes the old build first; `--jobs N` changes
parallelism and `--silent` shows output only if the build fails. This script
wraps `make -f Makefile.lvgl` and works from any directory.

The Makefile runs the submodule's `generate_all.py` through
`scripts/generate_can.py` whenever a DBC or generator changes. It stages the
inputs in `build/can` and updates `Common/can_structs/Src` and
`Common/can_structs/Inc` only if the output differs.
The STM32CubeIDE Debug and Release configurations run the same script before
building. Generated CAN code is committed so CubeIDE can discover its source
files before the first build; the submodule remains the DBC source of truth.

The output is `build/lvgl/rivanna-lvgl.elf` and `.hex`. The toolchain prefix
can be changed with `TOOLCHAIN=...`. The `STM32CubeIDE/` project metadata also
links the LVGL, `LVGLPro/`, `DisplayBoard/`, and `Common/` sources, but the standalone Makefile is the
reproducible build used for this migration.

## Flash with ST-Link

Connect and power the display, then connect an ST-Link to its SWD port. Install
STM32CubeProgrammer and make `STM32_Programmer_CLI` available on your `PATH`.
From the repository root, run:

```sh
python3 compile.py
python3 upload.py
```

`upload.py` programs `build/lvgl/rivanna-lvgl.hex`, verifies it, and resets the
MCU. If normal SWD connection fails and NRST is wired, use
`python3 upload.py --under-reset`. The script also accepts `--programmer PATH`,
`--firmware PATH`, and `--silent`. It does not erase the entire chip before
programming.

## Repository layout

The layout follows Rivanna3S's board-specific `Inc`/`Src` folder and shared
`Common` folder. `Core` stays in place for CubeMX-generated peripheral setup.

| Location | Responsibility |
| --- | --- |
| `DisplayBoard/Inc/`, `DisplayBoard/Src/` | Board pinmap, input/display drivers, FreeRTOS tasks, state getters/setters, and LVGL bindings. |
| `Common/Libs/Inc/`, `Common/Libs/Src/` | Shared telemetry types, CAN frame decoding, and unit conversion. |
| `Common/can_structs/Inc/`, `Common/can_structs/Src/` | Generated CAN headers and sources, in the same layout as Rivanna3S. |
| `Core/Inc/`, `Core/Src/` | CubeMX peripheral initialization, interrupt handlers, and RTOS startup. |
| `Drivers/`, `Middlewares/` | STM32 HAL, CMSIS, BSP, and FreeRTOS dependencies. |
| `LVGLPro/` | Editable LVGL Pro project and exported screens, fonts, and widgets. |
| `ThirdParty/lvgl/` | Pinned LVGL library. |
| `ThirdParty/CAN-messages/` | Pinned DBC definitions and the upstream `generate_all.py`. |
| `scripts/generate_can.py` | Runs CAN generation outside the submodule and publishes the snapshots in `Common/can_structs`. |

Start with `DisplayBoard/Inc/pinmap.h` for wiring,
`DisplayBoard/Src/rtos_tasks.c` for task behavior,
`DisplayBoard/Inc/app_state.h` for the thread-safe getter/setter API, and
`DisplayBoard/Src/ui_bindings.c` for the values passed to LVGL. The display's
CAN transmit setup is in `DisplayBoard/Src/board_can.c`; its receive frames
are decoded in `Common/Libs/Src/telemetry_decode.c`.

The LVGL Pro screens bind to subjects. `ui_bindings.c` reads `DashboardView`
via `dashboard_view_get()` and updates those subjects every 100 ms. The screens
do not call FreeRTOS, HAL GPIO, or CAN APIs. Producers call `app_state_set_buttons()` and
`app_state_set_telemetry()`; consumers use the matching getters. The state
queues are length one, so a read does not consume the latest snapshot.

Physical buttons continue to send their *held* state in the CAN dashboard
command every 10 ms. They do not navigate LVGL. Touching the screen buttons
switches between Driver and Data. The display refreshes values every 100 ms.

## Memory and hardware notes

The LTDC uses a single 800×480 RGB888 framebuffer at `0x20000000` (1,152,000
bytes). LVGL's 128 KiB allocator starts at `0x20119400`. Both are reserved in
`STM32CubeIDE/STM32U5A9NJHXQ_FLASH.ld`; keep `DisplayBoard/Inc/lv_conf.h` and the linker
script in sync when changing them.

The project builds with the ARM toolchain, but hardware touch coordinates,
color order, and scanout timing still need verification on the Riverdi board.
Review generated changes after using CubeMX because the LVGL application lives
in `DisplayBoard/` and is maintained outside CubeMX.
