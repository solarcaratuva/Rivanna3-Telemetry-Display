#include "data_queues.h"

QueueHandle_t canReceivedQueue;
ReceivedCanData_t canReceivedQueueStorageBuffer;
StaticQueue_t canReceivedQueueOverheadBuffer;

void setupDataQueues() {
  canReceivedQueue = xQueueCreateStatic(1, sizeof(ReceivedCanData_t), (uint8_t*) &canReceivedQueueStorageBuffer, &canReceivedQueueOverheadBuffer);
}

#define RxDataSize 8

void updateReceivedCanData(ReceivedCanData_t *oldData, uint32_t Identifier, uint8_t *RxData) {
  switch(Identifier) {
    case rivanna3_s_MOTOR_COMMANDS_FRAME_ID:
      rivanna3_s_motor_commands_unpack(&oldData->motor_commands, RxData, RxDataSize);
      break;
    case rivanna3_s_AUX_BATTERY_STATUS_FRAME_ID:
      rivanna3_s_aux_battery_status_unpack(&oldData->aux_battery_status, RxData, RxDataSize);
      break;
    case BPS_MSGID_0_X406_FRAME_ID:
      bps_msgid_0_x406_unpack(&oldData->bps_pack_information, RxData, RxDataSize);
      break;
    case BPS_MSGID_0_X106_FRAME_ID:
      bps_msgid_0_x106_unpack(&oldData->bps_error, RxData, RxDataSize);
      break;
    case MOTOR_CONTROLLER_MOTOR_CONTROLLER_POWER_STATUS_FRAME_ID:
      motor_controller_motor_controller_power_status_unpack(&oldData->motor_controller_power_status, RxData, RxDataSize);
      break;
    case MOTOR_CONTROLLER_MOTOR_CONTROLLER_ERROR_FRAME_ID:
      motor_controller_motor_controller_error_unpack(&oldData->motor_controller_error, RxData, RxDataSize);
      break;
    default:
      break;
  }
}

#undef RxDataSize