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
#include "rivanna3_s.h"
#include "data_queues.h"
#include "wheelboard_can.h"
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

// osThreadId_t sendTestDashBoardTaskHandle;
// const osThreadAttr_t sendTestDashBoardTask_attributes = {
//   .name = "sendTestDashBoardTask",
//   .priority = (osPriority_t) osPriorityHigh,
//   .stack_size = 128 * 4
// };

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

/* Definitions for TouchGFXTask */
osThreadId_t TouchGFXTaskHandle;
const osThreadAttr_t TouchGFXTask_attributes = {
  .name = "TouchGFXTask",
  .priority = (osPriority_t) osPriorityLow,
  .stack_size = 8192 * 4
};

/* Private function prototypes -----------------------------------------------*/
/* USER CODE BEGIN FunctionPrototypes */
void sendHeartBeatTask(void *argument);
void sendDashBoardTask(void *argument);
void receiveCanTask(void *argument);
/* USER CODE END FunctionPrototypes */

/* USER CODE BEGIN 5 */
void sendHeartBeatTask(void *argument)
{
  uint8_t TxData[8];

  const TickType_t xPeriod = pdMS_TO_TICKS(10);

  struct rivanna3_s_heartbeat_t heartbeat_can;
  heartbeat_can.source = 5;

  rivanna3_s_heartbeat_pack(TxData, &heartbeat_can, RIVANNA3_S_HEARTBEAT_LENGTH);// removed ->data from TxData

  TickType_t xLastWakeTime = xTaskGetTickCount();

  for (;;)
  {
      // Your periodic function call
      send_can_message(RIVANNA3_S_HEARTBEAT_FRAME_ID, RIVANNA3_S_HEARTBEAT_LENGTH, TxData);

      // Wait for the next cycle
      vTaskDelayUntil(&xLastWakeTime, xPeriod);
  }
}

void sendDashBoardTask(void *argument) {
  uint8_t TxData[8];
  const TickType_t xPeriod = pdMS_TO_TICKS(10);
  TickType_t xLastWakeTime = xTaskGetTickCount();

  struct rivanna3_s_dashboard_commands_t dashboard_can;

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

    // Toggle latching logic on rising edge
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

    // Always send the current latched states
    dashboard_can.left_turn_signal = rawLeft;
    dashboard_can.right_turn_signal = rawRight;
    dashboard_can.regen_en = rawRegen;
    dashboard_can.cruise_en = rawCruise;
    dashboard_can.hazards = rawHazard;
    dashboard_can.charging_mode_en = rawLowPower;

    // Update previous states
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

    // Pack and send
    rivanna3_s_dashboard_commands_pack(TxData, &dashboard_can, RIVANNA3_S_DASHBOARD_COMMANDS_LENGTH);
    send_can_message(RIVANNA3_S_DASHBOARD_COMMANDS_FRAME_ID, RIVANNA3_S_DASHBOARD_COMMANDS_LENGTH, TxData);

    vTaskDelayUntil(&xLastWakeTime, xPeriod);
  }
}

void receiveCanTask(void *argument) {
  const TickType_t xPeriod = pdMS_TO_TICKS(10);
  TickType_t xLastWakeTime = xTaskGetTickCount();

  for(;;) {
    uint32_t pending = HAL_FDCAN_GetRxFifoFillLevel(&hfdcan1, FDCAN_RX_FIFO0);
    uint32_t pendingSaved = pending;
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

void vApplicationMallocFailedHook(void)
{
   /* vApplicationMallocFailedHook() will only be called if
   configUSE_MALLOC_FAILED_HOOK is set to 1 in FreeRTOSConfig.h. It is a hook
   function that will get called if a call to pvPortMalloc() fails.
   pvPortMalloc() is called internally by the kernel whenever a task, queue,
   timer or semaphore is created. It is also called by various parts of the
   demo application. If heap_1.c or heap_2.c are used, then the size of the
   heap available to pvPortMalloc() is defined by configTOTAL_HEAP_SIZE in
   FreeRTOSConfig.h, and the xPortGetFreeHeapSize() API function can be used
   to query the size of free heap space that remains (although it does not
   provide information on how the remaining heap might be fragmented). */
}
/* USER CODE END 5 */

/* USER CODE BEGIN 2 */
void vApplicationIdleHook( void )
{
   /* vApplicationIdleHook() will only be called if configUSE_IDLE_HOOK is set
   to 1 in FreeRTOSConfig.h. It will be called on each iteration of the idle
   task. It is essential that code added to this hook function never attempts
   to block in any way (for example, call xQueueReceive() with a block time
   specified, or call vTaskDelay()). If the application makes use of the
   vTaskDelete() API function (as this demo application does) then it is also
   important that vApplicationIdleHook() is permitted to return to its calling
   function, because it is the responsibility of the idle task to clean up
   memory allocated by the kernel to any task that has since been deleted. */
}
/* USER CODE END 2 */

/* USER CODE BEGIN 4 */
void vApplicationStackOverflowHook(xTaskHandle xTask, char *pcTaskName)
{
   /* Run time stack overflow checking is performed if
   configCHECK_FOR_STACK_OVERFLOW is defined to 1 or 2. This hook function is
   called if a stack overflow is detected. */
}
/* USER CODE END 4 */

/**
  * @brief  FreeRTOS initialization
  * @param  None
  * @retval None
  */
void MX_FREERTOS_Init(void) {
  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* USER CODE BEGIN RTOS_MUTEX */
  /* add mutexes, ... */
  /* USER CODE END RTOS_MUTEX */

  /* USER CODE BEGIN RTOS_SEMAPHORES */
  /* add semaphores, ... */
  /* USER CODE END RTOS_SEMAPHORES */

  /* USER CODE BEGIN RTOS_TIMERS */
  /* start timers, add new ones, ... */
  /* USER CODE END RTOS_TIMERS */

  /* USER CODE BEGIN RTOS_QUEUES */
  /* add queues, ... */
  /* USER CODE END RTOS_QUEUES */
  /* creation of heartBeatTask */
  sendHeartbeatTaskHandle = osThreadNew(sendHeartBeatTask, NULL, &sendHeartbeatTask_attributes);

  /* creation of DashBoardCommands */
  sendDashBoardTaskHandle = osThreadNew(sendDashBoardTask, NULL, &sendDashBoardTask_attributes);

  /* creation of receiveCanTask */
  receiveCanTaskHandle = osThreadNew(receiveCanTask, NULL, &receiveCanTask_attributes);

  /* creation of TouchGFXTask */
  TouchGFXTaskHandle = osThreadNew(TouchGFX_Task, NULL, &TouchGFXTask_attributes);

  /* USER CODE BEGIN RTOS_THREADS */
  /* add threads, ... */
  /* USER CODE END RTOS_THREADS */

  /* USER CODE BEGIN RTOS_EVENTS */
  /* add events, ... */
  /* USER CODE END RTOS_EVENTS */

}

/* Private application code --------------------------------------------------*/
/* USER CODE BEGIN Application */

/* USER CODE END Application */
