#ifndef APP_UI_BINDINGS_H
#define APP_UI_BINDINGS_H

/* Called only by the LVGL task. Copies the latest display-ready values into
 * the subjects generated from LVGLPro/globals.xml. */
void ui_bindings_refresh(void);

#endif
