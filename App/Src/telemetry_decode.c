#include "telemetry_decode.h"

void telemetry_decode_frame(ReceivedCanData_t *snapshot, uint32_t id, const uint8_t data[8])
{
    switch (id) {
    case RIVANNA3_S_MOTOR_COMMANDS_FRAME_ID:
        rivanna3_s_motor_commands_unpack(&snapshot->motor_commands, data, 8);
        break;
    case RIVANNA3_S_AUX_BATTERY_STATUS_FRAME_ID:
        rivanna3_s_aux_battery_status_unpack(&snapshot->aux_battery_status, data, 8);
        break;
    case RIVANNA3_S_PEDAL_STATUS_FRAME_ID:
        rivanna3_s_pedal_status_unpack(&snapshot->pedal_status, data, 8);
        break;
    case BPS_BPS_STATUS_FRAME_ID:
        bps_bps_status_unpack(&snapshot->bps_pack_information, data, 8);
        break;
    case BPS_BPS_ERROR_FRAME_ID:
        bps_bps_error_unpack(&snapshot->bps_error, data, 8);
        break;
    case MOTOR_CONTROLLER_MOTOR_CONTROLLER_POWER_STATUS_FRAME_ID:
        motor_controller_motor_controller_power_status_unpack(&snapshot->motor_controller_power_status, data, 8);
        break;
    case MOTOR_CONTROLLER_MOTOR_CONTROLLER_ERROR_FRAME_ID:
        motor_controller_motor_controller_error_unpack(&snapshot->motor_controller_error, data, 8);
        break;
    default:
        break;
    }
}
