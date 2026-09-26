#include "rtos_tasks.h"
#include "app_state.h"
#include "board_buttons.h"
#include "telemetry_decode.h"
#include "ui.h"
#include "wheelboard_can.h"
#include "fdcan.h"
#include "rivanna3_s.h"
#include "FreeRTOS.h"
#include "task.h"

void heartbeat_task(void *argument)
{
    (void)argument;
    uint8_t frame[8] = {0};
    struct rivanna3_s_heartbeat_t heartbeat = {0};
    rivanna3_s_heartbeat_pack(frame, &heartbeat, RIVANNA3_S_HEARTBEAT_LENGTH);
    TickType_t wake = xTaskGetTickCount();
    for (;;) {
        send_can_message(RIVANNA3_S_HEARTBEAT_FRAME_ID, RIVANNA3_S_HEARTBEAT_LENGTH, frame);
        vTaskDelayUntil(&wake, pdMS_TO_TICKS(10));
    }
}

void dashboard_command_task(void *argument)
{
    (void)argument;
    TickType_t wake = xTaskGetTickCount();
    for (;;) {
        DashboardButtons b = {0};
        struct rivanna3_s_dashboard_commands_t cmd = {0};
        uint8_t frame[8] = {0};
        board_buttons_read(&b);
        app_state_set_buttons(&b);

        /* Preserve the present held-button CAN semantics. */
        cmd.left_turn_signal = b.left_turn;
        cmd.right_turn_signal = b.right_turn;
        cmd.hazards = b.hazard;
        cmd.cruise_en = b.cruise;
        cmd.regen_en = b.regen;
        cmd.cruise_inc = b.cruise_up;
        cmd.cruise_dec = b.cruise_down;
        cmd.charging_mode_en = b.low_power;
        rivanna3_s_dashboard_commands_pack(frame, &cmd, RIVANNA3_S_DASHBOARD_COMMANDS_LENGTH);
        send_can_message(RIVANNA3_S_DASHBOARD_COMMANDS_FRAME_ID,
                         RIVANNA3_S_DASHBOARD_COMMANDS_LENGTH, frame);
        vTaskDelayUntil(&wake, pdMS_TO_TICKS(10));
    }
}

void can_receive_task(void *argument)
{
    (void)argument;
    ReceivedCanData_t snapshot = {0};
    TickType_t wake = xTaskGetTickCount();
    for (;;) {
        bool updated = false;
        while (HAL_FDCAN_GetRxFifoFillLevel(&hfdcan1, FDCAN_RX_FIFO0) > 0) {
            FDCAN_RxHeaderTypeDef header;
            uint8_t frame[8];
            if (HAL_FDCAN_GetRxMessage(&hfdcan1, FDCAN_RX_FIFO0, &header, frame) != HAL_OK) break;
            telemetry_decode_frame(&snapshot, header.Identifier, frame);
            updated = true;
        }
        if (updated) app_state_set_telemetry(&snapshot);
        vTaskDelayUntil(&wake, pdMS_TO_TICKS(10));
    }
}

void lvgl_task(void *argument)
{
    (void)argument;
    ui_init();
    for (;;) {
        unsigned int delay_ms = ui_process();
        vTaskDelay(pdMS_TO_TICKS(delay_ms < 5 ? 5 : delay_ms > 20 ? 20 : delay_ms));
    }
}
