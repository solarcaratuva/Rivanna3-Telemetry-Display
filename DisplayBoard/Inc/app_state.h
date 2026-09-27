#ifndef APP_STATE_H
#define APP_STATE_H

#include <stdbool.h>
#include "dashboard_types.h"
#include "telemetry_types.h"

/* Public, LVGL-free boundary between FreeRTOS producers and the UI. */
void app_state_init(void);
void app_state_set_buttons(const DashboardButtons *buttons);
bool app_state_get_buttons(DashboardButtons *buttons);
void app_state_set_telemetry(const ReceivedCanData_t *telemetry);
bool app_state_get_telemetry(ReceivedCanData_t *telemetry);

#endif
