#ifndef DASHBOARD_TYPES_H
#define DASHBOARD_TYPES_H

#include <stdbool.h>

typedef struct {
    bool left_turn;
    bool right_turn;
    bool hazard;
    bool cruise;
    bool regen;
    bool cruise_up;
    bool cruise_down;
    bool low_power;
} DashboardButtons;

#endif
