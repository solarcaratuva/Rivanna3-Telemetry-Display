#ifndef RTOS_TASKS_H
#define RTOS_TASKS_H

void heartbeat_task(void *argument);
void dashboard_command_task(void *argument);
void can_receive_task(void *argument);
void lvgl_task(void *argument);

#endif
