#ifndef APP_PINMAP_H
#define APP_PINMAP_H

#include "main.h"

/* Board wiring in one place, following Rivanna3S's pindef/pinmap convention. */
typedef struct {
    GPIO_TypeDef *port;
    uint16_t pin;
} BoardPin;

#define PIN_RIGHT_TURN   ((BoardPin){USR_BTN_2_GPIO_Port, USR_BTN_2_Pin})
#define PIN_LEFT_TURN    ((BoardPin){USR_BTN_3_GPIO_Port, USR_BTN_3_Pin})
#define PIN_HAZARD       ((BoardPin){USR_BTN_4_GPIO_Port, USR_BTN_4_Pin})
#define PIN_CRUISE      ((BoardPin){USR_BTN_5_GPIO_Port, USR_BTN_5_Pin})
#define PIN_REGEN       ((BoardPin){USR_BTN_6_GPIO_Port, USR_BTN_6_Pin})
#define PIN_CRUISE_UP   ((BoardPin){USR_BTN_7_GPIO_Port, USR_BTN_7_Pin})
#define PIN_CRUISE_DOWN ((BoardPin){USR_BTN_8_GPIO_Port, USR_BTN_8_Pin})
#define PIN_LOW_POWER   ((BoardPin){USR_BTN_9_GPIO_Port, USR_BTN_9_Pin})
#define PIN_TOUCH_INT   ((BoardPin){CTP_INT_GPIO_Port, CTP_INT_Pin})
#define PIN_TOUCH_RESET ((BoardPin){CTP_RST_GPIO_Port, CTP_RST_Pin})

#endif
