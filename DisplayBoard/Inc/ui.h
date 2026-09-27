#ifndef APP_UI_H
#define APP_UI_H

/* Call only from the one FreeRTOS GUI task. These functions own all LVGL calls. */
void ui_init(void);
unsigned int ui_process(void);

#endif
