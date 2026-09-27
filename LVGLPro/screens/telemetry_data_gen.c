/**
 * @file telemetry_data_gen.c
 * @brief Template source file for LVGL objects
 */

/*********************
 *      INCLUDES
 *********************/

#include "telemetry_data_gen.h"
#include "../rivanna_ui.h"

/*********************
 *      DEFINES
 *********************/

/**********************
 *      TYPEDEFS
 **********************/

/***********************
 *  STATIC VARIABLES
 **********************/

/***********************
 *  STATIC PROTOTYPES
 **********************/

/**********************
 *   GLOBAL FUNCTIONS
 **********************/

lv_obj_t * telemetry_data_create(void)
{
    LV_TRACE_OBJ_CREATE("begin");


    static bool style_inited = false;

    if (!style_inited) {

        style_inited = true;
    }

    if (telemetry_data == NULL) telemetry_data = lv_obj_create(NULL);
    lv_obj_t * lv_obj_0 = telemetry_data;
    lv_obj_set_name_static(lv_obj_0, "telemetry_data_#");
    lv_obj_set_flag(lv_obj_0, LV_OBJ_FLAG_SCROLLABLE, false);

    lv_obj_add_style(lv_obj_0, &dashboard_screen, 0);
    lv_obj_t * lv_label_0 = lv_label_create(lv_obj_0);
    lv_obj_set_x(lv_label_0, 24);
    lv_obj_set_y(lv_label_0, 14);
    lv_label_set_text(lv_label_0, "DIAGNOSTICS");
    lv_obj_add_style(lv_label_0, &value, 0);

    lv_obj_t * lv_button_0 = lv_button_create(lv_obj_0);
    lv_obj_set_x(lv_button_0, -24);
    lv_obj_set_y(lv_button_0, 12);
    lv_obj_set_align(lv_button_0, LV_ALIGN_TOP_RIGHT);
    lv_obj_set_width(lv_button_0, 128);
    lv_obj_set_height(lv_button_0, 40);
    lv_obj_add_style(lv_button_0, &nav_ghost, 0);
    lv_obj_add_style(lv_button_0, &nav_ghost_pressed, LV_STATE_PRESSED);
    lv_obj_t * lv_label_1 = lv_label_create(lv_button_0);
    lv_obj_set_align(lv_label_1, LV_ALIGN_CENTER);
    lv_label_set_text(lv_label_1, "‹  DRIVER");

    lv_obj_add_screen_load_event(lv_button_0, LV_EVENT_CLICKED, driver, LV_SCREEN_LOAD_ANIM_MOVE_RIGHT, 250, 0);

    lv_obj_t * lv_label_2 = lv_label_create(lv_obj_0);
    lv_obj_set_x(lv_label_2, 24);
    lv_obj_set_y(lv_label_2, 60);
    lv_label_bind_text(lv_label_2, &dbg_status, NULL);
    lv_obj_add_style(lv_label_2, &status_chip, 0);
    lv_obj_bind_style(lv_label_2, &status_chip_bad, 0, &telemetry_status, 0);

    lv_obj_t * lv_label_3 = lv_label_create(lv_obj_0);
    lv_obj_set_x(lv_label_3, -24);
    lv_obj_set_y(lv_label_3, 64);
    lv_obj_set_align(lv_label_3, LV_ALIGN_TOP_RIGHT);
    lv_label_bind_text(lv_label_3, &dbg_uptime, NULL);
    lv_obj_add_style(lv_label_3, &dbg_caption, 0);

    lv_obj_t * lv_obj_1 = lv_obj_create(lv_obj_0);
    lv_obj_set_x(lv_obj_1, 24);
    lv_obj_set_y(lv_obj_1, 98);
    lv_obj_set_width(lv_obj_1, 432);
    lv_obj_set_height(lv_obj_1, 1);
    lv_obj_set_flag(lv_obj_1, LV_OBJ_FLAG_SCROLLABLE, false);
    lv_obj_add_style(lv_obj_1, &hairline, 0);

    lv_obj_t * lv_label_4 = lv_label_create(lv_obj_0);
    lv_obj_set_x(lv_label_4, 28);
    lv_obj_set_y(lv_label_4, 112);
    lv_label_set_text(lv_label_4, "MOTOR CONTROLLER");
    lv_obj_add_style(lv_label_4, &caption, 0);

    lv_obj_t * dbg_row_0 = dbg_row_create(lv_obj_0, "RPM", &dbg_rpm, &no_status);
    lv_obj_set_x(dbg_row_0, 24);
    lv_obj_set_y(dbg_row_0, 136);
    lv_obj_set_width(dbg_row_0, 210);

    lv_obj_t * dbg_row_1 = dbg_row_create(lv_obj_0, "Speed", &dbg_speed, &no_status);
    lv_obj_set_x(dbg_row_1, 24);
    lv_obj_set_y(dbg_row_1, 158);
    lv_obj_set_width(dbg_row_1, 210);

    lv_obj_t * dbg_row_2 = dbg_row_create(lv_obj_0, "Bus voltage", &dbg_mc_voltage, &no_status);
    lv_obj_set_x(dbg_row_2, 24);
    lv_obj_set_y(dbg_row_2, 180);
    lv_obj_set_width(dbg_row_2, 210);

    lv_obj_t * dbg_row_3 = dbg_row_create(lv_obj_0, "Bus current", &dbg_mc_current, &no_status);
    lv_obj_set_x(dbg_row_3, 24);
    lv_obj_set_y(dbg_row_3, 202);
    lv_obj_set_width(dbg_row_3, 210);

    lv_obj_t * dbg_row_4 = dbg_row_create(lv_obj_0, "Current dir", &dbg_mc_direction, &no_status);
    lv_obj_set_x(dbg_row_4, 24);
    lv_obj_set_y(dbg_row_4, 224);
    lv_obj_set_width(dbg_row_4, 210);

    lv_obj_t * dbg_row_5 = dbg_row_create(lv_obj_0, "Motor current", &dbg_motor_current, &no_status);
    lv_obj_set_x(dbg_row_5, 24);
    lv_obj_set_y(dbg_row_5, 246);
    lv_obj_set_width(dbg_row_5, 210);

    lv_obj_t * dbg_row_6 = dbg_row_create(lv_obj_0, "FET temp", &dbg_fet_temp, &no_status);
    lv_obj_set_x(dbg_row_6, 24);
    lv_obj_set_y(dbg_row_6, 268);
    lv_obj_set_width(dbg_row_6, 210);

    lv_obj_t * dbg_row_7 = dbg_row_create(lv_obj_0, "PWM duty", &dbg_pwm_duty, &no_status);
    lv_obj_set_x(dbg_row_7, 24);
    lv_obj_set_y(dbg_row_7, 290);
    lv_obj_set_width(dbg_row_7, 210);

    lv_obj_t * dbg_row_8 = dbg_row_create(lv_obj_0, "Lead angle", &dbg_lead_angle, &no_status);
    lv_obj_set_x(dbg_row_8, 24);
    lv_obj_set_y(dbg_row_8, 312);
    lv_obj_set_width(dbg_row_8, 210);

    lv_obj_t * dbg_row_9 = dbg_row_create(lv_obj_0, "Fault", &dbg_motor_error, &motor_status);
    lv_obj_set_x(dbg_row_9, 24);
    lv_obj_set_y(dbg_row_9, 334);
    lv_obj_set_width(dbg_row_9, 210);

    lv_obj_t * lv_label_5 = lv_label_create(lv_obj_0);
    lv_obj_set_x(lv_label_5, 250);
    lv_obj_set_y(lv_label_5, 112);
    lv_label_set_text(lv_label_5, "BATTERY");
    lv_obj_add_style(lv_label_5, &caption, 0);

    lv_obj_t * dbg_row_10 = dbg_row_create(lv_obj_0, "Pack voltage", &dbg_pack_voltage, &no_status);
    lv_obj_set_x(dbg_row_10, 246);
    lv_obj_set_y(dbg_row_10, 136);
    lv_obj_set_width(dbg_row_10, 210);

    lv_obj_t * dbg_row_11 = dbg_row_create(lv_obj_0, "Pack current", &dbg_pack_current, &no_status);
    lv_obj_set_x(dbg_row_11, 246);
    lv_obj_set_y(dbg_row_11, 158);
    lv_obj_set_width(dbg_row_11, 210);

    lv_obj_t * dbg_row_12 = dbg_row_create(lv_obj_0, "State of charge", &dbg_soc, &no_status);
    lv_obj_set_x(dbg_row_12, 246);
    lv_obj_set_y(dbg_row_12, 180);
    lv_obj_set_width(dbg_row_12, 210);

    lv_obj_t * dbg_row_13 = dbg_row_create(lv_obj_0, "Power", &dbg_power, &no_status);
    lv_obj_set_x(dbg_row_13, 246);
    lv_obj_set_y(dbg_row_13, 202);
    lv_obj_set_width(dbg_row_13, 210);

    lv_obj_t * dbg_row_14 = dbg_row_create(lv_obj_0, "Discharge relay", &dbg_discharge_relay, &no_status);
    lv_obj_set_x(dbg_row_14, 246);
    lv_obj_set_y(dbg_row_14, 224);
    lv_obj_set_width(dbg_row_14, 210);

    lv_obj_t * dbg_row_15 = dbg_row_create(lv_obj_0, "Charge relay", &dbg_charge_relay, &no_status);
    lv_obj_set_x(dbg_row_15, 246);
    lv_obj_set_y(dbg_row_15, 246);
    lv_obj_set_width(dbg_row_15, 210);

    lv_obj_t * dbg_row_16 = dbg_row_create(lv_obj_0, "Charger safety", &dbg_charger_safety, &no_status);
    lv_obj_set_x(dbg_row_16, 246);
    lv_obj_set_y(dbg_row_16, 268);
    lv_obj_set_width(dbg_row_16, 210);

    lv_obj_t * dbg_row_17 = dbg_row_create(lv_obj_0, "Charge signal", &dbg_charge_signal, &no_status);
    lv_obj_set_x(dbg_row_17, 246);
    lv_obj_set_y(dbg_row_17, 290);
    lv_obj_set_width(dbg_row_17, 210);

    lv_obj_t * dbg_row_18 = dbg_row_create(lv_obj_0, "Balancing", &dbg_balancing, &no_status);
    lv_obj_set_x(dbg_row_18, 246);
    lv_obj_set_y(dbg_row_18, 312);
    lv_obj_set_width(dbg_row_18, 210);

    lv_obj_t * dbg_row_19 = dbg_row_create(lv_obj_0, "Aux battery", &dbg_aux, &no_status);
    lv_obj_set_x(dbg_row_19, 246);
    lv_obj_set_y(dbg_row_19, 334);
    lv_obj_set_width(dbg_row_19, 210);

    lv_obj_t * dbg_row_20 = dbg_row_create(lv_obj_0, "Fault", &dbg_bps_error, &bps_status);
    lv_obj_set_x(dbg_row_20, 246);
    lv_obj_set_y(dbg_row_20, 356);
    lv_obj_set_width(dbg_row_20, 210);

    lv_obj_t * lv_label_6 = lv_label_create(lv_obj_0);
    lv_obj_set_x(lv_label_6, 28);
    lv_obj_set_y(lv_label_6, 400);
    lv_label_set_text(lv_label_6, "DRIVER INPUT");
    lv_obj_add_style(lv_label_6, &caption, 0);

    lv_obj_t * dbg_row_21 = dbg_row_create(lv_obj_0, "Throttle pedal", &dbg_throttle_pedal, &no_status);
    lv_obj_set_x(dbg_row_21, 24);
    lv_obj_set_y(dbg_row_21, 424);
    lv_obj_set_width(dbg_row_21, 210);

    lv_obj_t * dbg_row_22 = dbg_row_create(lv_obj_0, "Brake pedal", &dbg_brake_pedal, &no_status);
    lv_obj_set_x(dbg_row_22, 24);
    lv_obj_set_y(dbg_row_22, 446);
    lv_obj_set_width(dbg_row_22, 210);

    lv_obj_t * dbg_row_23 = dbg_row_create(lv_obj_0, "Throttle cmd", &dbg_throttle, &no_status);
    lv_obj_set_x(dbg_row_23, 24);
    lv_obj_set_y(dbg_row_23, 468);
    lv_obj_set_width(dbg_row_23, 210);

    lv_obj_t * dbg_row_24 = dbg_row_create(lv_obj_0, "Regen cmd", &dbg_regen_brake, &no_status);
    lv_obj_set_x(dbg_row_24, 24);
    lv_obj_set_y(dbg_row_24, 490);
    lv_obj_set_width(dbg_row_24, 210);

    lv_obj_t * dbg_row_25 = dbg_row_create(lv_obj_0, "Cruise speed", &dbg_cruise_speed, &no_status);
    lv_obj_set_x(dbg_row_25, 24);
    lv_obj_set_y(dbg_row_25, 512);
    lv_obj_set_width(dbg_row_25, 210);

    lv_obj_t * dbg_row_26 = dbg_row_create(lv_obj_0, "Drive mode", &dbg_drive_mode, &no_status);
    lv_obj_set_x(dbg_row_26, 24);
    lv_obj_set_y(dbg_row_26, 534);
    lv_obj_set_width(dbg_row_26, 210);

    lv_obj_t * lv_label_7 = lv_label_create(lv_obj_0);
    lv_obj_set_x(lv_label_7, 250);
    lv_obj_set_y(lv_label_7, 400);
    lv_label_set_text(lv_label_7, "SWITCHES");
    lv_obj_add_style(lv_label_7, &caption, 0);

    lv_obj_t * lv_label_8 = lv_label_create(lv_obj_0);
    lv_obj_set_x(lv_label_8, 246);
    lv_obj_set_y(lv_label_8, 424);
    lv_obj_set_width(lv_label_8, 99);
    lv_obj_set_height(lv_label_8, 40);
    lv_label_set_text(lv_label_8, "LEFT");
    lv_obj_add_style(lv_label_8, &chip, 0);
    lv_obj_bind_style(lv_label_8, &chip_on, 0, &left_status, 1);

    lv_obj_t * lv_label_9 = lv_label_create(lv_obj_0);
    lv_obj_set_x(lv_label_9, 357);
    lv_obj_set_y(lv_label_9, 424);
    lv_obj_set_width(lv_label_9, 99);
    lv_obj_set_height(lv_label_9, 40);
    lv_label_set_text(lv_label_9, "RIGHT");
    lv_obj_add_style(lv_label_9, &chip, 0);
    lv_obj_bind_style(lv_label_9, &chip_on, 0, &right_status, 1);

    lv_obj_t * lv_label_10 = lv_label_create(lv_obj_0);
    lv_obj_set_x(lv_label_10, 246);
    lv_obj_set_y(lv_label_10, 472);
    lv_obj_set_width(lv_label_10, 99);
    lv_obj_set_height(lv_label_10, 40);
    lv_label_set_text(lv_label_10, "HAZARD");
    lv_obj_add_style(lv_label_10, &chip, 0);
    lv_obj_bind_style(lv_label_10, &chip_on, 0, &hazards_status, 1);

    lv_obj_t * lv_label_11 = lv_label_create(lv_obj_0);
    lv_obj_set_x(lv_label_11, 357);
    lv_obj_set_y(lv_label_11, 472);
    lv_obj_set_width(lv_label_11, 99);
    lv_obj_set_height(lv_label_11, 40);
    lv_label_set_text(lv_label_11, "LOW PWR");
    lv_obj_add_style(lv_label_11, &chip, 0);
    lv_obj_bind_style(lv_label_11, &chip_on, 0, &low_power_status, 1);

    lv_obj_t * lv_label_12 = lv_label_create(lv_obj_0);
    lv_obj_set_x(lv_label_12, 246);
    lv_obj_set_y(lv_label_12, 520);
    lv_obj_set_width(lv_label_12, 99);
    lv_obj_set_height(lv_label_12, 40);
    lv_label_set_text(lv_label_12, "CRUISE");
    lv_obj_add_style(lv_label_12, &chip, 0);
    lv_obj_bind_style(lv_label_12, &chip_on, 0, &cruise_status, 1);

    lv_obj_t * lv_label_13 = lv_label_create(lv_obj_0);
    lv_obj_set_x(lv_label_13, 357);
    lv_obj_set_y(lv_label_13, 520);
    lv_obj_set_width(lv_label_13, 99);
    lv_obj_set_height(lv_label_13, 40);
    lv_label_set_text(lv_label_13, "REGEN");
    lv_obj_add_style(lv_label_13, &chip, 0);
    lv_obj_bind_style(lv_label_13, &chip_on, 0, &regen_status, 1);

    lv_obj_t * lv_label_14 = lv_label_create(lv_obj_0);
    lv_obj_set_x(lv_label_14, 246);
    lv_obj_set_y(lv_label_14, 568);
    lv_obj_set_width(lv_label_14, 99);
    lv_obj_set_height(lv_label_14, 40);
    lv_label_set_text(lv_label_14, "CRUISE +");
    lv_obj_add_style(lv_label_14, &chip, 0);
    lv_obj_bind_style(lv_label_14, &chip_on, 0, &cruise_up_status, 1);

    lv_obj_t * lv_label_15 = lv_label_create(lv_obj_0);
    lv_obj_set_x(lv_label_15, 357);
    lv_obj_set_y(lv_label_15, 568);
    lv_obj_set_width(lv_label_15, 99);
    lv_obj_set_height(lv_label_15, 40);
    lv_label_set_text(lv_label_15, "CRUISE -");
    lv_obj_add_style(lv_label_15, &chip, 0);
    lv_obj_bind_style(lv_label_15, &chip_on, 0, &cruise_down_status, 1);

    lv_obj_t * lv_obj_2 = lv_obj_create(lv_obj_0);
    lv_obj_set_x(lv_obj_2, 24);
    lv_obj_set_y(lv_obj_2, 640);
    lv_obj_set_width(lv_obj_2, 432);
    lv_obj_set_height(lv_obj_2, 136);
    lv_obj_set_flag(lv_obj_2, LV_OBJ_FLAG_SCROLLABLE, false);
    lv_obj_add_style(lv_obj_2, &panel, 0);
    lv_obj_t * lv_label_16 = lv_label_create(lv_obj_2);
    lv_obj_set_x(lv_label_16, 14);
    lv_obj_set_y(lv_label_16, 14);
    lv_label_set_text(lv_label_16, "ACTIVE FAULTS");
    lv_obj_add_style(lv_label_16, &caption, 0);

    lv_obj_t * lv_label_17 = lv_label_create(lv_obj_2);
    lv_obj_set_x(lv_label_17, 200);
    lv_obj_set_y(lv_label_17, 11);
    lv_label_bind_text(lv_label_17, &dbg_fault_count, NULL);
    lv_obj_add_style(lv_label_17, &badge, 0);
    lv_obj_bind_style(lv_label_17, &badge_fault, 0, &fault_active, 1);

    lv_obj_t * lv_label_18 = lv_label_create(lv_obj_2);
    lv_obj_set_x(lv_label_18, 14);
    lv_obj_set_y(lv_label_18, 48);
    lv_obj_set_width(lv_label_18, 404);
    lv_label_set_long_mode(lv_label_18, LV_LABEL_LONG_MODE_CLIP);
    lv_label_bind_text(lv_label_18, &dbg_fault_1, NULL);
    lv_obj_add_style(lv_label_18, &dbg_caption, 0);
    lv_obj_bind_style(lv_label_18, &dbg_value_alert, 0, &fault_active, 1);

    lv_obj_t * lv_label_19 = lv_label_create(lv_obj_2);
    lv_obj_set_x(lv_label_19, 14);
    lv_obj_set_y(lv_label_19, 74);
    lv_obj_set_width(lv_label_19, 404);
    lv_label_set_long_mode(lv_label_19, LV_LABEL_LONG_MODE_CLIP);
    lv_label_bind_text(lv_label_19, &dbg_fault_2, NULL);
    lv_obj_add_style(lv_label_19, &dbg_caption, 0);
    lv_obj_bind_style(lv_label_19, &dbg_value_alert, 0, &fault_active, 1);

    lv_obj_t * lv_label_20 = lv_label_create(lv_obj_2);
    lv_obj_set_x(lv_label_20, 14);
    lv_obj_set_y(lv_label_20, 100);
    lv_obj_set_width(lv_label_20, 404);
    lv_label_set_long_mode(lv_label_20, LV_LABEL_LONG_MODE_CLIP);
    lv_label_bind_text(lv_label_20, &dbg_fault_3, NULL);
    lv_obj_add_style(lv_label_20, &dbg_caption, 0);
    lv_obj_bind_style(lv_label_20, &dbg_value_alert, 0, &fault_active, 1);

    LV_TRACE_OBJ_CREATE("finished");

    return lv_obj_0;
}

/**********************
 *   STATIC FUNCTIONS
 **********************/

