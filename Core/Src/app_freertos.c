#include "app_freertos.h"
#include "rtos_tasks.h"

void MX_FREERTOS_Init(void)
{
    static const osThreadAttr_t heartbeat_attr = {
        .name = "heartbeat", .priority = osPriorityHigh, .stack_size = 1024
    };
    static const osThreadAttr_t commands_attr = {
        .name = "dashboard_commands", .priority = osPriorityHigh, .stack_size = 1024
    };
    static const osThreadAttr_t receive_attr = {
        .name = "can_receive", .priority = osPriorityHigh1, .stack_size = 2048
    };
    static const osThreadAttr_t ui_attr = {
        .name = "lvgl_ui", .priority = osPriorityNormal, .stack_size = 32768
    };
    osThreadNew(heartbeat_task, NULL, &heartbeat_attr);
    osThreadNew(dashboard_command_task, NULL, &commands_attr);
    osThreadNew(can_receive_task, NULL, &receive_attr);
    osThreadNew(lvgl_task, NULL, &ui_attr);
}

void vApplicationMallocFailedHook(void) { Error_Handler(); }
void vApplicationIdleHook(void) { }
void vApplicationStackOverflowHook(TaskHandle_t task, char *name)
{
    (void)task;
    (void)name;
    Error_Handler();
}
