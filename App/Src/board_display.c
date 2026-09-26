#include "board_display.h"
#include "lvgl.h"
#include "ltdc.h"
#include "main.h"

#define DISPLAY_WIDTH 800u
#define DISPLAY_HEIGHT 480u
#define FRAMEBUFFER_ADDR ((void *)0x20000000u)
#define FRAMEBUFFER_BYTES (DISPLAY_WIDTH * DISPLAY_HEIGHT * 3u)

static void flush(lv_display_t *display, const lv_area_t *area, uint8_t *pixels)
{
    (void)area;
    (void)pixels;
    /* DIRECT mode draws in the LTDC's existing scanout buffer. */
    __DSB();
    lv_display_flush_ready(display);
}

void board_display_init(void)
{
    lv_tick_set_cb(HAL_GetTick);
    lv_display_t *display = lv_display_create(DISPLAY_WIDTH, DISPLAY_HEIGHT);
    lv_display_set_color_format(display, LV_COLOR_FORMAT_RGB888);
    lv_display_set_buffers(display, FRAMEBUFFER_ADDR, NULL, FRAMEBUFFER_BYTES, LV_DISPLAY_RENDER_MODE_DIRECT);
    lv_display_set_flush_cb(display, flush);
}
