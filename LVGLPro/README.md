# Rivanna LVGL Pro project

In LVGL Pro, choose **Open UI Project** and select **this `LVGLPro` folder**
(the folder containing `project.xml` and `globals.xml`). Select the
`riverdi_800x480` target. Open `screens/driver.xml` to see the main dashboard,
`screens/telemetry_data.xml` for the detailed data page, or
`screens/startup.xml` for the splash screen.

The layout is split into three screens, a reusable card, a reusable debug row
(`components/dbg_row`), and shared colors/fonts/styles in `globals.xml`. The
navigation buttons on Driver and Telemetry Data are interactive in the editor
preview. The firmware handles the timed Startup-to-Driver transition.

- **Driver** is the steering-wheel view, styled like a production cluster:
  big speed in the center, slim throttle (up) / regen (down) bar on the left
  edge, brake bar on the right edge, flashing turn arrows in the top corners,
  and a telltale row (hazard, cruise, regen, low power, motor, BPS) that stays
  dark until something is active; motor/BPS faults show as red badges.
  Power/pack/current readouts sit under the speed and state of charge runs
  along the bottom (amber below 20%).
- **Telemetry Data** is a diagnostics page in the same style: CAN link status
  and uptime in the header, then three columns (motor controller, battery,
  driver input) of every decoded CAN field, the steering wheel switches as
  chips that turn green when active, and a panel listing every raised motor
  controller / BPS fault flag. Fault rows tint red.

Fonts: `speed_160` (Montserrat Medium, digits only), `caption_16` and
`value_28` (Montserrat Medium), and `arrows_56` (the ◀ ▶
glyphs from Montserrat). Avoid `bg_grad_*` on bar indicators: LVGL's software
renderer dropped some of them in testing, so bars use solid colors.

This editor project targets LVGL 9.5.0, the version supported by the LVGL Pro
1.2.1 CLI used to validate and generate it. The STM32 firmware uses LVGL 9.6.0;
the generated C has been compiled and linked against that version.

To put a UI edit on the board:

1. Save the XML in Pro and use **Compile and export code**.
2. Build the firmware from the repository root with `make -f Makefile.lvgl -j4`
   (or use the STM32CubeIDE project).
3. Flash the resulting `build/lvgl/rivanna-lvgl.hex`.

The generated C files beside the XML are compiled by the firmware build.
Do not edit `*_gen.c` or `*_gen.h` by hand: Pro overwrites them on export.
`App/Src/ui_bindings.c` maps the FreeRTOS-backed dashboard getters to the
subjects declared in `globals.xml`. When you add a live telemetry value in Pro,
add its subject update there. Pro's desktop preview starts with `--` placeholder
values because it does not run the board's CAN/FreeRTOS tasks.
