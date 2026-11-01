#ifndef TELEMETRY_TYPES_H
#define TELEMETRY_TYPES_H

#include "rivanna3_s.h"
#include "bps.h"
#include "motor_controller.h"
#include <stdbool.h>

typedef struct {
    struct rivanna3_s_motor_commands_t motor_commands;
    struct bps_bps_status_t bps_pack_information;
    struct bps_bps_error_t bps_error;
    struct motor_controller_motor_controller_power_status_t motor_controller_power_status;
    struct motor_controller_motor_controller_error_t motor_controller_error;
    struct rivanna3_s_pedal_status_t pedal_status;
    struct rivanna3_s_aux_battery_status_t aux_battery_status;
    struct rivanna3_s_precharge_status_t precharge_status;
    bool precharge_status_valid;
} ReceivedCanData_t;

#endif
