#include "app_state.h"
#include "FreeRTOS.h"
#include "queue.h"

static QueueHandle_t button_queue;
static QueueHandle_t telemetry_queue;
static StaticQueue_t button_control;
static StaticQueue_t telemetry_control;
static uint8_t button_storage[sizeof(DashboardButtons)];
static uint8_t telemetry_storage[sizeof(ReceivedCanData_t)];

void app_state_init(void)
{
    button_queue = xQueueCreateStatic(1, sizeof(DashboardButtons), button_storage, &button_control);
    telemetry_queue = xQueueCreateStatic(1, sizeof(ReceivedCanData_t), telemetry_storage, &telemetry_control);
}

void app_state_set_buttons(const DashboardButtons *buttons)
{
    if (button_queue && buttons) xQueueOverwrite(button_queue, buttons);
}

bool app_state_get_buttons(DashboardButtons *buttons)
{
    return button_queue && buttons && xQueuePeek(button_queue, buttons, 0) == pdTRUE;
}

void app_state_set_telemetry(const ReceivedCanData_t *telemetry)
{
    if (telemetry_queue && telemetry) xQueueOverwrite(telemetry_queue, telemetry);
}

bool app_state_get_telemetry(ReceivedCanData_t *telemetry)
{
    return telemetry_queue && telemetry && xQueuePeek(telemetry_queue, telemetry, 0) == pdTRUE;
}
