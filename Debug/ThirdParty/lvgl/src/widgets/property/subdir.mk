################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/widgets/property/lv_animimage_properties.c \
../ThirdParty/lvgl/src/widgets/property/lv_arc_properties.c \
../ThirdParty/lvgl/src/widgets/property/lv_bar_properties.c \
../ThirdParty/lvgl/src/widgets/property/lv_buttonmatrix_properties.c \
../ThirdParty/lvgl/src/widgets/property/lv_chart_properties.c \
../ThirdParty/lvgl/src/widgets/property/lv_checkbox_properties.c \
../ThirdParty/lvgl/src/widgets/property/lv_dropdown_properties.c \
../ThirdParty/lvgl/src/widgets/property/lv_image_properties.c \
../ThirdParty/lvgl/src/widgets/property/lv_keyboard_properties.c \
../ThirdParty/lvgl/src/widgets/property/lv_label_properties.c \
../ThirdParty/lvgl/src/widgets/property/lv_led_properties.c \
../ThirdParty/lvgl/src/widgets/property/lv_line_properties.c \
../ThirdParty/lvgl/src/widgets/property/lv_menu_properties.c \
../ThirdParty/lvgl/src/widgets/property/lv_obj_properties.c \
../ThirdParty/lvgl/src/widgets/property/lv_roller_properties.c \
../ThirdParty/lvgl/src/widgets/property/lv_scale_properties.c \
../ThirdParty/lvgl/src/widgets/property/lv_slider_properties.c \
../ThirdParty/lvgl/src/widgets/property/lv_span_properties.c \
../ThirdParty/lvgl/src/widgets/property/lv_spinbox_properties.c \
../ThirdParty/lvgl/src/widgets/property/lv_spinner_properties.c \
../ThirdParty/lvgl/src/widgets/property/lv_style_properties.c \
../ThirdParty/lvgl/src/widgets/property/lv_switch_properties.c \
../ThirdParty/lvgl/src/widgets/property/lv_table_properties.c \
../ThirdParty/lvgl/src/widgets/property/lv_tabview_properties.c \
../ThirdParty/lvgl/src/widgets/property/lv_textarea_properties.c 

C_DEPS += \
./ThirdParty/lvgl/src/widgets/property/lv_animimage_properties.d \
./ThirdParty/lvgl/src/widgets/property/lv_arc_properties.d \
./ThirdParty/lvgl/src/widgets/property/lv_bar_properties.d \
./ThirdParty/lvgl/src/widgets/property/lv_buttonmatrix_properties.d \
./ThirdParty/lvgl/src/widgets/property/lv_chart_properties.d \
./ThirdParty/lvgl/src/widgets/property/lv_checkbox_properties.d \
./ThirdParty/lvgl/src/widgets/property/lv_dropdown_properties.d \
./ThirdParty/lvgl/src/widgets/property/lv_image_properties.d \
./ThirdParty/lvgl/src/widgets/property/lv_keyboard_properties.d \
./ThirdParty/lvgl/src/widgets/property/lv_label_properties.d \
./ThirdParty/lvgl/src/widgets/property/lv_led_properties.d \
./ThirdParty/lvgl/src/widgets/property/lv_line_properties.d \
./ThirdParty/lvgl/src/widgets/property/lv_menu_properties.d \
./ThirdParty/lvgl/src/widgets/property/lv_obj_properties.d \
./ThirdParty/lvgl/src/widgets/property/lv_roller_properties.d \
./ThirdParty/lvgl/src/widgets/property/lv_scale_properties.d \
./ThirdParty/lvgl/src/widgets/property/lv_slider_properties.d \
./ThirdParty/lvgl/src/widgets/property/lv_span_properties.d \
./ThirdParty/lvgl/src/widgets/property/lv_spinbox_properties.d \
./ThirdParty/lvgl/src/widgets/property/lv_spinner_properties.d \
./ThirdParty/lvgl/src/widgets/property/lv_style_properties.d \
./ThirdParty/lvgl/src/widgets/property/lv_switch_properties.d \
./ThirdParty/lvgl/src/widgets/property/lv_table_properties.d \
./ThirdParty/lvgl/src/widgets/property/lv_tabview_properties.d \
./ThirdParty/lvgl/src/widgets/property/lv_textarea_properties.d 

