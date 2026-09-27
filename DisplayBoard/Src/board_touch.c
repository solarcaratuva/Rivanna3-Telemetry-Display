#include "board_touch.h"
#include "pinmap.h"
#include "i2c.h"
#include "lvgl.h"

#define TOUCH_I2C_ADDRESS (0x41u << 1)

static volatile bool touch_irq;
static lv_point_t last_point;

static void touch_read(lv_indev_t *device, lv_indev_data_t *data)
{
    (void)device;
    data->point = last_point;
    data->state = LV_INDEV_STATE_RELEASED;

    /* The controller signals an update on a falling edge. Its INT line can
       also remain low while a finger is held. */
    if (!touch_irq && HAL_GPIO_ReadPin(PIN_TOUCH_INT.port, PIN_TOUCH_INT.pin) != GPIO_PIN_RESET) return;
    touch_irq = false;

    uint8_t rx[16] = {0};
    if (HAL_I2C_Master_Receive(&hi2c1, TOUCH_I2C_ADDRESS, rx, sizeof(rx), 10) != HAL_OK) return;
    if (rx[0] != 0x48) return;

    int32_t x = ((int32_t)(rx[3] & 0x0f) << 8) | rx[2];
    int32_t y = ((int32_t)(rx[5] & 0x0f) << 8) | rx[4];
    if (x >= 800 || y >= 480) return;
    last_point.x = x;
    last_point.y = y;
    data->point = last_point;
    data->state = LV_INDEV_STATE_PRESSED;
}

void board_touch_init(void)
{
    HAL_GPIO_WritePin(PIN_TOUCH_RESET.port, PIN_TOUCH_RESET.pin, GPIO_PIN_SET);
    touch_irq = false;
    lv_indev_t *device = lv_indev_create();
    lv_indev_set_type(device, LV_INDEV_TYPE_POINTER);
    lv_indev_set_read_cb(device, touch_read);
}

void HAL_GPIO_EXTI_Falling_Callback(uint16_t pin)
{
    if (pin == PIN_TOUCH_INT.pin) touch_irq = true;
}
