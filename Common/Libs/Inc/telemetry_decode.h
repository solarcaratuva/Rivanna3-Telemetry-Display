#ifndef TELEMETRY_DECODE_H
#define TELEMETRY_DECODE_H

#include <stdint.h>
#include "telemetry_types.h"

void telemetry_decode_frame(ReceivedCanData_t *snapshot, uint32_t id, const uint8_t data[8]);

#endif