OBJS += \
./ThirdParty/lvgl/src/widgets/property/lv_animimage_properties.o \
./ThirdParty/lvgl/src/widgets/property/lv_arc_properties.o \
./ThirdParty/lvgl/src/widgets/property/lv_bar_properties.o \
./ThirdParty/lvgl/src/widgets/property/lv_buttonmatrix_properties.o \
./ThirdParty/lvgl/src/widgets/property/lv_chart_properties.o \
./ThirdParty/lvgl/src/widgets/property/lv_checkbox_properties.o \
./ThirdParty/lvgl/src/widgets/property/lv_dropdown_properties.o \
./ThirdParty/lvgl/src/widgets/property/lv_image_properties.o \
./ThirdParty/lvgl/src/widgets/property/lv_keyboard_properties.o \
./ThirdParty/lvgl/src/widgets/property/lv_label_properties.o \
./ThirdParty/lvgl/src/widgets/property/lv_led_properties.o \
./ThirdParty/lvgl/src/widgets/property/lv_line_properties.o \
./ThirdParty/lvgl/src/widgets/property/lv_menu_properties.o \
./ThirdParty/lvgl/src/widgets/property/lv_obj_properties.o \
./ThirdParty/lvgl/src/widgets/property/lv_roller_properties.o \
./ThirdParty/lvgl/src/widgets/property/lv_scale_properties.o \
./ThirdParty/lvgl/src/widgets/property/lv_slider_properties.o \
./ThirdParty/lvgl/src/widgets/property/lv_span_properties.o \
./ThirdParty/lvgl/src/widgets/property/lv_spinbox_properties.o \
./ThirdParty/lvgl/src/widgets/property/lv_spinner_properties.o \
./ThirdParty/lvgl/src/widgets/property/lv_style_properties.o \
./ThirdParty/lvgl/src/widgets/property/lv_switch_properties.o \
./ThirdParty/lvgl/src/widgets/property/lv_table_properties.o \
./ThirdParty/lvgl/src/widgets/property/lv_tabview_properties.o \
./ThirdParty/lvgl/src/widgets/property/lv_textarea_properties.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/widgets/property/%.o: ../ThirdParty/lvgl/src/widgets/property/%.c ThirdParty/lvgl/src/widgets/property/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-widgets-2f-property

clean-ThirdParty-2f-lvgl-2f-src-2f-widgets-2f-property:
	-$(RM) ./ThirdParty/lvgl/src/widgets/property/lv_animimage_properties.d ./ThirdParty/lvgl/src/widgets/property/lv_animimage_properties.o ./ThirdParty/lvgl/src/widgets/property/lv_arc_properties.d ./ThirdParty/lvgl/src/widgets/property/lv_arc_properties.o ./ThirdParty/lvgl/src/widgets/property/lv_bar_properties.d ./ThirdParty/lvgl/src/widgets/property/lv_bar_properties.o ./ThirdParty/lvgl/src/widgets/property/lv_buttonmatrix_properties.d ./ThirdParty/lvgl/src/widgets/property/lv_buttonmatrix_properties.o ./ThirdParty/lvgl/src/widgets/property/lv_chart_properties.d ./ThirdParty/lvgl/src/widgets/property/lv_chart_properties.o ./ThirdParty/lvgl/src/widgets/property/lv_checkbox_properties.d ./ThirdParty/lvgl/src/widgets/property/lv_checkbox_properties.o ./ThirdParty/lvgl/src/widgets/property/lv_dropdown_properties.d ./ThirdParty/lvgl/src/widgets/property/lv_dropdown_properties.o ./ThirdParty/lvgl/src/widgets/property/lv_image_properties.d ./ThirdParty/lvgl/src/widgets/property/lv_image_properties.o ./ThirdParty/lvgl/src/widgets/property/lv_keyboard_properties.d ./ThirdParty/lvgl/src/widgets/property/lv_keyboard_properties.o ./ThirdParty/lvgl/src/widgets/property/lv_label_properties.d ./ThirdParty/lvgl/src/widgets/property/lv_label_properties.o ./ThirdParty/lvgl/src/widgets/property/lv_led_properties.d ./ThirdParty/lvgl/src/widgets/property/lv_led_properties.o ./ThirdParty/lvgl/src/widgets/property/lv_line_properties.d ./ThirdParty/lvgl/src/widgets/property/lv_line_properties.o ./ThirdParty/lvgl/src/widgets/property/lv_menu_properties.d ./ThirdParty/lvgl/src/widgets/property/lv_menu_properties.o ./ThirdParty/lvgl/src/widgets/property/lv_obj_properties.d ./ThirdParty/lvgl/src/widgets/property/lv_obj_properties.o ./ThirdParty/lvgl/src/widgets/property/lv_roller_properties.d ./ThirdParty/lvgl/src/widgets/property/lv_roller_properties.o ./ThirdParty/lvgl/src/widgets/property/lv_scale_properties.d ./ThirdParty/lvgl/src/widgets/property/lv_scale_properties.o ./ThirdParty/lvgl/src/widgets/property/lv_slider_properties.d ./ThirdParty/lvgl/src/widgets/property/lv_slider_properties.o ./ThirdParty/lvgl/src/widgets/property/lv_span_properties.d ./ThirdParty/lvgl/src/widgets/property/lv_span_properties.o ./ThirdParty/lvgl/src/widgets/property/lv_spinbox_properties.d ./ThirdParty/lvgl/src/widgets/property/lv_spinbox_properties.o ./ThirdParty/lvgl/src/widgets/property/lv_spinner_properties.d ./ThirdParty/lvgl/src/widgets/property/lv_spinner_properties.o ./ThirdParty/lvgl/src/widgets/property/lv_style_properties.d ./ThirdParty/lvgl/src/widgets/property/lv_style_properties.o ./ThirdParty/lvgl/src/widgets/property/lv_switch_properties.d ./ThirdParty/lvgl/src/widgets/property/lv_switch_properties.o ./ThirdParty/lvgl/src/widgets/property/lv_table_properties.d ./ThirdParty/lvgl/src/widgets/property/lv_table_properties.o ./ThirdParty/lvgl/src/widgets/property/lv_tabview_properties.d ./ThirdParty/lvgl/src/widgets/property/lv_tabview_properties.o ./ThirdParty/lvgl/src/widgets/property/lv_textarea_properties.d ./ThirdParty/lvgl/src/widgets/property/lv_textarea_properties.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-widgets-2f-property

