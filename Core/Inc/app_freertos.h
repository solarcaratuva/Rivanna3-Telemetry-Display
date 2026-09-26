#ifndef APP_FREERTOS_H
#define APP_FREERTOS_H

#include "FreeRTOS.h"
#include "task.h"
#include "cmsis_os2.h"
#include "main.h"

void MX_FREERTOS_Init(void);
void vApplicationMallocFailedHook(void);
void vApplicationIdleHook(void);
void vApplicationStackOverflowHook(TaskHandle_t task, char *name);

#endif
