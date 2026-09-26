#include "dashboard_view.h"
#include "app_state.h"
#include "telemetry_values.h"
#include <stdint.h>
#include <string.h>

static void add_fault(DashboardView *view, bool raised, const char *name)
{
    if (raised && view->fault_count < DASHBOARD_MAX_FAULTS) {
        view->faults[view->fault_count++] = name;
    }
}

static void collect_faults(DashboardView *view, const ReceivedCanData_t *t)
{
    const struct motor_controller_motor_controller_error_t *m = &t->motor_controller_error;
    add_fault(view, m->analog_sensor_err, "MC:ANALOG_SENSOR");
    add_fault(view, m->motor_current_sensor_u_err, "MC:CUR_SENSOR_U");
    add_fault(view, m->motor_current_sensor_w_err, "MC:CUR_SENSOR_W");
    add_fault(view, m->fet_thermistor_err, "MC:FET_THERM");
    add_fault(view, m->battery_voltage_sensor_err, "MC:BATT_V_SENSOR");
    add_fault(view, m->battery_current_sensor_err, "MC:BATT_I_SENSOR");
    add_fault(view, m->battery_current_sensor_adj_err, "MC:BATT_I_ADJ");
    add_fault(view, m->motor_current_sensor_adj_err, "MC:MOTOR_I_ADJ");
    add_fault(view, m->accelerator_position_err, "MC:ACCEL_POS");
    add_fault(view, m->controller_voltage_sensor_err, "MC:CTRL_V_SENSOR");
    add_fault(view, m->power_system_err, "MC:POWER_SYS");
    add_fault(view, m->overcurrent_err, "MC:OVERCURRENT");
    add_fault(view, m->overvoltage_err, "MC:OVERVOLTAGE");
    add_fault(view, m->overcurrent_limit, "MC:I_LIMIT");
    add_fault(view, m->motor_system_err, "MC:MOTOR_SYS");
    add_fault(view, m->motor_lock, "MC:MOTOR_LOCK");
    add_fault(view, m->hall_sensor_short, "MC:HALL_SHORT");
    add_fault(view, m->hall_sensor_open, "MC:HALL_OPEN");
    add_fault(view, m->overheat_level, "MC:OVERHEAT");

    const struct bps_bps_error_t *b = &t->bps_error;
    add_fault(view, b->internal_cell_communication_fault, "BPS:CELL_COMM");
    add_fault(view, b->weak_cell_fault, "BPS:WEAK_CELL");
    add_fault(view, b->low_cell_voltage_fault, "BPS:LOW_CELL_V");
    add_fault(view, b->cell_open_wiring_fault, "BPS:OPEN_WIRING");
    add_fault(view, b->thermistor_fault, "BPS:THERMISTOR");
    add_fault(view, b->current_sensor_fault, "BPS:CUR_SENSOR");
    add_fault(view, b->weak_pack_fault, "BPS:WEAK_PACK");
    add_fault(view, b->can_communication_fault, "BPS:CAN_COMM");
    add_fault(view, b->redundant_power_supply_fault, "BPS:REDUNDANT_PSU");
    add_fault(view, b->high_voltage_isolation_fault, "BPS:HV_ISOLATION");
    add_fault(view, b->charge_enable_relay_fault, "BPS:CHG_RELAY");
    add_fault(view, b->discharge_enable_relay_fault, "BPS:DSCHG_RELAY");
    add_fault(view, b->internal_conversion_fault, "BPS:INT_CONVERSION");
    add_fault(view, b->internal_memory_fault, "BPS:INT_MEMORY");
    add_fault(view, b->internal_thermistor_fault, "BPS:INT_THERM");
    add_fault(view, b->internal_logic_fault, "BPS:INT_LOGIC");
    add_fault(view, b->reduced_low_soc, "BPS:LIM_LOW_SOC");
    add_fault(view, b->reduced_high_cell_resistance, "BPS:LIM_CELL_RES");
    add_fault(view, b->reduced_high_temp, "BPS:LIM_HIGH_TEMP");
    add_fault(view, b->reduced_low_cell_voltage, "BPS:LIM_LOW_CELL_V");
    add_fault(view, b->reduced_low_pack_voltage, "BPS:LIM_LOW_PACK_V");
    add_fault(view, b->reduced_voltage_failsafe, "BPS:LIM_V_FAILSAFE");
    add_fault(view, b->reduced_comms_failsafe, "BPS:LIM_COMMS_FAILSAFE");
}

void dashboard_view_get(DashboardView *view)
{
    ReceivedCanData_t t;
    memset(view, 0, sizeof(*view));
    view->buttons_valid = app_state_get_buttons(&view->buttons);
    view->telemetry_valid = app_state_get_telemetry(&t);
    if (!view->telemetry_valid) return;

    view->rpm = t.motor_controller_power_status.motor_rpm;
    view->speed_mph = (int)(telemetry_speed_mph(view->rpm) + 0.5f);
    view->soc_percent = t.bps_pack_information.pack_soc / 2;
    view->pack_voltage_tenths = t.bps_pack_information.pack_voltage;
    view->pack_current_tenths = t.bps_pack_information.pack_current;
    view->power_watts = (int)((int64_t)view->pack_voltage_tenths * view->pack_current_tenths / 100);
    view->throttle = t.motor_commands.throttle;
    view->brake_pedal = t.pedal_status.brake_pedal;
    view->cruise_speed = t.motor_commands.cruise_speed;
    view->regen_braking = t.motor_commands.regen_braking;
    view->motor_error = telemetry_motor_error(&t);
    view->bps_error = telemetry_bps_error(&t);

    const struct motor_controller_motor_controller_power_status_t *mc = &t.motor_controller_power_status;
    view->mc_voltage_tenths = mc->battery_voltage * 5;   /* 0.5 V/bit */
    view->mc_current_amps = mc->battery_current;
    view->mc_current_direction = mc->battery_current_direction;
    view->motor_current_amps = mc->motor_current;
    view->fet_temp_c = mc->fet_temp * 5;                 /* 5 C/bit */
    view->pwm_duty_tenths = mc->pwm_duty * 5;            /* 0.5 %/bit */
    view->lead_angle_tenths = mc->lead_angle * 5;        /* 0.5 deg/bit */

    const struct bps_bps_status_t *bps = &t.bps_pack_information;
    view->discharge_relay = bps->discharge_relay_status;
    view->charge_relay = bps->charge_relay_status;
    view->charger_safety = bps->charger_safety;
    view->charge_power_signal = bps->charge_power_signal;
    view->balancing = bps->balancing_active;
    view->aux_millivolts = t.aux_battery_status.aux_voltage;
    view->aux_percent_raw = t.aux_battery_status.percent_full;

    view->throttle_pedal = t.pedal_status.throttle_pedal;
    view->manual_drive = t.motor_commands.manual_drive;
    view->regen_drive = t.motor_commands.regen_drive;
    view->cruise_drive = t.motor_commands.cruise_drive;

    collect_faults(view, &t);
}
