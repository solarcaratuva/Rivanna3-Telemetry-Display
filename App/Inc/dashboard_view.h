#ifndef DASHBOARD_VIEW_H
#define DASHBOARD_VIEW_H

#include "dashboard_types.h"

#define DASHBOARD_MAX_FAULTS 48

/* Display-ready data. No HAL, FreeRTOS, CAN, or LVGL types cross this boundary. */
typedef struct {
    bool telemetry_valid;
    bool buttons_valid;
    DashboardButtons buttons;
    int speed_mph;
    int rpm;
    int soc_percent;
    int pack_voltage_tenths;
    int pack_current_tenths;
    int power_watts;
    int throttle;
    int brake_pedal;
    int cruise_speed;
    int regen_braking;
    bool motor_error;
    bool bps_error;

    /* Motor controller */
    int mc_voltage_tenths;
    int mc_current_amps;
    int mc_current_direction;
    int motor_current_amps;
    int fet_temp_c;
    int pwm_duty_tenths;
    int lead_angle_tenths;

    /* Battery */
    bool discharge_relay;
    bool charge_relay;
    bool charger_safety;
    bool charge_power_signal;
    bool balancing;
    int aux_millivolts;
    int aux_percent_raw;

    /* Driver input + motor command mode */
    int throttle_pedal;
    bool manual_drive;
    bool regen_drive;
    bool cruise_drive;

    /* Every raised motor controller / BPS fault flag, as short names. */
    int fault_count;
    const char *faults[DASHBOARD_MAX_FAULTS];
} DashboardView;

void dashboard_view_get(DashboardView *view);

#endif
