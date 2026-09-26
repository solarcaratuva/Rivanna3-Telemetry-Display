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
inputs in `build/can` and updates `Generated/CAN` only if the output differs.
The STM32CubeIDE Debug and Release configurations run the same script before
building. Generated CAN code is committed so CubeIDE can discover its source
files before the first build; the submodule remains the DBC source of truth.

The output is `build/lvgl/rivanna-lvgl.elf` and `.hex`. The toolchain prefix
can be changed with `TOOLCHAIN=...`. The `STM32CubeIDE/` project metadata also
links the LVGL, `LVGLPro/`, and `App/` sources, but the standalone Makefile is the
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

## Where code lives

| Location | Responsibility |
| --- | --- |
| `App/Inc/pinmap.h` | Named board button and touch GPIO mappings, following Rivanna3S's pinmap/pindef convention. |
| `App/Src/board_buttons.c` | Active-low GPIO reads. No FreeRTOS or LVGL dependency. |
| `App/Src/rtos_tasks.c` | 10 ms heartbeat, dashboard command transmit, and CAN receive loops. |
| `App/Src/telemetry_decode.c` | CAN frame unpacking into a persistent telemetry snapshot. |
| `ThirdParty/CAN-messages/` | Pinned DBC definitions and the upstream `generate_all.py`. |
| `scripts/generate_can.py`, `Generated/CAN/` | Isolated generation step and C snapshot used by both builds. |
| `App/Src/app_state.c` | Thread-safe `set`/`get` functions backed by one-element FreeRTOS queues. |
| `App/Src/dashboard_view.c` | Converts raw telemetry and buttons into display-ready values. |
| `App/Src/board_touch.c` | Touch controller I²C read and LVGL pointer input. |
| `App/Src/board_display.c` | LVGL/LTDC framebuffer registration. |
| `LVGLPro/project.xml`, `globals.xml`, `screens/`, `components/` | LVGL Pro source for screens, shared widgets, styles, and bound telemetry subjects. |
| `LVGLPro/*_gen.c` and generated files in its subfolders | C code exported by LVGL Pro and compiled into firmware. |
| `App/Src/ui.c` | LVGL lifecycle and timed Startup transition. |
| `App/Src/ui_bindings.c` | Copies `DashboardView` getter values to LVGL Pro subjects. |
| `Core/Src/main.c` | MCU/peripheral initialization and FreeRTOS start. |
| `Core/Src/app_freertos.c` | Task creation only. |

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
`STM32CubeIDE/STM32U5A9NJHXQ_FLASH.ld`; keep `App/Inc/lv_conf.h` and the linker
script in sync when changing them.

The project builds with the ARM toolchain, but hardware touch coordinates,
color order, and scanout timing still need verification on the Riverdi board.
Review generated changes after using CubeMX because the LVGL application lives
in `App/` and is maintained outside CubeMX.
