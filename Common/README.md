# Shared code

`Libs/Inc` and `Libs/Src` hold CAN telemetry types, frame decoding, and unit
conversions used by the display application. They have no LVGL dependency.

`can_structs/Inc` and `can_structs/Src` contain generated code from the pinned
`ThirdParty/CAN-messages` submodule. Edit the DBC source and run
`python3 scripts/generate_can.py` from the repository root to regenerate it.
The firmware build runs that generator when its inputs change.
