#include "ui_bindings.h"
#include "dashboard_view.h"
#include "rivanna_ui.h"
#include <stdint.h>
#include <string.h>

/* MotorCommands throttle/regen and PedalStatus throttle_pedal are 0..256.
 * BottomDistBoard scales the brake pedal ScaledAnalogIn to 0..1500. */
#define COMMAND_FULL_SCALE 256
#define BRAKE_PEDAL_FULL_SCALE 1500
#define LOW_SOC_PERCENT 20
/* Matches SIGNAL_FLASH_PERIOD on the distribution boards. */
#define TURN_FLASH_MS 500
/* Montserrat 16 upper-case averages ~11 px per character; the fault panel
 * leaves ~465 px per line. */
#define FAULT_LINE_CHARS 42

static void set_tenths(lv_subject_t *subject, int tenths, const char *unit)
{
    int64_t magnitude = tenths < 0 ? -(int64_t)tenths : (int64_t)tenths;
    lv_subject_snprintf(subject, "%s%ld.%ld %s", tenths < 0 ? "-" : "",
                        (long)(magnitude / 10), (long)(magnitude % 10), unit);
}


static int percent_of(int value, int full_scale)
{
    if (value <= 0) return 0;
    if (value >= full_scale) return 100;
    return value * 100 / full_scale;
}

static void set_percent(lv_subject_t *bar, lv_subject_t *text, int percent)
{
    lv_subject_set_int(bar, percent);
    lv_subject_snprintf(text, "%d%%", percent);
}

static const char *yes_no(bool value)
{
    return value ? "YES" : "NO";
}

static const char *closed_open(bool value)
{
    return value ? "CLOSED" : "OPEN";
}

/* Word-wraps the fault names across the three fault log lines. */
static void refresh_fault_log(const DashboardView *view)
{
    char lines[3][FAULT_LINE_CHARS + 1];
    memset(lines, 0, sizeof(lines));

    if (!view->telemetry_valid) {
        lv_snprintf(lines[0], sizeof(lines[0]), "Waiting for CAN data");
    } else if (view->fault_count == 0) {
        lv_snprintf(lines[0], sizeof(lines[0]), "No active faults");
    } else {
        int line = 0;
        int shown = 0;
        for (; shown < view->fault_count; shown++) {
            const char *name = view->faults[shown];
            size_t sep = lines[line][0] ? 2 : 0;
            /* Reserve room for "  +NN MORE" on the last line. */
            size_t limit = line == 2 ? FAULT_LINE_CHARS - 10 : FAULT_LINE_CHARS;
            if (strlen(lines[line]) + sep + strlen(name) > limit) {
                if (line == 2) break;
                line++;
                sep = 0;
            }
            if (sep) strcat(lines[line], "  ");
            strcat(lines[line], name);
        }
        if (shown < view->fault_count) {
            size_t len = strlen(lines[2]);
            lv_snprintf(lines[2] + len, sizeof(lines[2]) - len, "  +%d MORE",
                        view->fault_count - shown);
        }
    }

    lv_subject_set_string(&dbg_fault_1, lines[0]);
    lv_subject_set_string(&dbg_fault_2, lines[1]);
    lv_subject_set_string(&dbg_fault_3, lines[2]);
    lv_subject_snprintf(&dbg_fault_count, "%d", view->telemetry_valid ? view->fault_count : 0);
    lv_subject_set_int(&fault_active, view->telemetry_valid && view->fault_count > 0);
}

static void refresh_driver(const DashboardView *view)
{
    lv_subject_snprintf(&drv_speed, "%d", view->speed_mph);
    set_tenths(&drv_power, view->power_watts / 100, "kW");
    set_tenths(&drv_pack_voltage, view->pack_voltage_tenths, "V");
    set_tenths(&drv_pack_current, view->pack_current_tenths, "A");
    lv_subject_set_int(&drv_soc, view->soc_percent);
    lv_subject_snprintf(&drv_soc_text, "%d%%", view->soc_percent);
    lv_subject_set_int(&drv_soc_low, view->soc_percent < LOW_SOC_PERCENT);

    set_percent(&drv_accel, &drv_accel_text, percent_of(view->throttle, COMMAND_FULL_SCALE));
    set_percent(&drv_regen, &drv_regen_text, percent_of(view->regen_braking, COMMAND_FULL_SCALE));
    set_percent(&drv_brake, &drv_brake_text, percent_of(view->brake_pedal, BRAKE_PEDAL_FULL_SCALE));

    lv_subject_set_int(&motor_status, view->motor_error ? 1 : 0);
    lv_subject_set_int(&bps_status, view->bps_error ? 1 : 0);
}

