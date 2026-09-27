#ifndef BOARD_BUTTONS_H
#define BOARD_BUTTONS_H

#include "dashboard_types.h"

/* Vehicle buttons are active low and are independent of the GUI library. */
void board_buttons_read(DashboardButtons *buttons);

#endif
