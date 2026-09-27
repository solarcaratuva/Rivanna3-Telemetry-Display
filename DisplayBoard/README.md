# Display board application

This folder follows Rivanna3S's board-specific `Inc`/`Src` layout. The matching
header and source for each module have the same name.

| Module | Purpose |
| --- | --- |
| `pinmap.h`, `board_buttons.c`, `board_touch.c` | Board wiring and physical inputs. |
| `board_display.c`, `ui.c` | LTDC/LVGL setup and UI lifecycle. |
| `rtos_tasks.c`, `board_can.c` | Periodic tasks and CAN I/O. |
| `app_state.c` | FreeRTOS-backed button and telemetry getters/setters. |
| `dashboard_view.c` | Converts state into display-ready values. |
| `ui_bindings.c` | Writes display-ready values to LVGL subjects. |

The data path is `rtos_tasks` → `Common/Libs` telemetry decoding → `app_state`
→ `dashboard_view` → `ui_bindings` → `LVGLPro` screens. UI screens do not read
FreeRTOS queues or CAN frames directly.
