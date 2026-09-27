#include "ui.h"
#include "ui_bindings.h"
#include "board_display.h"
#include "board_touch.h"
#include "rivanna_ui.h"
#include "screens/startup_gen.h"

static void finish_startup(lv_timer_t *timer)
{
    lv_screen_load_anim(driver, LV_SCREEN_LOAD_ANIM_FADE_IN, 250, 0, true);
    lv_timer_delete(timer);
}

static void refresh_ui(lv_timer_t *timer)
{
    (void)timer;
    ui_bindings_refresh();
}

void ui_init(void)
{
    lv_init();
    board_display_init();
    board_touch_init();

    rivanna_ui_init("");
    lv_obj_t *startup = startup_create();
    lv_screen_load(startup);
    lv_timer_create(finish_startup, 1500, NULL);
    lv_timer_create(refresh_ui, 100, NULL);
}

unsigned int ui_process(void)
{
    return lv_timer_handler();
}
