#include "board_display.h"
#include "lvgl.h"
#include "ltdc.h"
#include "main.h"

/* Native panel scanout, as configured in the LTDC. */
#define PANEL_WIDTH 800u
#define PANEL_HEIGHT 480u
#define PANEL_BYTES_PER_PIXEL 3u
#define FRAMEBUFFER_ADDR ((uint8_t *)0x20000000u)

/* The panel is mounted in portrait, so LVGL renders a 480x800 UI and each
   flushed area is rotated into the landscape framebuffer. If the image comes
   out upside down, switch this to LV_DISPLAY_ROTATION_270. */
#define DISPLAY_ROTATION LV_DISPLAY_ROTATION_90

/* Partial render buffer in free FB_RAM, after the LVGL heap (LV_MEM_ADR). */
#define DRAW_BUF_ADDR ((void *)0x20139400u)
#define DRAW_BUF_BYTES (PANEL_WIDTH * PANEL_HEIGHT * PANEL_BYTES_PER_PIXEL / 4u)

static void flush(lv_display_t *display, const lv_area_t *area, uint8_t *pixels)
{
    lv_area_t rotated = *area;
    lv_display_rotate_area(display, &rotated);

    int32_t width = lv_area_get_width(area);
    int32_t height = lv_area_get_height(area);
    uint32_t src_stride = lv_draw_buf_width_to_stride(width, LV_COLOR_FORMAT_RGB888);
    uint32_t fb_stride = PANEL_WIDTH * PANEL_BYTES_PER_PIXEL;
    uint8_t *dest = FRAMEBUFFER_ADDR + rotated.y1 * fb_stride + rotated.x1 * PANEL_BYTES_PER_PIXEL;

    lv_draw_rotate(pixels, dest, width, height, src_stride, fb_stride,
                   lv_display_get_rotation(display), LV_COLOR_FORMAT_RGB888);
    __DSB();
    lv_display_flush_ready(display);
}

void board_display_init(void)
{
    lv_tick_set_cb(HAL_GetTick);
    lv_display_t *display = lv_display_create(PANEL_WIDTH, PANEL_HEIGHT);
    lv_display_set_color_format(display, LV_COLOR_FORMAT_RGB888);
    lv_display_set_rotation(display, DISPLAY_ROTATION);
    lv_display_set_buffers(display, DRAW_BUF_ADDR, NULL, DRAW_BUF_BYTES, LV_DISPLAY_RENDER_MODE_PARTIAL);
    lv_display_set_flush_cb(display, flush);
}
