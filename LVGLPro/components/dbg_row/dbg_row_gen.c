/**
 * @file dbg_row_gen.c
 * @brief Template source file for LVGL objects
 */

/*********************
 *      INCLUDES
 *********************/

#include "dbg_row_gen.h"
#include "../../rivanna_ui.h"

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

lv_obj_t * dbg_row_create(lv_obj_t * parent, const char * caption, lv_subject_t * subject, lv_subject_t * alert_subject)
{
    LV_TRACE_OBJ_CREATE("begin");

    lv_obj_t * lv_obj_0 = lv_obj_create(parent);
    lv_obj_set_name_static(lv_obj_0, "dbg_row_#");
    lv_obj_set_width(lv_obj_0, 234);
    lv_obj_set_height(lv_obj_0, 22);
    lv_obj_set_flag(lv_obj_0, LV_OBJ_FLAG_SCROLLABLE, false);

    lv_obj_add_style(lv_obj_0, &dbg_row, 0);
    lv_obj_bind_style(lv_obj_0, &dbg_row_alert, 0, alert_subject, 1);
    lv_obj_t * lv_label_0 = lv_label_create(lv_obj_0);
    lv_obj_set_x(lv_label_0, 4);
    lv_obj_set_align(lv_label_0, LV_ALIGN_LEFT_MID);
    lv_label_set_text(lv_label_0, caption);
    lv_obj_add_style(lv_label_0, &dbg_caption, 0);

    lv_obj_t * lv_label_1 = lv_label_create(lv_obj_0);
    lv_obj_set_x(lv_label_1, -4);
    lv_obj_set_align(lv_label_1, LV_ALIGN_RIGHT_MID);
    lv_label_bind_text(lv_label_1, subject, NULL);
    lv_obj_add_style(lv_label_1, &dbg_value, 0);
    lv_obj_bind_style(lv_label_1, &dbg_value_alert, 0, alert_subject, 1);

    LV_TRACE_OBJ_CREATE("finished");

    return lv_obj_0;
}

/**********************
 *   STATIC FUNCTIONS
 **********************/

