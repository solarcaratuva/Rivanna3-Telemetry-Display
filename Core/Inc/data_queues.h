#ifndef DATA_QUEUES_H__
#define DATA_QUEUES_H__

#ifdef __cplusplus
extern "C" {
#endif

#include "FreeRTOS.h"
#include "queue.h"
#include "stdint.h"
#include "rivanna3_s.h"
#include "bps.h"
#include "motor_controller.h"

extern QueueHandle_t canReceivedQueue;

/**
 * Used to pass data from CAN to the display
 */
typedef struct {
     /**
      * Definition found in rivanna3_s.h
      */
     struct rivanna3_s_motor_commands_t motor_commands;

     /**
      * Definition found in bps.h
      */
     struct bps_bps_status_t bps_pack_information;
     struct bps_bps_error_t bps_error;

     /**
      * Definition found in motor_controller.h
      */
     struct motor_controller_motor_controller_power_status_t motor_controller_power_status;
     struct motor_controller_motor_controller_error_t motor_controller_error;

     struct rivanna3_s_pedal_status_t pedal_status;

     struct rivanna3_s_aux_battery_status_t  aux_battery_status;
    
} ReceivedCanData_t;

/**
 * Initializes the queues
 */
void setupDataQueues();

/**
 * Updates the shared CAN data struct with new data
 */
void updateReceivedCanData(ReceivedCanData_t *oldData, uint32_t Identifier, uint8_t *RxData);

#ifdef __cplusplus
}
#endif

#endif /* DATA_QUEUES_H__ */