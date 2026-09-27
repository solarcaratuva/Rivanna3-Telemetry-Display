# Generated CAN definitions

These C files and the headers in `Common/can_structs/Inc` are generated from the DBCs in the pinned
`ThirdParty/CAN-messages` submodule. Do not edit them directly.

`make -f Makefile.lvgl` runs `scripts/generate_can.py` when the DBCs or
generator scripts change. The wrapper copies those inputs into `build/can`,
runs the submodule's `generate_all.py`, checks its outputs, and updates the
`Common/can_structs/Src` and `Common/can_structs/Inc` folders only when generated content changes.
STM32CubeIDE also runs the wrapper as a pre-build step.
