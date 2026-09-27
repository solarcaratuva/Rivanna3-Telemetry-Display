#include "board_buttons.h"
#include "pinmap.h"

static bool pressed(BoardPin pin)
{
    return HAL_GPIO_ReadPin(pin.port, pin.pin) == GPIO_PIN_RESET;
}

void board_buttons_read(DashboardButtons *buttons)
{
    if (!buttons) return;
    buttons->left_turn = pressed(PIN_LEFT_TURN);
    buttons->right_turn = pressed(PIN_RIGHT_TURN);
    buttons->hazard = pressed(PIN_HAZARD);
    buttons->cruise = pressed(PIN_CRUISE);
    buttons->regen = pressed(PIN_REGEN);
    buttons->cruise_up = pressed(PIN_CRUISE_UP);
    buttons->cruise_down = pressed(PIN_CRUISE_DOWN);
    buttons->low_power = pressed(PIN_LOW_POWER);
}
