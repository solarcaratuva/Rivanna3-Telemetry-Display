/**
 * @file rivanna_ui_gen.c
 */

/*********************
 *      INCLUDES
 *********************/

#include "rivanna_ui_gen.h"

#if LV_USE_XML
#endif /* LV_USE_XML */

/*********************
 *      DEFINES
 *********************/

/**********************
 *      TYPEDEFS
 **********************/

/**********************
 *  STATIC PROTOTYPES
 **********************/

/**********************
 *  STATIC VARIABLES
 **********************/

/*----------------
 * Translations
 *----------------*/

/**********************
 *  GLOBAL VARIABLES
 **********************/

/*--------------------
 *  Permanent screens
 *-------------------*/

lv_obj_t * driver = NULL;
lv_obj_t * telemetry_data = NULL;

/*----------------
 * Fonts
 *----------------*/

lv_font_t * montserrat_20;
extern lv_font_t montserrat_20_data;
lv_font_t * montserrat_28;
extern lv_font_t montserrat_28_data;
lv_font_t * montserrat_40;
extern lv_font_t montserrat_40_data;
lv_font_t * caption_16;
extern lv_font_t caption_16_data;
lv_font_t * value_28;
extern lv_font_t value_28_data;
lv_font_t * speed_160;
extern lv_font_t speed_160_data;
lv_font_t * arrows_56;
extern lv_font_t arrows_56_data;

/*----------------
 * Images
 *----------------*/

const void * team_logo;
extern const void * team_logo_data;

/*----------------
 * Global styles
 *----------------*/

lv_style_t dashboard_screen;
lv_style_t card;
lv_style_t label_20;
lv_style_t label_28;
lv_style_t label_40;
lv_style_t splash_screen;
lv_style_t splash_arc_track;
lv_style_t splash_arc_ind;
lv_style_t splash_caption;
lv_style_t speed_text;
lv_style_t caption;
lv_style_t value;
lv_style_t center_text;
lv_style_t right_text;
lv_style_t warn_text;
lv_style_t arrow;
lv_style_t arrow_lit;
lv_style_t telltale;
lv_style_t telltale_ok;
lv_style_t telltale_green;
lv_style_t telltale_blue;
lv_style_t telltale_amber;
lv_style_t telltale_fault;
lv_style_t telltale_row;
lv_style_t bar_track;
lv_style_t bar_fill;
lv_style_t bar_accel;
lv_style_t bar_regen;
lv_style_t bar_brake;
lv_style_t bar_soc;
lv_style_t bar_soc_low;
lv_style_t hairline;
lv_style_t nav_ghost;
lv_style_t nav_ghost_pressed;
lv_style_t dbg_row;
lv_style_t dbg_row_alert;
lv_style_t dbg_caption;
lv_style_t dbg_value;
lv_style_t dbg_value_alert;
lv_style_t chip;
lv_style_t chip_on;
lv_style_t panel;
lv_style_t badge;
lv_style_t badge_fault;
lv_style_t status_chip;
lv_style_t status_chip_bad;

/*----------------
 * Subjects
 *----------------*/

lv_subject_t drv_speed;
lv_subject_t drv_power;
lv_subject_t drv_pack_voltage;
lv_subject_t drv_pack_current;
lv_subject_t drv_soc_text;
lv_subject_t drv_soc;
lv_subject_t drv_soc_low;
lv_subject_t drv_accel;
lv_subject_t drv_regen;
lv_subject_t drv_brake;
lv_subject_t drv_accel_text;
lv_subject_t drv_regen_text;
lv_subject_t drv_brake_text;
lv_subject_t drv_cruise_text;
lv_subject_t motor_status;
lv_subject_t bps_status;
lv_subject_t no_status;
lv_subject_t left_lit;
lv_subject_t right_lit;
lv_subject_t left_status;
lv_subject_t right_status;
lv_subject_t hazards_status;
lv_subject_t cruise_status;
lv_subject_t regen_status;
lv_subject_t low_power_status;
lv_subject_t cruise_up_status;
lv_subject_t cruise_down_status;
lv_subject_t telemetry_status;
lv_subject_t fault_active;
lv_subject_t dbg_rpm;
lv_subject_t dbg_speed;
lv_subject_t dbg_mc_voltage;
lv_subject_t dbg_mc_current;
lv_subject_t dbg_mc_direction;
lv_subject_t dbg_motor_current;
lv_subject_t dbg_fet_temp;
lv_subject_t dbg_pwm_duty;
lv_subject_t dbg_lead_angle;
lv_subject_t dbg_motor_error;
lv_subject_t dbg_pack_voltage;
lv_subject_t dbg_pack_current;
lv_subject_t dbg_soc;
lv_subject_t dbg_power;
lv_subject_t dbg_discharge_relay;
lv_subject_t dbg_charge_relay;
lv_subject_t dbg_charger_safety;
lv_subject_t dbg_charge_signal;
lv_subject_t dbg_balancing;
lv_subject_t dbg_aux;
lv_subject_t dbg_bps_error;
lv_subject_t dbg_throttle_pedal;
lv_subject_t dbg_brake_pedal;
lv_subject_t dbg_throttle;
lv_subject_t dbg_regen_brake;
lv_subject_t dbg_cruise_speed;
lv_subject_t dbg_drive_mode;
lv_subject_t dbg_status;
lv_subject_t dbg_uptime;
lv_subject_t dbg_fault_count;
lv_subject_t dbg_fault_1;
lv_subject_t dbg_fault_2;
lv_subject_t dbg_fault_3;

