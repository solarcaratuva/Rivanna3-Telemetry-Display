#include "FreeRTOS.h"
#include "fdcan.h"
#include "wheelboard_can.h"
#include <stdint.h>
#include <semphr.h>

#define USE_MOCK_CAN 1   // 1 = simulator, 0 = real values SINGLE SWITCH

#if USE_MOCK_CAN
#include "rivanna3.h"
#include <string.h>
#endif

FDCAN_TxHeaderTypeDef TxHeader;
SemaphoreHandle_t canTxMutex;
StaticSemaphore_t canTxMutexBuffer;

void FDCAN_Config(void)
{
#if USE_MOCK_CAN
  // Mock mode: no hardware init
  canTxMutex = xSemaphoreCreateMutexStatic(&canTxMutexBuffer);
  return;
#else
  FDCAN_FilterTypeDef sFilterConfig;

  /* Configure Rx filter */
  sFilterConfig.IdType          = FDCAN_STANDARD_ID;
  sFilterConfig.FilterIndex    = 0;
  sFilterConfig.FilterType     = FDCAN_FILTER_MASK;
  sFilterConfig.FilterConfig   = FDCAN_FILTER_TO_RXFIFO0;
  sFilterConfig.FilterID1      = 0x00000000;
  sFilterConfig.FilterID2      = 0x0;

  if (HAL_FDCAN_ConfigFilter(&hfdcan1, &sFilterConfig) != HAL_OK)
  {
    Error_Handler();
  }

  if (HAL_FDCAN_Start(&hfdcan1) != HAL_OK)
  {
    Error_Handler();
  }

  TxHeader.Identifier           = 0;
  TxHeader.IdType               = FDCAN_STANDARD_ID;
  TxHeader.TxFrameType          = FDCAN_DATA_FRAME;
  TxHeader.DataLength           = FDCAN_DLC_BYTES_8;
  TxHeader.ErrorStateIndicator  = FDCAN_ESI_ACTIVE;
  TxHeader.BitRateSwitch        = FDCAN_BRS_OFF;
  TxHeader.FDFormat             = FDCAN_CLASSIC_CAN;
  TxHeader.TxEventFifoControl   = FDCAN_NO_TX_EVENTS;
  TxHeader.MessageMarker        = 0;

  canTxMutex = xSemaphoreCreateMutexStatic(&canTxMutexBuffer);
#endif
}

void send_can_message(uint32_t id, uint32_t len, uint8_t *data)
{
#if USE_MOCK_CAN
  // Mock TX: intentionally do nothing
  (void)id;
  (void)len;
  (void)data;
  return;
#else
  xSemaphoreTake(canTxMutex, portMAX_DELAY);
  TxHeader.Identifier = id;
  TxHeader.DataLength = len;
  if (HAL_FDCAN_AddMessageToTxFifoQ(&hfdcan1, &TxHeader, data) != HAL_OK)
  {
    Error_Handler();
  }
  xSemaphoreGive(canTxMutex);
#endif
}

#if USE_MOCK_CAN
/* =========================================================
 * MOCK RX GENERATOR
 * Call this instead of HAL_FDCAN_GetRxMessage if desired
 * ========================================================= */
bool mock_can_receive(FDCAN_RxHeaderTypeDef *rxHeader, uint8_t *data)
{
  static uint32_t tick = 0;
  tick++;

  // Generate a frame every ~100 ms (assuming 10 ms task)
  if (tick % 10 != 0)
    return false;

  memset(data, 0, 8);

  struct rivanna3_heartbeat_t hb = {
    .from_telemetry_board = 1,
    .from_wheel_board     = 0,
    .from_power_board     = 0
  };

  rxHeader->Identifier = RIVANNA3_HEARTBEAT_FRAME_ID;
  rxHeader->IdType     = FDCAN_STANDARD_ID;
  rxHeader->DataLength = RIVANNA3_HEARTBEAT_LENGTH;

  rivanna3_heartbeat_pack(data, &hb, RIVANNA3_HEARTBEAT_LENGTH);
  return true;
}
#endif