#include "telemetry_values.h"

float telemetry_speed_mph(int rpm)
{
    return (float)rpm / 60.0f * (22.0f * 0.0254f * 3.14159265f) * 2.236936292f;
}

bool telemetry_motor_error(const ReceivedCanData_t *data)
{
    const struct motor_controller_motor_controller_error_t *e = &data->motor_controller_error;
    return e->analog_sensor_err || e->motor_current_sensor_u_err || e->motor_current_sensor_w_err ||
           e->fet_thermistor_err || e->battery_voltage_sensor_err || e->battery_current_sensor_err ||
           e->battery_current_sensor_adj_err ||
           e->motor_current_sensor_adj_err || e->accelerator_position_err || e->controller_voltage_sensor_err ||
           e->power_system_err || e->overcurrent_err || e->overvoltage_err || e->overcurrent_limit ||
           e->motor_system_err || e->motor_lock || e->hall_sensor_short || e->hall_sensor_open || e->overheat_level;
}

bool telemetry_bps_error(const ReceivedCanData_t *data)
{
    const struct bps_bps_error_t *e = &data->bps_error;
    return e->internal_cell_communication_fault || e->weak_cell_fault || e->low_cell_voltage_fault ||
           e->cell_open_wiring_fault || e->thermistor_fault || e->current_sensor_fault ||
           e->weak_pack_fault || e->can_communication_fault || e->redundant_power_supply_fault ||
           e->high_voltage_isolation_fault || e->charge_enable_relay_fault || e->discharge_enable_relay_fault ||
           e->internal_conversion_fault || e->internal_memory_fault || e->internal_thermistor_fault ||
           e->internal_logic_fault || e->reduced_low_soc || e->reduced_high_cell_resistance ||
           e->reduced_high_temp || e->reduced_low_cell_voltage || e->reduced_low_pack_voltage ||
           e->reduced_voltage_failsafe || e->reduced_comms_failsafe;
}
