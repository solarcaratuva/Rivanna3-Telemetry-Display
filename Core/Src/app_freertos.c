/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * File Name          : app_freertos.c
  * Description        : Code for freertos applications
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2024 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Includes ------------------------------------------------------------------*/
#include "app_freertos.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "rivanna3.h"
#include "data_queues.h"
#include "wheelboard_can.h"
#include <stdlib.h>   // For rand(), srand()
#include <time.h>     // For time()
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
#define DEBOUNCE_TICKS 3 // debounce = 3 * 100ms = 300ms
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
/* USER CODE BEGIN Variables */
ReceivedCanData_t receivedCanData;
FDCAN_RxHeaderTypeDef RxHeader;
uint8_t RxData[8];
/* USER CODE END Variables */

/* Definitions for defaultTask */
osThreadId_t sendHeartbeatTaskHandle;
const osThreadAttr_t sendHeartbeatTask_attributes = {
  .name = "sendHeartBeatTask",
  .priority = (osPriority_t) osPriorityHigh,
  .stack_size = 128 * 4
};

osThreadId_t sendDashBoardTaskHandle;
const osThreadAttr_t sendDashBoardTask_attributes = {
  .name = "sendDashBoardTask",
  .priority = (osPriority_t) osPriorityHigh,
  .stack_size = 128 * 4
};

osThreadId_t sendChargingModeTaskHandle;
const osThreadAttr_t sendChargingModeTask_attributes = {
  .name = "sendChargingMode",
  .priority = (osPriority_t) osPriorityHigh,
  .stack_size = 128 * 4
};

osThreadId_t receiveCanTaskHandle;
const osThreadAttr_t receiveCanTask_attributes = {
  .name = "receiveCanTask",
  .priority = (osPriority_t) osPriorityHigh1,
  .stack_size = 128 * 4
};

/* TouchGFX Task */
osThreadId_t TouchGFXTaskHandle;
const osThreadAttr_t TouchGFXTask_attributes = {
  .name = "TouchGFXTask",
  .priority = (osPriority_t) osPriorityLow,
  .stack_size = 8192 * 4
};

/* Mock CAN Task */
osThreadId_t mockCanTaskHandle;
const osThreadAttr_t mockCanTask_attributes = {
    .name = "mockCanTask",
    .priority = (osPriority_t) osPriorityHigh,
    .stack_size = 128 * 4
};

/* Private function prototypes -----------------------------------------------*/
/* USER CODE BEGIN FunctionPrototypes */
void sendHeartBeatTask(void *argument);
void sendDashBoardTask(void *argument);
void receiveCanTask(void *argument);
void mockCanTask(void *argument); // added
/* USER CODE END FunctionPrototypes */

/* USER CODE BEGIN 5 */
void sendHeartBeatTask(void *argument)
{
  uint8_t TxData[8];

  const TickType_t xPeriod = pdMS_TO_TICKS(10);

  struct rivanna3_heartbeat_t heartbeat_can;
  heartbeat_can.from_telemetry_board = 0; 
  heartbeat_can.from_wheel_board = 1;
  heartbeat_can.from_power_board = 0;

  rivanna3_heartbeat_pack(TxData, &heartbeat_can, RIVANNA3_HEARTBEAT_LENGTH);

  TickType_t xLastWakeTime = xTaskGetTickCount();

  for (;;)
  {
      send_can_message(RIVANNA3_HEARTBEAT_FRAME_ID, RIVANNA3_HEARTBEAT_LENGTH, TxData);
      vTaskDelayUntil(&xLastWakeTime, xPeriod);
  }
}

