/**
 * @file startup_gen.c
 * @brief Template source file for LVGL objects
 */

/*********************
 *      INCLUDES
 *********************/

#include "startup_gen.h"
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

lv_obj_t * startup_create(void)
{
    LV_TRACE_OBJ_CREATE("begin");


    static bool style_inited = false;

    if (!style_inited) {

        style_inited = true;
    }

    lv_obj_t * lv_obj_0 = lv_obj_create(NULL);
    lv_obj_set_name_static(lv_obj_0, "startup_#");
    lv_obj_set_flag(lv_obj_0, LV_OBJ_FLAG_SCROLLABLE, false);

    lv_obj_add_style(lv_obj_0, &splash_screen, 0);
    lv_obj_t * lv_image_0 = lv_image_create(lv_obj_0);
    lv_image_set_src(lv_image_0, team_logo);
    lv_obj_set_align(lv_image_0, LV_ALIGN_CENTER);
    lv_obj_set_y(lv_image_0, -60);

    lv_obj_t * lv_spinner_0 = lv_spinner_create(lv_obj_0);
    lv_obj_set_align(lv_spinner_0, LV_ALIGN_CENTER);
    lv_obj_set_y(lv_spinner_0, 120);
    lv_obj_set_width(lv_spinner_0, 56);
    lv_obj_set_height(lv_spinner_0, 56);
    lv_spinner_set_anim_duration(lv_spinner_0, 1000);
    lv_spinner_set_arc_sweep(lv_spinner_0, 90);
    lv_obj_add_style(lv_spinner_0, &splash_arc_track, 0);
    lv_obj_add_style(lv_spinner_0, &splash_arc_ind, LV_PART_INDICATOR);

    lv_obj_t * lv_label_0 = lv_label_create(lv_obj_0);
    lv_obj_set_align(lv_label_0, LV_ALIGN_BOTTOM_MID);
    lv_obj_set_y(lv_label_0, -28);
    lv_label_set_text(lv_label_0, "SOLAR CAR TELEMETRY");
    lv_obj_add_style(lv_label_0, &splash_caption, 0);

    LV_TRACE_OBJ_CREATE("finished");

    return lv_obj_0;
}

/**********************
 *   STATIC FUNCTIONS
 **********************/

