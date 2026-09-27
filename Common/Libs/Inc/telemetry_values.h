#ifndef TELEMETRY_VALUES_H
#define TELEMETRY_VALUES_H

#include <stdbool.h>
#include "telemetry_types.h"

float telemetry_speed_mph(int rpm);
bool telemetry_motor_error(const ReceivedCanData_t *data);
bool telemetry_bps_error(const ReceivedCanData_t *data);

#endif
