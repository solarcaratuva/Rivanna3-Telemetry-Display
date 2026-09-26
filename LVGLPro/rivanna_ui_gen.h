/**
 * @file rivanna_ui_gen.h
 */

#ifndef RIVANNA_UI_GEN_H
#define RIVANNA_UI_GEN_H

#ifndef UI_SUBJECT_STRING_LENGTH
#define UI_SUBJECT_STRING_LENGTH 256
#endif

#ifdef __cplusplus
extern "C" {
#endif

/*********************
 *      INCLUDES
 *********************/

#ifdef LV_LVGL_H_INCLUDE_SIMPLE
    #include "lvgl.h"
    #include "lvgl_private.h"
#else
    #include "lvgl/lvgl.h"
    #include "lvgl/lvgl_private.h"
#endif

#ifdef LV_USE_XML
    #include "lv_xml/lv_xml.h"
#endif



/*********************
 *      DEFINES
 *********************/

#define SCREEN_BG lv_color_hex(0x05070A)

#define CARD_BG lv_color_hex(0x11151B)

#define CARD_BORDER lv_color_hex(0x262C35)

#define NAV_BG lv_color_hex(0x151A21)

#define TEXT_PRIMARY lv_color_hex(0xF2F4F7)

#define TEXT_DIM lv_color_hex(0x5E6874)

#define TEXT_OFF lv_color_hex(0x262C35)

#define TRACK lv_color_hex(0x151A21)

#define HAIRLINE lv_color_hex(0x1C2129)

#define STATUS_OK lv_color_hex(0x2FD66B)

#define STATUS_ERROR lv_color_hex(0xF0453A)

#define ACCEL lv_color_hex(0x2FD66B)

#define REGEN lv_color_hex(0x2EB8F0)

#define BRAKE lv_color_hex(0xF0453A)

#define TURN_ON lv_color_hex(0x2FD66B)

#define TURN_OFF lv_color_hex(0x161B22)

#define WARN lv_color_hex(0xF5A524)

#define PANEL_BG lv_color_hex(0x0C1015)

#define ACCEL_TINT lv_color_hex(0x0D301D)

#define ALERT_TINT lv_color_hex(0x2F1213)

#define SPLASH_BG lv_color_hex(0xFFFFFF)

#define SPLASH_TRACK lv_color_hex(0xE3E8EF)

#define UVA_ORANGE lv_color_hex(0xF57C2B)

#define UVA_NAVY lv_color_hex(0x04305F)

/**********************
 *      TYPEDEFS
 **********************/

/**********************
 * GLOBAL VARIABLES
 **********************/

/*-------------------
 * Permanent screens
 *------------------*/

extern lv_obj_t * driver;
extern lv_obj_t * telemetry_data;

/*----------------
 * Global styles
 *----------------*/

extern lv_style_t dashboard_screen;
extern lv_style_t card;
extern lv_style_t label_20;
extern lv_style_t label_28;
extern lv_style_t label_40;
extern lv_style_t splash_screen;
extern lv_style_t splash_arc_track;
extern lv_style_t splash_arc_ind;
extern lv_style_t splash_caption;
extern lv_style_t speed_text;
extern lv_style_t caption;
extern lv_style_t value;
extern lv_style_t center_text;
extern lv_style_t right_text;
extern lv_style_t warn_text;
extern lv_style_t arrow;
extern lv_style_t arrow_lit;
extern lv_style_t telltale;
extern lv_style_t telltale_ok;
extern lv_style_t telltale_green;
extern lv_style_t telltale_blue;
extern lv_style_t telltale_amber;
extern lv_style_t telltale_fault;
extern lv_style_t telltale_row;
extern lv_style_t bar_track;
extern lv_style_t bar_fill;
extern lv_style_t bar_accel;
extern lv_style_t bar_regen;
extern lv_style_t bar_brake;
extern lv_style_t bar_soc;
extern lv_style_t bar_soc_low;
extern lv_style_t hairline;
extern lv_style_t nav_ghost;
extern lv_style_t nav_ghost_pressed;
extern lv_style_t dbg_row;
extern lv_style_t dbg_row_alert;
extern lv_style_t dbg_caption;
extern lv_style_t dbg_value;
extern lv_style_t dbg_value_alert;
extern lv_style_t chip;
extern lv_style_t chip_on;
extern lv_style_t panel;
extern lv_style_t badge;
extern lv_style_t badge_fault;
extern lv_style_t status_chip;
extern lv_style_t status_chip_bad;

/*----------------
 * Fonts
 *----------------*/

extern lv_font_t * montserrat_20;

extern lv_font_t * montserrat_28;

extern lv_font_t * montserrat_40;

extern lv_font_t * caption_16;

extern lv_font_t * value_28;

extern lv_font_t * speed_160;

extern lv_font_t * arrows_56;

/*----------------
 * Images
 *----------------*/

extern const void * team_logo;

/*----------------
 * Subjects
 *----------------*/

extern lv_subject_t drv_speed;
extern lv_subject_t drv_power;
extern lv_subject_t drv_pack_voltage;
extern lv_subject_t drv_pack_current;
extern lv_subject_t drv_soc_text;
extern lv_subject_t drv_soc;
extern lv_subject_t drv_soc_low;
extern lv_subject_t drv_accel;
extern lv_subject_t drv_regen;
extern lv_subject_t drv_brake;
extern lv_subject_t drv_accel_text;
extern lv_subject_t drv_regen_text;
extern lv_subject_t drv_brake_text;
extern lv_subject_t drv_cruise_text;
extern lv_subject_t motor_status;
extern lv_subject_t bps_status;
extern lv_subject_t no_status;
extern lv_subject_t left_lit;
extern lv_subject_t right_lit;
extern lv_subject_t left_status;
extern lv_subject_t right_status;
extern lv_subject_t hazards_status;
extern lv_subject_t cruise_status;
extern lv_subject_t regen_status;
extern lv_subject_t low_power_status;
extern lv_subject_t cruise_up_status;
extern lv_subject_t cruise_down_status;
extern lv_subject_t telemetry_status;
extern lv_subject_t fault_active;
extern lv_subject_t dbg_rpm;
extern lv_subject_t dbg_speed;
extern lv_subject_t dbg_mc_voltage;
extern lv_subject_t dbg_mc_current;
extern lv_subject_t dbg_mc_direction;
extern lv_subject_t dbg_motor_current;
extern lv_subject_t dbg_fet_temp;
extern lv_subject_t dbg_pwm_duty;
extern lv_subject_t dbg_lead_angle;
extern lv_subject_t dbg_motor_error;
extern lv_subject_t dbg_pack_voltage;
extern lv_subject_t dbg_pack_current;
extern lv_subject_t dbg_soc;
extern lv_subject_t dbg_power;
extern lv_subject_t dbg_discharge_relay;
extern lv_subject_t dbg_charge_relay;
extern lv_subject_t dbg_charger_safety;
extern lv_subject_t dbg_charge_signal;
extern lv_subject_t dbg_balancing;
extern lv_subject_t dbg_aux;
extern lv_subject_t dbg_bps_error;
extern lv_subject_t dbg_throttle_pedal;
extern lv_subject_t dbg_brake_pedal;
extern lv_subject_t dbg_throttle;
extern lv_subject_t dbg_regen_brake;
extern lv_subject_t dbg_cruise_speed;
extern lv_subject_t dbg_drive_mode;
extern lv_subject_t dbg_status;
extern lv_subject_t dbg_uptime;
extern lv_subject_t dbg_fault_count;
extern lv_subject_t dbg_fault_1;
extern lv_subject_t dbg_fault_2;
extern lv_subject_t dbg_fault_3;

/**********************
 * GLOBAL PROTOTYPES
 **********************/

/*----------------
 * Event Callbacks
 *----------------*/

/**
 * Initialize the component library
 */

void rivanna_ui_init_gen(const char * asset_path);

/**********************
 *      MACROS
 **********************/

/**********************
 *   POST INCLUDES
 **********************/

/*Include all the widgets, components and screens of this library*/
#include "components/card/card_gen.h"
#include "components/dbg_row/dbg_row_gen.h"
#include "screens/driver_gen.h"
#include "screens/startup_gen.h"
#include "screens/telemetry_data_gen.h"

#ifdef __cplusplus
} /*extern "C"*/
#endif

#endif /*RIVANNA_UI_GEN_H*/