void sendDashBoardTask(void *argument) {
  uint8_t TxData[8];
  const TickType_t xPeriod = pdMS_TO_TICKS(10);
  TickType_t xLastWakeTime = xTaskGetTickCount();

  struct rivanna3_dashboard_commands_t dashboard_can;

  // Previous raw button states (for edge detection)
  static bool prevLeft = false;
  static bool prevRight = false;
  static bool prevLowPower = false;
  static bool prevRegen = false;
  static bool prevCruise = false;
  static bool prevHazard = false;
  static bool prevInc = false;
  static bool prevDec = false;

  // Latched states
  static bool latchedLeft = false;
  static bool latchedRight = false;
  static bool latchedLowPower = false;
  static bool latchedRegen = false;
  static bool latchedCruise = false;
  static bool latchedHazard = false;

  static int debounceLeft = 0;
  static int debounceRight = 0;
  static int debounceLowPower = 0;
  static int debounceRegen = 0;
  static int debounceCruise = 0;
  static int debounceHazard = 0;

  for (;;)
  {
    bool rawLeft  = HAL_GPIO_ReadPin(USR_BTN_3_GPIO_Port, USR_BTN_3_Pin) == GPIO_PIN_RESET;
    bool rawRight = HAL_GPIO_ReadPin(USR_BTN_2_GPIO_Port, USR_BTN_2_Pin) == GPIO_PIN_RESET;
    bool rawLowPower = HAL_GPIO_ReadPin(USR_BTN_9_GPIO_Port, USR_BTN_9_Pin) == GPIO_PIN_RESET;
    bool rawRegen    = HAL_GPIO_ReadPin(USR_BTN_6_GPIO_Port, USR_BTN_6_Pin) == GPIO_PIN_RESET;
    bool rawCruise   = HAL_GPIO_ReadPin(USR_BTN_5_GPIO_Port, USR_BTN_5_Pin) == GPIO_PIN_RESET;
    bool rawHazard   = HAL_GPIO_ReadPin(USR_BTN_4_GPIO_Port, USR_BTN_4_Pin) == GPIO_PIN_RESET;
    bool rawInc      = HAL_GPIO_ReadPin(USR_BTN_7_GPIO_Port, USR_BTN_7_Pin) == GPIO_PIN_RESET;
    bool rawDec      = HAL_GPIO_ReadPin(USR_BTN_8_GPIO_Port, USR_BTN_8_Pin) == GPIO_PIN_RESET;

    if (!prevLeft && rawLeft && debounceLeft == 0) {
        latchedLeft = !latchedLeft;
        debounceLeft = DEBOUNCE_TICKS;
    }
    if (!prevRight && rawRight && debounceRight == 0) {
        latchedRight = !latchedRight;
        debounceRight = DEBOUNCE_TICKS;
    }
    if (!prevLowPower && rawLowPower && debounceLowPower == 0) {
        latchedLowPower = !latchedLowPower;
        debounceLowPower = DEBOUNCE_TICKS;
    }
    if (!prevRegen && rawRegen && debounceRegen == 0) {
        latchedRegen = !latchedRegen;
        debounceRegen = DEBOUNCE_TICKS;
    }
    if (!prevCruise && rawCruise && debounceCruise == 0) {
        latchedCruise = !latchedCruise;
        debounceCruise = DEBOUNCE_TICKS;
    }
    if (!prevHazard && rawHazard && debounceHazard == 0) {
        latchedHazard = !latchedHazard;
        debounceHazard = DEBOUNCE_TICKS;
    }

    dashboard_can.cruise_inc = rawInc;
    dashboard_can.cruise_dec = rawDec;
    dashboard_can.left_turn_signal = rawLeft;
    dashboard_can.right_turn_signal = rawRight;
    dashboard_can.regen_en = rawRegen;
    dashboard_can.cruise_en = rawCruise;
    dashboard_can.hazards = rawHazard;

    prevLeft = rawLeft;
    prevRight = rawRight;
    prevLowPower = rawLowPower;
    prevRegen = rawRegen;
    prevCruise = rawCruise;
    prevHazard = rawHazard;
    prevInc = rawInc;
    prevDec = rawDec;

    if (debounceLeft > 0) debounceLeft--;
    if (debounceRight > 0) debounceRight--;
    if (debounceLowPower > 0) debounceLowPower--;
    if (debounceRegen > 0) debounceRegen--;
    if (debounceCruise > 0) debounceCruise--;
    if (debounceHazard > 0) debounceHazard--;

    rivanna3_dashboard_commands_pack(TxData, &dashboard_can, RIVANNA3_DASHBOARD_COMMANDS_LENGTH);
    send_can_message(RIVANNA3_DASHBOARD_COMMANDS_FRAME_ID, RIVANNA3_DASHBOARD_COMMANDS_LENGTH, TxData);

    vTaskDelayUntil(&xLastWakeTime, xPeriod);
  }
}

void sendChargingModeTask(void *argument)
{
  uint8_t TxData[8];
  const TickType_t xPeriod = pdMS_TO_TICKS(10);
  struct rivanna3_charging_mode_t chargingmode_can;
  TickType_t xLastWakeTime = xTaskGetTickCount();

  for (;;)
  {
    bool state = HAL_GPIO_ReadPin(USR_BTN_9_GPIO_Port, USR_BTN_9_Pin) == GPIO_PIN_RESET;
    chargingmode_can.charging_mode_enable = state;
    rivanna3_charging_mode_pack(TxData, &chargingmode_can, RIVANNA3_CHARGING_MODE_LENGTH);
    send_can_message(RIVANNA3_CHARGING_MODE_FRAME_ID, RIVANNA3_CHARGING_MODE_LENGTH, TxData);
    vTaskDelayUntil(&xLastWakeTime, xPeriod);
  }
}