/**********************
 *      MACROS
 **********************/

/**********************
 *   GLOBAL FUNCTIONS
 **********************/

void rivanna_ui_init_gen(const char * asset_path)
{
    char buf[256];


    /*----------------
     * Fonts
     *----------------*/

    /* get font 'montserrat_20' from a C array */
    montserrat_20 = &montserrat_20_data;
    /* get font 'montserrat_28' from a C array */
    montserrat_28 = &montserrat_28_data;
    /* get font 'montserrat_40' from a C array */
    montserrat_40 = &montserrat_40_data;
    /* get font 'caption_16' from a C array */
    caption_16 = &caption_16_data;
    /* get font 'value_28' from a C array */
    value_28 = &value_28_data;
    /* get font 'speed_160' from a C array */
    speed_160 = &speed_160_data;
    /* get font 'arrows_56' from a C array */
    arrows_56 = &arrows_56_data;


    /*----------------
     * Images
     *----------------*/
    team_logo = &team_logo_data;

    /*----------------
     * Global styles
     *----------------*/

    static bool style_inited = false;

    if (!style_inited) {
        lv_style_init(&dashboard_screen);
        lv_style_set_bg_color(&dashboard_screen, SCREEN_BG);
        lv_style_set_bg_opa(&dashboard_screen, (255 * 100 / 100));
        lv_style_set_text_color(&dashboard_screen, TEXT_PRIMARY);

        lv_style_init(&card);
        lv_style_set_bg_color(&card, CARD_BG);
        lv_style_set_bg_opa(&card, (255 * 100 / 100));
        lv_style_set_border_color(&card, CARD_BORDER);
        lv_style_set_border_width(&card, 1);
        lv_style_set_radius(&card, 12);
        lv_style_set_pad_all(&card, 0);

        lv_style_init(&label_20);
        lv_style_set_text_font(&label_20, montserrat_20);
        lv_style_set_text_color(&label_20, TEXT_PRIMARY);

        lv_style_init(&label_28);
        lv_style_set_text_font(&label_28, montserrat_28);
        lv_style_set_text_color(&label_28, TEXT_PRIMARY);

        lv_style_init(&label_40);
        lv_style_set_text_font(&label_40, montserrat_40);
        lv_style_set_text_color(&label_40, TEXT_PRIMARY);

        lv_style_init(&splash_screen);
        lv_style_set_bg_color(&splash_screen, SPLASH_BG);
        lv_style_set_bg_opa(&splash_screen, (255 * 100 / 100));

        lv_style_init(&splash_arc_track);
        lv_style_set_arc_color(&splash_arc_track, SPLASH_TRACK);
        lv_style_set_arc_width(&splash_arc_track, 6);
        lv_style_set_arc_rounded(&splash_arc_track, true);

        lv_style_init(&splash_arc_ind);
        lv_style_set_arc_color(&splash_arc_ind, UVA_ORANGE);
        lv_style_set_arc_width(&splash_arc_ind, 6);
        lv_style_set_arc_rounded(&splash_arc_ind, true);

        lv_style_init(&splash_caption);
        lv_style_set_text_font(&splash_caption, caption_16);
        lv_style_set_text_color(&splash_caption, UVA_NAVY);
        lv_style_set_text_letter_space(&splash_caption, 4);

        lv_style_init(&speed_text);
        lv_style_set_text_font(&speed_text, speed_160);
        lv_style_set_text_color(&speed_text, TEXT_PRIMARY);
        lv_style_set_text_letter_space(&speed_text, -4);

        lv_style_init(&caption);
        lv_style_set_text_font(&caption, caption_16);
        lv_style_set_text_color(&caption, TEXT_DIM);
        lv_style_set_text_letter_space(&caption, 2);

        lv_style_init(&value);
        lv_style_set_text_font(&value, value_28);
        lv_style_set_text_color(&value, TEXT_PRIMARY);

        lv_style_init(&center_text);
        lv_style_set_text_align(&center_text, LV_TEXT_ALIGN_CENTER);

        lv_style_init(&right_text);
        lv_style_set_text_align(&right_text, LV_TEXT_ALIGN_RIGHT);

        lv_style_init(&warn_text);
        lv_style_set_text_color(&warn_text, WARN);

        lv_style_init(&arrow);
        lv_style_set_text_font(&arrow, arrows_56);
        lv_style_set_text_color(&arrow, TURN_OFF);

        lv_style_init(&arrow_lit);
        lv_style_set_text_color(&arrow_lit, TURN_ON);

        lv_style_init(&telltale);
        lv_style_set_bg_color(&telltale, STATUS_ERROR);
        lv_style_set_bg_opa(&telltale, (255 * 0 / 100));
        lv_style_set_border_width(&telltale, 0);
        lv_style_set_radius(&telltale, 4);
        lv_style_set_pad_hor(&telltale, 8);
        lv_style_set_pad_ver(&telltale, 4);
        lv_style_set_text_font(&telltale, caption_16);
        lv_style_set_text_color(&telltale, TEXT_OFF);
        lv_style_set_text_letter_space(&telltale, 2);

        lv_style_init(&telltale_ok);
        lv_style_set_text_color(&telltale_ok, TEXT_DIM);

        lv_style_init(&telltale_green);
        lv_style_set_text_color(&telltale_green, ACCEL);

        lv_style_init(&telltale_blue);
        lv_style_set_text_color(&telltale_blue, REGEN);

        lv_style_init(&telltale_amber);
        lv_style_set_text_color(&telltale_amber, WARN);

        lv_style_init(&telltale_fault);
        lv_style_set_bg_opa(&telltale_fault, (255 * 100 / 100));
        lv_style_set_text_color(&telltale_fault, TEXT_PRIMARY);

        lv_style_init(&telltale_row);
        lv_style_set_bg_opa(&telltale_row, (255 * 0 / 100));
        lv_style_set_border_width(&telltale_row, 0);
        lv_style_set_pad_all(&telltale_row, 0);
        lv_style_set_pad_column(&telltale_row, 12);

        lv_style_init(&bar_track);
        lv_style_set_bg_color(&bar_track, TRACK);
        lv_style_set_bg_opa(&bar_track, (255 * 100 / 100));
        lv_style_set_border_width(&bar_track, 0);
        lv_style_set_radius(&bar_track, 6);
        lv_style_set_pad_all(&bar_track, 0);

        lv_style_init(&bar_fill);
        lv_style_set_radius(&bar_fill, 6);

        lv_style_init(&bar_accel);
        lv_style_set_bg_color(&bar_accel, ACCEL);

        lv_style_init(&bar_regen);
        lv_style_set_bg_color(&bar_regen, REGEN);

        lv_style_init(&bar_brake);
        lv_style_set_bg_color(&bar_brake, BRAKE);

        lv_style_init(&bar_soc);
        lv_style_set_bg_color(&bar_soc, TEXT_PRIMARY);

        lv_style_init(&bar_soc_low);
        lv_style_set_bg_color(&bar_soc_low, WARN);

        lv_style_init(&hairline);
        lv_style_set_bg_color(&hairline, HAIRLINE);
        lv_style_set_bg_opa(&hairline, (255 * 100 / 100));
        lv_style_set_border_width(&hairline, 0);
        lv_style_set_radius(&hairline, 0);

        lv_style_init(&nav_ghost);
        lv_style_set_bg_color(&nav_ghost, NAV_BG);
        lv_style_set_bg_opa(&nav_ghost, (255 * 100 / 100));
        lv_style_set_border_width(&nav_ghost, 0);
        lv_style_set_radius(&nav_ghost, 22);
        lv_style_set_shadow_width(&nav_ghost, 0);
        lv_style_set_text_font(&nav_ghost, caption_16);
        lv_style_set_text_color(&nav_ghost, TEXT_PRIMARY);
        lv_style_set_text_letter_space(&nav_ghost, 2);

        lv_style_init(&nav_ghost_pressed);
        lv_style_set_bg_color(&nav_ghost_pressed, HAIRLINE);

        lv_style_init(&dbg_row);
        lv_style_set_bg_color(&dbg_row, SCREEN_BG);
        lv_style_set_bg_opa(&dbg_row, (255 * 100 / 100));
        lv_style_set_border_side(&dbg_row, LV_BORDER_SIDE_BOTTOM);
        lv_style_set_border_color(&dbg_row, HAIRLINE);
        lv_style_set_border_width(&dbg_row, 1);
        lv_style_set_radius(&dbg_row, 0);
        lv_style_set_pad_all(&dbg_row, 0);

        lv_style_init(&dbg_row_alert);
        lv_style_set_bg_color(&dbg_row_alert, ALERT_TINT);

        lv_style_init(&dbg_caption);
        lv_style_set_text_font(&dbg_caption, caption_16);
        lv_style_set_text_color(&dbg_caption, TEXT_DIM);

        lv_style_init(&dbg_value);
        lv_style_set_text_font(&dbg_value, caption_16);
        lv_style_set_text_color(&dbg_value, TEXT_PRIMARY);

        lv_style_init(&dbg_value_alert);
        lv_style_set_text_color(&dbg_value_alert, STATUS_ERROR);

        lv_style_init(&chip);
        lv_style_set_bg_color(&chip, TRACK);
        lv_style_set_bg_opa(&chip, (255 * 100 / 100));
        lv_style_set_radius(&chip, 6);
        lv_style_set_pad_top(&chip, 11);
        lv_style_set_text_font(&chip, caption_16);
        lv_style_set_text_color(&chip, TEXT_DIM);
        lv_style_set_text_align(&chip, LV_TEXT_ALIGN_CENTER);
        lv_style_set_text_letter_space(&chip, 1);

        lv_style_init(&chip_on);
        lv_style_set_bg_color(&chip_on, ACCEL_TINT);
        lv_style_set_text_color(&chip_on, ACCEL);

        lv_style_init(&panel);
        lv_style_set_bg_color(&panel, PANEL_BG);
        lv_style_set_bg_opa(&panel, (255 * 100 / 100));
        lv_style_set_border_width(&panel, 0);
        lv_style_set_radius(&panel, 8);
        lv_style_set_pad_all(&panel, 0);

        lv_style_init(&badge);
        lv_style_set_bg_color(&badge, TRACK);
        lv_style_set_bg_opa(&badge, (255 * 100 / 100));
        lv_style_set_radius(&badge, 4);
        lv_style_set_pad_hor(&badge, 8);
        lv_style_set_pad_ver(&badge, 2);
        lv_style_set_text_font(&badge, caption_16);
        lv_style_set_text_color(&badge, TEXT_DIM);

        lv_style_init(&badge_fault);
        lv_style_set_bg_color(&badge_fault, STATUS_ERROR);
        lv_style_set_text_color(&badge_fault, TEXT_PRIMARY);

        lv_style_init(&status_chip);
        lv_style_set_bg_color(&status_chip, STATUS_ERROR);
        lv_style_set_bg_opa(&status_chip, (255 * 0 / 100));
        lv_style_set_radius(&status_chip, 4);
        lv_style_set_pad_hor(&status_chip, 8);
        lv_style_set_pad_ver(&status_chip, 4);
        lv_style_set_text_font(&status_chip, caption_16);
        lv_style_set_text_color(&status_chip, ACCEL);
        lv_style_set_text_letter_space(&status_chip, 2);

        lv_style_init(&status_chip_bad);
        lv_style_set_bg_opa(&status_chip_bad, (255 * 100 / 100));
        lv_style_set_text_color(&status_chip_bad, TEXT_PRIMARY);

        style_inited = true;
    }

    /*----------------
     * Subjects
     *----------------*/
    static char drv_speed_buf[UI_SUBJECT_STRING_LENGTH];
    static char drv_speed_prev_buf[UI_SUBJECT_STRING_LENGTH];
    lv_subject_init_string(&drv_speed,
                           drv_speed_buf,
                           drv_speed_prev_buf,
                           UI_SUBJECT_STRING_LENGTH,
                           "--"
                          );
    static char drv_power_buf[UI_SUBJECT_STRING_LENGTH];
    static char drv_power_prev_buf[UI_SUBJECT_STRING_LENGTH];
    lv_subject_init_string(&drv_power,
                           drv_power_buf,
                           drv_power_prev_buf,
                           UI_SUBJECT_STRING_LENGTH,
                           "--"
                          );
    static char drv_pack_voltage_buf[UI_SUBJECT_STRING_LENGTH];
    static char drv_pack_voltage_prev_buf[UI_SUBJECT_STRING_LENGTH];
    lv_subject_init_string(&drv_pack_voltage,
                           drv_pack_voltage_buf,
                           drv_pack_voltage_prev_buf,
                           UI_SUBJECT_STRING_LENGTH,
                           "--"
                          );
    static char drv_pack_current_buf[UI_SUBJECT_STRING_LENGTH];
    static char drv_pack_current_prev_buf[UI_SUBJECT_STRING_LENGTH];
    lv_subject_init_string(&drv_pack_current,
                           drv_pack_current_buf,
                           drv_pack_current_prev_buf,
                           UI_SUBJECT_STRING_LENGTH,
                           "--"
                          );
    static char drv_soc_text_buf[UI_SUBJECT_STRING_LENGTH];
    static char drv_soc_text_prev_buf[UI_SUBJECT_STRING_LENGTH];
    lv_subject_init_string(&drv_soc_text,
                           drv_soc_text_buf,
                           drv_soc_text_prev_buf,
                           UI_SUBJECT_STRING_LENGTH,
                           "--%"
                          );
    lv_subject_init_int(&drv_soc, 0);
    lv_subject_set_min_value_int(&drv_soc, 0);
    lv_subject_set_max_value_int(&drv_soc, 100);
    lv_subject_init_int(&drv_soc_low, 0);
    lv_subject_init_int(&drv_accel, 0);
    lv_subject_set_min_value_int(&drv_accel, 0);
    lv_subject_set_max_value_int(&drv_accel, 100);
    lv_subject_init_int(&drv_regen, 0);
    lv_subject_set_min_value_int(&drv_regen, 0);
    lv_subject_set_max_value_int(&drv_regen, 100);
    lv_subject_init_int(&drv_brake, 0);
    lv_subject_set_min_value_int(&drv_brake, 0);
    lv_subject_set_max_value_int(&drv_brake, 100);
    static char drv_accel_text_buf[UI_SUBJECT_STRING_LENGTH];
    static char drv_accel_text_prev_buf[UI_SUBJECT_STRING_LENGTH];
    lv_subject_init_string(&drv_accel_text,
                           drv_accel_text_buf,
                           drv_accel_text_prev_buf,
                           UI_SUBJECT_STRING_LENGTH,
                           "--"
                          );
    static char drv_regen_text_buf[UI_SUBJECT_STRING_LENGTH];
    static char drv_regen_text_prev_buf[UI_SUBJECT_STRING_LENGTH];
    lv_subject_init_string(&drv_regen_text,
                           drv_regen_text_buf,
                           drv_regen_text_prev_buf,
                           UI_SUBJECT_STRING_LENGTH,
                           "--"
                          );
    static char drv_brake_text_buf[UI_SUBJECT_STRING_LENGTH];
    static char drv_brake_text_prev_buf[UI_SUBJECT_STRING_LENGTH];
    lv_subject_init_string(&drv_brake_text,
                           drv_brake_text_buf,
                           drv_brake_text_prev_buf,
                           UI_SUBJECT_STRING_LENGTH,
                           "--"
                          );
    static char drv_cruise_text_buf[UI_SUBJECT_STRING_LENGTH];
    static char drv_cruise_text_prev_buf[UI_SUBJECT_STRING_LENGTH];
    lv_subject_init_string(&drv_cruise_text,
                           drv_cruise_text_buf,
                           drv_cruise_text_prev_buf,
                           UI_SUBJECT_STRING_LENGTH,
                           "CRUISE"
                          );
    lv_subject_init_int(&motor_status, -1);
    lv_subject_init_int(&bps_status, -1);
    lv_subject_init_int(&no_status, -1);
    lv_subject_init_int(&left_lit, 0);
    lv_subject_init_int(&right_lit, 0);
    lv_subject_init_int(&left_status, -1);
    lv_subject_init_int(&right_status, -1);
    lv_subject_init_int(&hazards_status, -1);
    lv_subject_init_int(&cruise_status, -1);
    lv_subject_init_int(&regen_status, -1);
    lv_subject_init_int(&low_power_status, -1);
    lv_subject_init_int(&cruise_up_status, -1);
    lv_subject_init_int(&cruise_down_status, -1);
    lv_subject_init_int(&telemetry_status, 0);
    lv_subject_init_int(&fault_active, 0);
    static char dbg_rpm_buf[UI_SUBJECT_STRING_LENGTH];
    static char dbg_rpm_prev_buf[UI_SUBJECT_STRING_LENGTH];
    lv_subject_init_string(&dbg_rpm,
                           dbg_rpm_buf,
                           dbg_rpm_prev_buf,
                           UI_SUBJECT_STRING_LENGTH,
                           "--"
                          );
    static char dbg_speed_buf[UI_SUBJECT_STRING_LENGTH];
    static char dbg_speed_prev_buf[UI_SUBJECT_STRING_LENGTH];
    lv_subject_init_string(&dbg_speed,
                           dbg_speed_buf,
                           dbg_speed_prev_buf,
                           UI_SUBJECT_STRING_LENGTH,
                           "--"
                          );
    static char dbg_mc_voltage_buf[UI_SUBJECT_STRING_LENGTH];
    static char dbg_mc_voltage_prev_buf[UI_SUBJECT_STRING_LENGTH];
    lv_subject_init_string(&dbg_mc_voltage,
                           dbg_mc_voltage_buf,
                           dbg_mc_voltage_prev_buf,
                           UI_SUBJECT_STRING_LENGTH,
                           "--"
                          );
    static char dbg_mc_current_buf[UI_SUBJECT_STRING_LENGTH];
    static char dbg_mc_current_prev_buf[UI_SUBJECT_STRING_LENGTH];
    lv_subject_init_string(&dbg_mc_current,
                           dbg_mc_current_buf,
                           dbg_mc_current_prev_buf,
                           UI_SUBJECT_STRING_LENGTH,
                           "--"
                          );
    static char dbg_mc_direction_buf[UI_SUBJECT_STRING_LENGTH];
    static char dbg_mc_direction_prev_buf[UI_SUBJECT_STRING_LENGTH];
    lv_subject_init_string(&dbg_mc_direction,
                           dbg_mc_direction_buf,
                           dbg_mc_direction_prev_buf,
                           UI_SUBJECT_STRING_LENGTH,
                           "--"
                          );
    static char dbg_motor_current_buf[UI_SUBJECT_STRING_LENGTH];
    static char dbg_motor_current_prev_buf[UI_SUBJECT_STRING_LENGTH];
    lv_subject_init_string(&dbg_motor_current,
                           dbg_motor_current_buf,
                           dbg_motor_current_prev_buf,
                           UI_SUBJECT_STRING_LENGTH,
                           "--"
                          );
    static char dbg_fet_temp_buf[UI_SUBJECT_STRING_LENGTH];
    static char dbg_fet_temp_prev_buf[UI_SUBJECT_STRING_LENGTH];
    lv_subject_init_string(&dbg_fet_temp,
                           dbg_fet_temp_buf,
                           dbg_fet_temp_prev_buf,
                           UI_SUBJECT_STRING_LENGTH,
                           "--"
                          );
    static char dbg_pwm_duty_buf[UI_SUBJECT_STRING_LENGTH];
    static char dbg_pwm_duty_prev_buf[UI_SUBJECT_STRING_LENGTH];
    lv_subject_init_string(&dbg_pwm_duty,
                           dbg_pwm_duty_buf,
                           dbg_pwm_duty_prev_buf,
                           UI_SUBJECT_STRING_LENGTH,
                           "--"
                          );
    static char dbg_lead_angle_buf[UI_SUBJECT_STRING_LENGTH];
    static char dbg_lead_angle_prev_buf[UI_SUBJECT_STRING_LENGTH];
    lv_subject_init_string(&dbg_lead_angle,
                           dbg_lead_angle_buf,
                           dbg_lead_angle_prev_buf,
                           UI_SUBJECT_STRING_LENGTH,
                           "--"
                          );
    static char dbg_motor_error_buf[UI_SUBJECT_STRING_LENGTH];
    static char dbg_motor_error_prev_buf[UI_SUBJECT_STRING_LENGTH];
    lv_subject_init_string(&dbg_motor_error,
                           dbg_motor_error_buf,
                           dbg_motor_error_prev_buf,
                           UI_SUBJECT_STRING_LENGTH,
                           "--"
                          );
    static char dbg_pack_voltage_buf[UI_SUBJECT_STRING_LENGTH];
    static char dbg_pack_voltage_prev_buf[UI_SUBJECT_STRING_LENGTH];
    lv_subject_init_string(&dbg_pack_voltage,
                           dbg_pack_voltage_buf,
                           dbg_pack_voltage_prev_buf,
                           UI_SUBJECT_STRING_LENGTH,
                           "--"
                          );
    static char dbg_pack_current_buf[UI_SUBJECT_STRING_LENGTH];
    static char dbg_pack_current_prev_buf[UI_SUBJECT_STRING_LENGTH];
    lv_subject_init_string(&dbg_pack_current,
                           dbg_pack_current_buf,
                           dbg_pack_current_prev_buf,
                           UI_SUBJECT_STRING_LENGTH,
                           "--"
                          );
    static char dbg_soc_buf[UI_SUBJECT_STRING_LENGTH];
    static char dbg_soc_prev_buf[UI_SUBJECT_STRING_LENGTH];
    lv_subject_init_string(&dbg_soc,
                           dbg_soc_buf,
                           dbg_soc_prev_buf,
                           UI_SUBJECT_STRING_LENGTH,
                           "--"
                          );
    static char dbg_power_buf[UI_SUBJECT_STRING_LENGTH];
    static char dbg_power_prev_buf[UI_SUBJECT_STRING_LENGTH];
    lv_subject_init_string(&dbg_power,
                           dbg_power_buf,
                           dbg_power_prev_buf,
                           UI_SUBJECT_STRING_LENGTH,
                           "--"
                          );
    static char dbg_discharge_relay_buf[UI_SUBJECT_STRING_LENGTH];
    static char dbg_discharge_relay_prev_buf[UI_SUBJECT_STRING_LENGTH];
    lv_subject_init_string(&dbg_discharge_relay,
                           dbg_discharge_relay_buf,
                           dbg_discharge_relay_prev_buf,
                           UI_SUBJECT_STRING_LENGTH,
                           "--"
                          );
    static char dbg_charge_relay_buf[UI_SUBJECT_STRING_LENGTH];
    static char dbg_charge_relay_prev_buf[UI_SUBJECT_STRING_LENGTH];
    lv_subject_init_string(&dbg_charge_relay,
                           dbg_charge_relay_buf,
                           dbg_charge_relay_prev_buf,
                           UI_SUBJECT_STRING_LENGTH,
                           "--"
                          );
    static char dbg_charger_safety_buf[UI_SUBJECT_STRING_LENGTH];
    static char dbg_charger_safety_prev_buf[UI_SUBJECT_STRING_LENGTH];
    lv_subject_init_string(&dbg_charger_safety,
                           dbg_charger_safety_buf,
                           dbg_charger_safety_prev_buf,
                           UI_SUBJECT_STRING_LENGTH,
                           "--"
                          );
    static char dbg_charge_signal_buf[UI_SUBJECT_STRING_LENGTH];
    static char dbg_charge_signal_prev_buf[UI_SUBJECT_STRING_LENGTH];
    lv_subject_init_string(&dbg_charge_signal,
                           dbg_charge_signal_buf,
                           dbg_charge_signal_prev_buf,
                           UI_SUBJECT_STRING_LENGTH,
                           "--"
                          );
    static char dbg_balancing_buf[UI_SUBJECT_STRING_LENGTH];
    static char dbg_balancing_prev_buf[UI_SUBJECT_STRING_LENGTH];
    lv_subject_init_string(&dbg_balancing,
                           dbg_balancing_buf,
                           dbg_balancing_prev_buf,
                           UI_SUBJECT_STRING_LENGTH,
                           "--"
                          );
    static char dbg_aux_buf[UI_SUBJECT_STRING_LENGTH];
    static char dbg_aux_prev_buf[UI_SUBJECT_STRING_LENGTH];
    lv_subject_init_string(&dbg_aux,
                           dbg_aux_buf,
                           dbg_aux_prev_buf,
                           UI_SUBJECT_STRING_LENGTH,
                           "--"
                          );
    static char dbg_bps_error_buf[UI_SUBJECT_STRING_LENGTH];
    static char dbg_bps_error_prev_buf[UI_SUBJECT_STRING_LENGTH];
    lv_subject_init_string(&dbg_bps_error,
                           dbg_bps_error_buf,
                           dbg_bps_error_prev_buf,
                           UI_SUBJECT_STRING_LENGTH,
                           "--"
                          );
    static char dbg_throttle_pedal_buf[UI_SUBJECT_STRING_LENGTH];
    static char dbg_throttle_pedal_prev_buf[UI_SUBJECT_STRING_LENGTH];
    lv_subject_init_string(&dbg_throttle_pedal,
                           dbg_throttle_pedal_buf,
                           dbg_throttle_pedal_prev_buf,
                           UI_SUBJECT_STRING_LENGTH,
                           "--"
                          );
    static char dbg_brake_pedal_buf[UI_SUBJECT_STRING_LENGTH];
    static char dbg_brake_pedal_prev_buf[UI_SUBJECT_STRING_LENGTH];
    lv_subject_init_string(&dbg_brake_pedal,
                           dbg_brake_pedal_buf,
                           dbg_brake_pedal_prev_buf,
                           UI_SUBJECT_STRING_LENGTH,
                           "--"
                          );
    static char dbg_throttle_buf[UI_SUBJECT_STRING_LENGTH];
    static char dbg_throttle_prev_buf[UI_SUBJECT_STRING_LENGTH];
    lv_subject_init_string(&dbg_throttle,
                           dbg_throttle_buf,
                           dbg_throttle_prev_buf,
                           UI_SUBJECT_STRING_LENGTH,
                           "--"
                          );
    static char dbg_regen_brake_buf[UI_SUBJECT_STRING_LENGTH];
    static char dbg_regen_brake_prev_buf[UI_SUBJECT_STRING_LENGTH];
    lv_subject_init_string(&dbg_regen_brake,
                           dbg_regen_brake_buf,
                           dbg_regen_brake_prev_buf,
                           UI_SUBJECT_STRING_LENGTH,
                           "--"
                          );
    static char dbg_cruise_speed_buf[UI_SUBJECT_STRING_LENGTH];
    static char dbg_cruise_speed_prev_buf[UI_SUBJECT_STRING_LENGTH];
    lv_subject_init_string(&dbg_cruise_speed,
                           dbg_cruise_speed_buf,
                           dbg_cruise_speed_prev_buf,
                           UI_SUBJECT_STRING_LENGTH,
                           "--"
                          );
    static char dbg_drive_mode_buf[UI_SUBJECT_STRING_LENGTH];
    static char dbg_drive_mode_prev_buf[UI_SUBJECT_STRING_LENGTH];
    lv_subject_init_string(&dbg_drive_mode,
                           dbg_drive_mode_buf,
                           dbg_drive_mode_prev_buf,
                           UI_SUBJECT_STRING_LENGTH,
                           "--"
                          );
    static char dbg_status_buf[UI_SUBJECT_STRING_LENGTH];
    static char dbg_status_prev_buf[UI_SUBJECT_STRING_LENGTH];
    lv_subject_init_string(&dbg_status,
                           dbg_status_buf,
                           dbg_status_prev_buf,
                           UI_SUBJECT_STRING_LENGTH,
                           "NO DATA"
                          );
    static char dbg_uptime_buf[UI_SUBJECT_STRING_LENGTH];
    static char dbg_uptime_prev_buf[UI_SUBJECT_STRING_LENGTH];
    lv_subject_init_string(&dbg_uptime,
                           dbg_uptime_buf,
                           dbg_uptime_prev_buf,
                           UI_SUBJECT_STRING_LENGTH,
                           "UPTIME 0:00:00"
                          );
    static char dbg_fault_count_buf[UI_SUBJECT_STRING_LENGTH];
    static char dbg_fault_count_prev_buf[UI_SUBJECT_STRING_LENGTH];
    lv_subject_init_string(&dbg_fault_count,
                           dbg_fault_count_buf,
                           dbg_fault_count_prev_buf,
                           UI_SUBJECT_STRING_LENGTH,
                           "0"
                          );
    static char dbg_fault_1_buf[UI_SUBJECT_STRING_LENGTH];
    static char dbg_fault_1_prev_buf[UI_SUBJECT_STRING_LENGTH];
    lv_subject_init_string(&dbg_fault_1,
                           dbg_fault_1_buf,
                           dbg_fault_1_prev_buf,
                           UI_SUBJECT_STRING_LENGTH,
                           "Waiting for CAN data"
                          );
    static char dbg_fault_2_buf[UI_SUBJECT_STRING_LENGTH];
    static char dbg_fault_2_prev_buf[UI_SUBJECT_STRING_LENGTH];
    lv_subject_init_string(&dbg_fault_2,
                           dbg_fault_2_buf,
                           dbg_fault_2_prev_buf,
                           UI_SUBJECT_STRING_LENGTH,
                           ""
                          );
    static char dbg_fault_3_buf[UI_SUBJECT_STRING_LENGTH];
    static char dbg_fault_3_prev_buf[UI_SUBJECT_STRING_LENGTH];
    lv_subject_init_string(&dbg_fault_3,
                           dbg_fault_3_buf,
                           dbg_fault_3_prev_buf,
                           UI_SUBJECT_STRING_LENGTH,
                           ""
                          );

    /*----------------
     * Translations
     *----------------*/

#if LV_USE_XML
    /* Register widgets */

    /* Register fonts */
    lv_xml_register_font(NULL, "montserrat_20", montserrat_20);
    lv_xml_register_font(NULL, "montserrat_28", montserrat_28);
    lv_xml_register_font(NULL, "montserrat_40", montserrat_40);
    lv_xml_register_font(NULL, "caption_16", caption_16);
    lv_xml_register_font(NULL, "value_28", value_28);
    lv_xml_register_font(NULL, "speed_160", speed_160);
    lv_xml_register_font(NULL, "arrows_56", arrows_56);

    /* Register subjects */
    lv_xml_register_subject(NULL, "drv_speed", &drv_speed);
    lv_xml_register_subject(NULL, "drv_power", &drv_power);
    lv_xml_register_subject(NULL, "drv_pack_voltage", &drv_pack_voltage);
    lv_xml_register_subject(NULL, "drv_pack_current", &drv_pack_current);
    lv_xml_register_subject(NULL, "drv_soc_text", &drv_soc_text);
    lv_xml_register_subject(NULL, "drv_soc", &drv_soc);
    lv_xml_register_subject(NULL, "drv_soc_low", &drv_soc_low);
    lv_xml_register_subject(NULL, "drv_accel", &drv_accel);
    lv_xml_register_subject(NULL, "drv_regen", &drv_regen);
    lv_xml_register_subject(NULL, "drv_brake", &drv_brake);
    lv_xml_register_subject(NULL, "drv_accel_text", &drv_accel_text);
    lv_xml_register_subject(NULL, "drv_regen_text", &drv_regen_text);
    lv_xml_register_subject(NULL, "drv_brake_text", &drv_brake_text);
    lv_xml_register_subject(NULL, "drv_cruise_text", &drv_cruise_text);
    lv_xml_register_subject(NULL, "motor_status", &motor_status);
    lv_xml_register_subject(NULL, "bps_status", &bps_status);
    lv_xml_register_subject(NULL, "no_status", &no_status);
    lv_xml_register_subject(NULL, "left_lit", &left_lit);
    lv_xml_register_subject(NULL, "right_lit", &right_lit);
    lv_xml_register_subject(NULL, "left_status", &left_status);
    lv_xml_register_subject(NULL, "right_status", &right_status);
    lv_xml_register_subject(NULL, "hazards_status", &hazards_status);
    lv_xml_register_subject(NULL, "cruise_status", &cruise_status);
    lv_xml_register_subject(NULL, "regen_status", &regen_status);
    lv_xml_register_subject(NULL, "low_power_status", &low_power_status);
    lv_xml_register_subject(NULL, "cruise_up_status", &cruise_up_status);
    lv_xml_register_subject(NULL, "cruise_down_status", &cruise_down_status);
    lv_xml_register_subject(NULL, "telemetry_status", &telemetry_status);
    lv_xml_register_subject(NULL, "fault_active", &fault_active);
    lv_xml_register_subject(NULL, "dbg_rpm", &dbg_rpm);
    lv_xml_register_subject(NULL, "dbg_speed", &dbg_speed);
    lv_xml_register_subject(NULL, "dbg_mc_voltage", &dbg_mc_voltage);
    lv_xml_register_subject(NULL, "dbg_mc_current", &dbg_mc_current);
    lv_xml_register_subject(NULL, "dbg_mc_direction", &dbg_mc_direction);
    lv_xml_register_subject(NULL, "dbg_motor_current", &dbg_motor_current);
    lv_xml_register_subject(NULL, "dbg_fet_temp", &dbg_fet_temp);
    lv_xml_register_subject(NULL, "dbg_pwm_duty", &dbg_pwm_duty);
    lv_xml_register_subject(NULL, "dbg_lead_angle", &dbg_lead_angle);
    lv_xml_register_subject(NULL, "dbg_motor_error", &dbg_motor_error);
    lv_xml_register_subject(NULL, "dbg_pack_voltage", &dbg_pack_voltage);
    lv_xml_register_subject(NULL, "dbg_pack_current", &dbg_pack_current);
    lv_xml_register_subject(NULL, "dbg_soc", &dbg_soc);
    lv_xml_register_subject(NULL, "dbg_power", &dbg_power);
    lv_xml_register_subject(NULL, "dbg_discharge_relay", &dbg_discharge_relay);
    lv_xml_register_subject(NULL, "dbg_charge_relay", &dbg_charge_relay);
    lv_xml_register_subject(NULL, "dbg_charger_safety", &dbg_charger_safety);
    lv_xml_register_subject(NULL, "dbg_charge_signal", &dbg_charge_signal);
    lv_xml_register_subject(NULL, "dbg_balancing", &dbg_balancing);
    lv_xml_register_subject(NULL, "dbg_aux", &dbg_aux);
    lv_xml_register_subject(NULL, "dbg_bps_error", &dbg_bps_error);
    lv_xml_register_subject(NULL, "dbg_throttle_pedal", &dbg_throttle_pedal);
    lv_xml_register_subject(NULL, "dbg_brake_pedal", &dbg_brake_pedal);
    lv_xml_register_subject(NULL, "dbg_throttle", &dbg_throttle);
    lv_xml_register_subject(NULL, "dbg_regen_brake", &dbg_regen_brake);
    lv_xml_register_subject(NULL, "dbg_cruise_speed", &dbg_cruise_speed);
    lv_xml_register_subject(NULL, "dbg_drive_mode", &dbg_drive_mode);
    lv_xml_register_subject(NULL, "dbg_status", &dbg_status);
    lv_xml_register_subject(NULL, "dbg_uptime", &dbg_uptime);
    lv_xml_register_subject(NULL, "dbg_fault_count", &dbg_fault_count);
    lv_xml_register_subject(NULL, "dbg_fault_1", &dbg_fault_1);
    lv_xml_register_subject(NULL, "dbg_fault_2", &dbg_fault_2);
    lv_xml_register_subject(NULL, "dbg_fault_3", &dbg_fault_3);

    /* Register callbacks */
#endif

    /* Register all the global assets so that they won't be created again when globals.xml is parsed.
     * While running in the editor skip this step to update the preview when the XML changes */
#if LV_USE_XML && !defined(LV_EDITOR_PREVIEW)
    /* Register images */
    lv_xml_register_image(NULL, "team_logo", team_logo);
#endif

#if LV_USE_XML == 0
    /*--------------------
     *  Permanent screens
     *-------------------*/
    /* If XML is enabled it's assumed that the permanent screens are created
     * manaully from XML using lv_xml_create() */
    /* To allow screens to reference each other, create them all before calling the sceen create functions */
    driver = lv_obj_create(NULL);
    telemetry_data = lv_obj_create(NULL);

    driver_create();
    telemetry_data_create();
#endif
}

/* Callbacks */

/**********************
 *   STATIC FUNCTIONS
 **********************/