static void refresh_debug(const DashboardView *view)
{
    lv_subject_snprintf(&dbg_rpm, "%d", view->rpm);
    lv_subject_snprintf(&dbg_speed, "%d MPH", view->speed_mph);
    set_tenths(&dbg_mc_voltage, view->mc_voltage_tenths, "V");
    lv_subject_snprintf(&dbg_mc_current, "%d A", view->mc_current_amps);
    lv_subject_snprintf(&dbg_mc_direction, "%d", view->mc_current_direction);
    lv_subject_snprintf(&dbg_motor_current, "%d A", view->motor_current_amps);
    lv_subject_snprintf(&dbg_fet_temp, "%d C", view->fet_temp_c);
    set_tenths(&dbg_pwm_duty, view->pwm_duty_tenths, "%");
    set_tenths(&dbg_lead_angle, view->lead_angle_tenths, "DEG");
    lv_subject_set_string(&dbg_motor_error, view->motor_error ? "ERROR" : "OK");

    set_tenths(&dbg_pack_voltage, view->pack_voltage_tenths, "V");
    set_tenths(&dbg_pack_current, view->pack_current_tenths, "A");
    lv_subject_snprintf(&dbg_soc, "%d%%", view->soc_percent);
    lv_subject_snprintf(&dbg_power, "%d W", view->power_watts);
    lv_subject_set_string(&dbg_discharge_relay, closed_open(view->discharge_relay));
    lv_subject_set_string(&dbg_charge_relay, closed_open(view->charge_relay));
    lv_subject_set_string(&dbg_charger_safety, yes_no(view->charger_safety));
    lv_subject_set_string(&dbg_charge_signal, yes_no(view->charge_power_signal));
    lv_subject_set_string(&dbg_balancing, yes_no(view->balancing));
    lv_subject_snprintf(&dbg_aux, "%d.%02d V  0x%02X", view->aux_millivolts / 1000,
                        (view->aux_millivolts % 1000) / 10, view->aux_percent_raw);
    lv_subject_set_string(&dbg_bps_error, view->bps_error ? "ERROR" : "OK");

    lv_subject_snprintf(&dbg_throttle_pedal, "%3d/%d", view->throttle_pedal, COMMAND_FULL_SCALE);
    lv_subject_snprintf(&dbg_brake_pedal, "%4d/%d", view->brake_pedal, BRAKE_PEDAL_FULL_SCALE);
    lv_subject_snprintf(&dbg_throttle, "%3d/%d", view->throttle, COMMAND_FULL_SCALE);
    lv_subject_snprintf(&dbg_regen_brake, "%3d/%d", view->regen_braking, COMMAND_FULL_SCALE);
    lv_subject_snprintf(&dbg_cruise_speed, "%d", view->cruise_speed);
    lv_subject_set_string(&dbg_drive_mode, view->cruise_drive ? "CRUISE" :
                                           view->regen_drive ? "REGEN" :
                                           view->manual_drive ? "MANUAL" : "IDLE");
}

static void refresh_buttons(const DashboardView *view, bool flash_on)
{
    const DashboardButtons *b = &view->buttons;

    lv_subject_set_int(&left_lit, flash_on && (b->left_turn || b->hazard));
    lv_subject_set_int(&right_lit, flash_on && (b->right_turn || b->hazard));

    lv_subject_set_int(&left_status, b->left_turn);
    lv_subject_set_int(&right_status, b->right_turn);
    lv_subject_set_int(&hazards_status, b->hazard);
    lv_subject_set_int(&cruise_status, b->cruise);
    lv_subject_set_int(&regen_status, b->regen);
    lv_subject_set_int(&low_power_status, b->low_power);
    lv_subject_set_int(&cruise_up_status, b->cruise_up);
    lv_subject_set_int(&cruise_down_status, b->cruise_down);
}

void ui_bindings_refresh(void)
{
    DashboardView view;
    dashboard_view_get(&view);

    uint32_t now = lv_tick_get();
    bool flash_on = (now / TURN_FLASH_MS) % 2 == 0;

    if (view.telemetry_valid) {
        refresh_driver(&view);
        refresh_debug(&view);
    }
    if (view.buttons_valid) {
        refresh_buttons(&view, flash_on);
    }

    if (view.buttons_valid && view.buttons.cruise && view.telemetry_valid) {
        lv_subject_snprintf(&drv_cruise_text, "CRUISE %d", view.cruise_speed);
    } else {
        lv_subject_set_string(&drv_cruise_text, "CRUISE");
    }

    lv_subject_set_int(&telemetry_status, view.telemetry_valid);
    lv_subject_set_string(&dbg_status, view.telemetry_valid ? "CAN LIVE" : "NO CAN DATA");
    uint32_t seconds = now / 1000;
    lv_subject_snprintf(&dbg_uptime, "UPTIME %lu:%02lu:%02lu", (unsigned long)(seconds / 3600),
                        (unsigned long)(seconds / 60 % 60), (unsigned long)(seconds % 60));
    refresh_fault_log(&view);
}