void receiveCanTask(void *argument) {
  const TickType_t xPeriod = pdMS_TO_TICKS(10);
  TickType_t xLastWakeTime = xTaskGetTickCount();

  for(;;) {
    uint32_t pending = HAL_FDCAN_GetRxFifoFillLevel(&hfdcan1, FDCAN_RX_FIFO0);
    while(pending > 0) {
      if (HAL_FDCAN_GetRxMessage(&hfdcan1, FDCAN_RX_FIFO0, &RxHeader, RxData) == HAL_OK) {
        updateReceivedCanData(&receivedCanData, RxHeader.Identifier, RxData);
      }
      --pending;
    }
    xQueueOverwrite(canReceivedQueue, &receivedCanData);
    vTaskDelayUntil(&xLastWakeTime, xPeriod);
  }
}

/* Mock CAN task for testing TouchGFX without real CAN */
void mockCanTask(void *argument) {
    const TickType_t xPeriod = pdMS_TO_TICKS(10);
    TickType_t xLastWakeTime = xTaskGetTickCount();
    srand((unsigned int)time(NULL)); // seed random

    // Simulated vehicle parameters
    uint16_t rpm = 0;
    uint16_t bps_voltage = 3600;  // mV
    uint16_t bps_current = 0;     // mA
    uint8_t throttle = 0;         
    uint8_t brake = 0;

    int rpm_step = 20;
    int voltage_step = 2;
    int current_step = 5;
    int throttle_step = 2;
    int brake_step = 2;

    for (;;) {
        // Smoothly vary throttle and brake
        throttle += throttle_step;
        if (throttle >= 255 || throttle == 0) throttle_step = -throttle_step;

        brake += brake_step;
        if (brake >= 255 || brake == 0) brake_step = -brake_step;

        // RPM variation
        rpm += rpm_step;
        if (rpm >= 10000 || rpm == 0) rpm_step = -rpm_step;

        // BPS voltage variation
        bps_voltage += voltage_step;
        if (bps_voltage >= 4200 || bps_voltage <= 3000) voltage_step = -voltage_step;

        // BPS current variation
        bps_current += current_step;
        if (bps_current >= 2000 || bps_current == 0) current_step = -current_step;

        // Pack motor CAN frame (example ID: 0x100)
        uint8_t motorData[8];
        motorData[0] = (uint8_t)(rpm >> 8);;
        motorData[1] = (uint8_t)(rpm >> 8);;
        motorData[2] = (uint8_t)(rpm >> 8);
        motorData[3] = (uint8_t)(rpm & 0xFF);
        motorData[4] = (uint8_t)(bps_voltage >> 8);
        motorData[5] = (uint8_t)(bps_voltage & 0xFF);
        motorData[6] = (uint8_t)(bps_current >> 8);
        motorData[7] = (uint8_t)(bps_current & 0xFF);

        updateReceivedCanData(&receivedCanData, 0x100, motorData);

        // Randomized dashboard input signals (example ID: 0x200)
        uint8_t dashboardData[8];
        for (int i = 0; i < 8; i++) {
            dashboardData[i] = rand() % 2; // 0 or 1 for buttons/flags
        }
        updateReceivedCanData(&receivedCanData, 0x200, dashboardData);

        // Send updated mock data to queue
        xQueueOverwrite(canReceivedQueue, &receivedCanData);

        vTaskDelayUntil(&xLastWakeTime, xPeriod);
    }
}

/* USER CODE END 5 */

/* USER CODE BEGIN 2 */
void vApplicationIdleHook( void ) {}
void vApplicationStackOverflowHook(xTaskHandle xTask, char *pcTaskName) {}
void vApplicationMallocFailedHook(void) {}
/* USER CODE END 2 */

/**
  * @brief  FreeRTOS initialization
  * @param  None
  * @retval None
  */
void MX_FREERTOS_Init(void) {
  sendHeartbeatTaskHandle = osThreadNew(sendHeartBeatTask, NULL, &sendHeartbeatTask_attributes);
  sendDashBoardTaskHandle = osThreadNew(sendDashBoardTask, NULL, &sendDashBoardTask_attributes);
  sendChargingModeTaskHandle = osThreadNew(sendChargingModeTask, NULL, &sendChargingModeTask_attributes);

  // Use either real CAN or mock CAN
  // receiveCanTaskHandle = osThreadNew(receiveCanTask, NULL, &receiveCanTask_attributes);
  mockCanTaskHandle = osThreadNew(mockCanTask, NULL, &mockCanTask_attributes);

  TouchGFXTaskHandle = osThreadNew(TouchGFX_Task, NULL, &TouchGFXTask_attributes);
}