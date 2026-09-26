/**
 * @file driver_gen.c
 * @brief Template source file for LVGL objects
 */

/*********************
 *      INCLUDES
 *********************/

#include "driver_gen.h"
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

lv_obj_t * driver_create(void)
{
    LV_TRACE_OBJ_CREATE("begin");


    static bool style_inited = false;

    if (!style_inited) {

        style_inited = true;
    }

    if (driver == NULL) driver = lv_obj_create(NULL);
    lv_obj_t * lv_obj_0 = driver;
    lv_obj_set_name_static(lv_obj_0, "driver_#");
    lv_obj_set_flag(lv_obj_0, LV_OBJ_FLAG_SCROLLABLE, false);

    lv_obj_add_style(lv_obj_0, &dashboard_screen, 0);
    lv_obj_t * lv_label_0 = lv_label_create(lv_obj_0);
    lv_obj_set_x(lv_label_0, 32);
    lv_obj_set_y(lv_label_0, 8);
    lv_label_set_text(lv_label_0, "◀");
    lv_obj_add_style(lv_label_0, &arrow, 0);
    lv_obj_bind_style(lv_label_0, &arrow_lit, 0, &left_lit, 1);

    lv_obj_t * lv_label_1 = lv_label_create(lv_obj_0);
    lv_obj_set_x(lv_label_1, -32);
    lv_obj_set_y(lv_label_1, 8);
    lv_obj_set_align(lv_label_1, LV_ALIGN_TOP_RIGHT);
    lv_label_set_text(lv_label_1, "▶");
    lv_obj_add_style(lv_label_1, &arrow, 0);
    lv_obj_bind_style(lv_label_1, &arrow_lit, 0, &right_lit, 1);

    lv_obj_t * lv_obj_1 = lv_obj_create(lv_obj_0);
    lv_obj_set_y(lv_obj_1, 26);
    lv_obj_set_align(lv_obj_1, LV_ALIGN_TOP_MID);
    lv_obj_set_width(lv_obj_1, LV_SIZE_CONTENT);
    lv_obj_set_height(lv_obj_1, LV_SIZE_CONTENT);
    lv_obj_set_flex_flow(lv_obj_1, LV_FLEX_FLOW_ROW);
    lv_obj_set_flag(lv_obj_1, LV_OBJ_FLAG_SCROLLABLE, false);
    lv_obj_add_style(lv_obj_1, &telltale_row, 0);
    lv_obj_t * lv_label_2 = lv_label_create(lv_obj_1);
    lv_label_set_text(lv_label_2, "HAZARD");
    lv_obj_add_style(lv_label_2, &telltale, 0);
    lv_obj_bind_style(lv_label_2, &telltale_amber, 0, &hazards_status, 1);

    lv_obj_t * lv_label_3 = lv_label_create(lv_obj_1);
    lv_label_bind_text(lv_label_3, &drv_cruise_text, NULL);
    lv_obj_add_style(lv_label_3, &telltale, 0);
    lv_obj_bind_style(lv_label_3, &telltale_green, 0, &cruise_status, 1);

    lv_obj_t * lv_label_4 = lv_label_create(lv_obj_1);
    lv_label_set_text(lv_label_4, "REGEN");
    lv_obj_add_style(lv_label_4, &telltale, 0);
    lv_obj_bind_style(lv_label_4, &telltale_blue, 0, &regen_status, 1);

    lv_obj_t * lv_label_5 = lv_label_create(lv_obj_1);
    lv_label_set_text(lv_label_5, "LOW PWR");
    lv_obj_add_style(lv_label_5, &telltale, 0);
    lv_obj_bind_style(lv_label_5, &telltale_amber, 0, &low_power_status, 1);

    lv_obj_t * lv_label_6 = lv_label_create(lv_obj_1);
    lv_label_set_text(lv_label_6, "MOTOR");
    lv_obj_add_style(lv_label_6, &telltale, 0);
    lv_obj_bind_style(lv_label_6, &telltale_ok, 0, &motor_status, 0);
    lv_obj_bind_style(lv_label_6, &telltale_fault, 0, &motor_status, 1);

    lv_obj_t * lv_label_7 = lv_label_create(lv_obj_1);
    lv_label_set_text(lv_label_7, "BPS");
    lv_obj_add_style(lv_label_7, &telltale, 0);
    lv_obj_bind_style(lv_label_7, &telltale_ok, 0, &bps_status, 0);
    lv_obj_bind_style(lv_label_7, &telltale_fault, 0, &bps_status, 1);

    lv_obj_t * lv_bar_0 = lv_bar_create(lv_obj_0);
    lv_obj_set_x(lv_bar_0, 32);
    lv_obj_set_y(lv_bar_0, 96);
    lv_obj_set_width(lv_bar_0, 10);
    lv_obj_set_height(lv_bar_0, 140);
    lv_bar_set_orientation(lv_bar_0, LV_BAR_ORIENTATION_VERTICAL);
    lv_bar_set_min_value(lv_bar_0, 0);
    lv_bar_set_max_value(lv_bar_0, 100);
    lv_bar_bind_value(lv_bar_0, &drv_accel);
    lv_obj_add_style(lv_bar_0, &bar_track, 0);
    lv_obj_add_style(lv_bar_0, &bar_fill, LV_PART_INDICATOR);
    lv_obj_add_style(lv_bar_0, &bar_accel, LV_PART_INDICATOR);

    lv_obj_t * lv_bar_1 = lv_bar_create(lv_obj_0);
    lv_obj_set_x(lv_bar_1, 32);
    lv_obj_set_y(lv_bar_1, 244);
    lv_obj_set_width(lv_bar_1, 10);
    lv_obj_set_height(lv_bar_1, 140);
    lv_bar_set_orientation(lv_bar_1, LV_BAR_ORIENTATION_VERTICAL);
    lv_bar_set_min_value(lv_bar_1, 100);
    lv_bar_set_max_value(lv_bar_1, 0);
    lv_bar_bind_value(lv_bar_1, &drv_regen);
    lv_obj_add_style(lv_bar_1, &bar_track, 0);
    lv_obj_add_style(lv_bar_1, &bar_fill, LV_PART_INDICATOR);
    lv_obj_add_style(lv_bar_1, &bar_regen, LV_PART_INDICATOR);

    lv_obj_t * lv_label_8 = lv_label_create(lv_obj_0);
    lv_obj_set_x(lv_label_8, 58);
    lv_obj_set_y(lv_label_8, 94);
    lv_label_set_text(lv_label_8, "THROTTLE");
    lv_obj_add_style(lv_label_8, &caption, 0);

    lv_obj_t * lv_label_9 = lv_label_create(lv_obj_0);
    lv_obj_set_x(lv_label_9, 58);
    lv_obj_set_y(lv_label_9, 116);
    lv_label_bind_text(lv_label_9, &drv_accel_text, NULL);
    lv_obj_add_style(lv_label_9, &value, 0);

    lv_obj_t * lv_label_10 = lv_label_create(lv_obj_0);
    lv_obj_set_x(lv_label_10, 58);
    lv_obj_set_y(lv_label_10, 328);
    lv_label_set_text(lv_label_10, "REGEN");
    lv_obj_add_style(lv_label_10, &caption, 0);

    lv_obj_t * lv_label_11 = lv_label_create(lv_obj_0);
    lv_obj_set_x(lv_label_11, 58);
    lv_obj_set_y(lv_label_11, 350);
    lv_label_bind_text(lv_label_11, &drv_regen_text, NULL);
    lv_obj_add_style(lv_label_11, &value, 0);

    lv_obj_t * lv_bar_2 = lv_bar_create(lv_obj_0);
    lv_obj_set_x(lv_bar_2, -32);
    lv_obj_set_y(lv_bar_2, 96);
    lv_obj_set_align(lv_bar_2, LV_ALIGN_TOP_RIGHT);
    lv_obj_set_width(lv_bar_2, 10);
    lv_obj_set_height(lv_bar_2, 288);
    lv_bar_set_orientation(lv_bar_2, LV_BAR_ORIENTATION_VERTICAL);
    lv_bar_set_min_value(lv_bar_2, 0);
    lv_bar_set_max_value(lv_bar_2, 100);
    lv_bar_bind_value(lv_bar_2, &drv_brake);
    lv_obj_add_style(lv_bar_2, &bar_track, 0);
    lv_obj_add_style(lv_bar_2, &bar_fill, LV_PART_INDICATOR);
    lv_obj_add_style(lv_bar_2, &bar_brake, LV_PART_INDICATOR);

    lv_obj_t * lv_label_12 = lv_label_create(lv_obj_0);
    lv_obj_set_x(lv_label_12, -58);
    lv_obj_set_y(lv_label_12, 94);
    lv_obj_set_align(lv_label_12, LV_ALIGN_TOP_RIGHT);
    lv_label_set_text(lv_label_12, "BRAKE");
    lv_obj_add_style(lv_label_12, &caption, 0);

    lv_obj_t * lv_label_13 = lv_label_create(lv_obj_0);
    lv_obj_set_x(lv_label_13, -58);
    lv_obj_set_y(lv_label_13, 116);
    lv_obj_set_align(lv_label_13, LV_ALIGN_TOP_RIGHT);
    lv_label_bind_text(lv_label_13, &drv_brake_text, NULL);
    lv_obj_add_style(lv_label_13, &value, 0);

    lv_obj_t * lv_label_14 = lv_label_create(lv_obj_0);
    lv_obj_set_y(lv_label_14, 72);
    lv_obj_set_align(lv_label_14, LV_ALIGN_TOP_MID);
    lv_label_bind_text(lv_label_14, &drv_speed, NULL);
    lv_obj_add_style(lv_label_14, &speed_text, 0);

    lv_obj_t * lv_label_15 = lv_label_create(lv_obj_0);
    lv_obj_set_y(lv_label_15, 232);
    lv_obj_set_align(lv_label_15, LV_ALIGN_TOP_MID);
    lv_label_set_text(lv_label_15, "MPH");
    lv_obj_add_style(lv_label_15, &caption, 0);

    lv_obj_t * lv_label_16 = lv_label_create(lv_obj_0);
    lv_obj_set_x(lv_label_16, 176);
    lv_obj_set_y(lv_label_16, 282);
    lv_obj_set_width(lv_label_16, 148);
    lv_label_set_text(lv_label_16, "POWER");
    lv_obj_add_style(lv_label_16, &caption, 0);
    lv_obj_add_style(lv_label_16, &center_text, 0);

    lv_obj_t * lv_label_17 = lv_label_create(lv_obj_0);
    lv_obj_set_x(lv_label_17, 176);
    lv_obj_set_y(lv_label_17, 306);
    lv_obj_set_width(lv_label_17, 148);
    lv_label_bind_text(lv_label_17, &drv_power, NULL);
    lv_obj_add_style(lv_label_17, &value, 0);
    lv_obj_add_style(lv_label_17, &center_text, 0);

    lv_obj_t * lv_obj_2 = lv_obj_create(lv_obj_0);
    lv_obj_set_x(lv_obj_2, 325);
    lv_obj_set_y(lv_obj_2, 284);
    lv_obj_set_width(lv_obj_2, 1);
    lv_obj_set_height(lv_obj_2, 54);
    lv_obj_set_flag(lv_obj_2, LV_OBJ_FLAG_SCROLLABLE, false);
    lv_obj_add_style(lv_obj_2, &hairline, 0);

    lv_obj_t * lv_label_18 = lv_label_create(lv_obj_0);
    lv_obj_set_x(lv_label_18, 326);
    lv_obj_set_y(lv_label_18, 282);
    lv_obj_set_width(lv_label_18, 148);
    lv_label_set_text(lv_label_18, "PACK");
    lv_obj_add_style(lv_label_18, &caption, 0);
    lv_obj_add_style(lv_label_18, &center_text, 0);

    lv_obj_t * lv_label_19 = lv_label_create(lv_obj_0);
    lv_obj_set_x(lv_label_19, 326);
    lv_obj_set_y(lv_label_19, 306);
    lv_obj_set_width(lv_label_19, 148);
    lv_label_bind_text(lv_label_19, &drv_pack_voltage, NULL);
    lv_obj_add_style(lv_label_19, &value, 0);
    lv_obj_add_style(lv_label_19, &center_text, 0);

    lv_obj_t * lv_obj_3 = lv_obj_create(lv_obj_0);
    lv_obj_set_x(lv_obj_3, 475);
    lv_obj_set_y(lv_obj_3, 284);
    lv_obj_set_width(lv_obj_3, 1);
    lv_obj_set_height(lv_obj_3, 54);
    lv_obj_set_flag(lv_obj_3, LV_OBJ_FLAG_SCROLLABLE, false);
    lv_obj_add_style(lv_obj_3, &hairline, 0);

    lv_obj_t * lv_label_20 = lv_label_create(lv_obj_0);
    lv_obj_set_x(lv_label_20, 476);
    lv_obj_set_y(lv_label_20, 282);
    lv_obj_set_width(lv_label_20, 148);
    lv_label_set_text(lv_label_20, "CURRENT");
    lv_obj_add_style(lv_label_20, &caption, 0);
    lv_obj_add_style(lv_label_20, &center_text, 0);

    lv_obj_t * lv_label_21 = lv_label_create(lv_obj_0);
    lv_obj_set_x(lv_label_21, 476);
    lv_obj_set_y(lv_label_21, 306);
    lv_obj_set_width(lv_label_21, 148);
    lv_label_bind_text(lv_label_21, &drv_pack_current, NULL);
    lv_obj_add_style(lv_label_21, &value, 0);
    lv_obj_add_style(lv_label_21, &center_text, 0);

    lv_obj_t * lv_obj_4 = lv_obj_create(lv_obj_0);
    lv_obj_set_x(lv_obj_4, 32);
    lv_obj_set_y(lv_obj_4, 400);
    lv_obj_set_width(lv_obj_4, 736);
    lv_obj_set_height(lv_obj_4, 1);
    lv_obj_set_flag(lv_obj_4, LV_OBJ_FLAG_SCROLLABLE, false);
    lv_obj_add_style(lv_obj_4, &hairline, 0);

    lv_obj_t * lv_label_22 = lv_label_create(lv_obj_0);
    lv_obj_set_x(lv_label_22, 32);
    lv_obj_set_y(lv_label_22, 424);
    lv_label_set_text(lv_label_22, "BATTERY");
    lv_obj_add_style(lv_label_22, &caption, 0);

    lv_obj_t * lv_bar_3 = lv_bar_create(lv_obj_0);
    lv_obj_set_x(lv_bar_3, 136);
    lv_obj_set_y(lv_bar_3, 428);
    lv_obj_set_width(lv_bar_3, 384);
    lv_obj_set_height(lv_bar_3, 10);
    lv_bar_set_orientation(lv_bar_3, LV_BAR_ORIENTATION_HORIZONTAL);
    lv_bar_set_min_value(lv_bar_3, 0);
    lv_bar_set_max_value(lv_bar_3, 100);
    lv_bar_bind_value(lv_bar_3, &drv_soc);
    lv_obj_add_style(lv_bar_3, &bar_track, 0);
    lv_obj_add_style(lv_bar_3, &bar_fill, LV_PART_INDICATOR);
    lv_obj_add_style(lv_bar_3, &bar_soc, LV_PART_INDICATOR);
    lv_obj_bind_style(lv_bar_3, &bar_soc_low, LV_PART_INDICATOR, &drv_soc_low, 1);

    lv_obj_t * lv_label_23 = lv_label_create(lv_obj_0);
    lv_obj_set_x(lv_label_23, 536);
    lv_obj_set_y(lv_label_23, 414);
    lv_label_bind_text(lv_label_23, &drv_soc_text, NULL);
    lv_obj_add_style(lv_label_23, &value, 0);
    lv_obj_bind_style(lv_label_23, &warn_text, 0, &drv_soc_low, 1);

    lv_obj_t * lv_button_0 = lv_button_create(lv_obj_0);
    lv_obj_set_x(lv_button_0, -32);
    lv_obj_set_y(lv_button_0, 412);
    lv_obj_set_align(lv_button_0, LV_ALIGN_TOP_RIGHT);
    lv_obj_set_width(lv_button_0, 120);
    lv_obj_set_height(lv_button_0, 44);
    lv_obj_add_style(lv_button_0, &nav_ghost, 0);
    lv_obj_add_style(lv_button_0, &nav_ghost_pressed, LV_STATE_PRESSED);
    lv_obj_t * lv_label_24 = lv_label_create(lv_button_0);
    lv_obj_set_align(lv_label_24, LV_ALIGN_CENTER);
    lv_label_set_text(lv_label_24, "DATA  ›");

    lv_obj_add_screen_load_event(lv_button_0, LV_EVENT_CLICKED, telemetry_data, LV_SCREEN_LOAD_ANIM_MOVE_LEFT, 250, 0);

    LV_TRACE_OBJ_CREATE("finished");

    return lv_obj_0;
}

/**********************
 *   STATIC FUNCTIONS
 **********************/

