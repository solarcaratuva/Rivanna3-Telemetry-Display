################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/widgets/tabview/lv_example_tabview_active_tab.c \
../ThirdParty/lvgl/examples/widgets/tabview/lv_example_tabview_basic.c \
../ThirdParty/lvgl/examples/widgets/tabview/lv_example_tabview_tab_bar_position.c \
../ThirdParty/lvgl/examples/widgets/tabview/lv_example_tabview_tab_bar_style.c \
../ThirdParty/lvgl/examples/widgets/tabview/lv_example_tabview_tab_button_content.c 

C_DEPS += \
./ThirdParty/lvgl/examples/widgets/tabview/lv_example_tabview_active_tab.d \
./ThirdParty/lvgl/examples/widgets/tabview/lv_example_tabview_basic.d \
./ThirdParty/lvgl/examples/widgets/tabview/lv_example_tabview_tab_bar_position.d \
./ThirdParty/lvgl/examples/widgets/tabview/lv_example_tabview_tab_bar_style.d \
./ThirdParty/lvgl/examples/widgets/tabview/lv_example_tabview_tab_button_content.d 

OBJS += \
./ThirdParty/lvgl/examples/widgets/tabview/lv_example_tabview_active_tab.o \
./ThirdParty/lvgl/examples/widgets/tabview/lv_example_tabview_basic.o \
./ThirdParty/lvgl/examples/widgets/tabview/lv_example_tabview_tab_bar_position.o \
./ThirdParty/lvgl/examples/widgets/tabview/lv_example_tabview_tab_bar_style.o \
./ThirdParty/lvgl/examples/widgets/tabview/lv_example_tabview_tab_button_content.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/widgets/tabview/%.o: ../ThirdParty/lvgl/examples/widgets/tabview/%.c ThirdParty/lvgl/examples/widgets/tabview/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-tabview

clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-tabview:
	-$(RM) ./ThirdParty/lvgl/examples/widgets/tabview/lv_example_tabview_active_tab.d ./ThirdParty/lvgl/examples/widgets/tabview/lv_example_tabview_active_tab.o ./ThirdParty/lvgl/examples/widgets/tabview/lv_example_tabview_basic.d ./ThirdParty/lvgl/examples/widgets/tabview/lv_example_tabview_basic.o ./ThirdParty/lvgl/examples/widgets/tabview/lv_example_tabview_tab_bar_position.d ./ThirdParty/lvgl/examples/widgets/tabview/lv_example_tabview_tab_bar_position.o ./ThirdParty/lvgl/examples/widgets/tabview/lv_example_tabview_tab_bar_style.d ./ThirdParty/lvgl/examples/widgets/tabview/lv_example_tabview_tab_bar_style.o ./ThirdParty/lvgl/examples/widgets/tabview/lv_example_tabview_tab_button_content.d ./ThirdParty/lvgl/examples/widgets/tabview/lv_example_tabview_tab_button_content.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-tabview

