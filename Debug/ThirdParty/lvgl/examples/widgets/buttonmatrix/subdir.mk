################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/widgets/buttonmatrix/lv_example_buttonmatrix_button_ctrl.c \
../ThirdParty/lvgl/examples/widgets/buttonmatrix/lv_example_buttonmatrix_button_width.c \
../ThirdParty/lvgl/examples/widgets/buttonmatrix/lv_example_buttonmatrix_event.c \
../ThirdParty/lvgl/examples/widgets/buttonmatrix/lv_example_buttonmatrix_map.c \
../ThirdParty/lvgl/examples/widgets/buttonmatrix/lv_example_buttonmatrix_one_checked.c \
../ThirdParty/lvgl/examples/widgets/buttonmatrix/lv_example_buttonmatrix_popover.c \
../ThirdParty/lvgl/examples/widgets/buttonmatrix/lv_example_buttonmatrix_recolor.c \
../ThirdParty/lvgl/examples/widgets/buttonmatrix/lv_example_buttonmatrix_styling.c 

C_DEPS += \
./ThirdParty/lvgl/examples/widgets/buttonmatrix/lv_example_buttonmatrix_button_ctrl.d \
./ThirdParty/lvgl/examples/widgets/buttonmatrix/lv_example_buttonmatrix_button_width.d \
./ThirdParty/lvgl/examples/widgets/buttonmatrix/lv_example_buttonmatrix_event.d \
./ThirdParty/lvgl/examples/widgets/buttonmatrix/lv_example_buttonmatrix_map.d \
./ThirdParty/lvgl/examples/widgets/buttonmatrix/lv_example_buttonmatrix_one_checked.d \
./ThirdParty/lvgl/examples/widgets/buttonmatrix/lv_example_buttonmatrix_popover.d \
./ThirdParty/lvgl/examples/widgets/buttonmatrix/lv_example_buttonmatrix_recolor.d \
./ThirdParty/lvgl/examples/widgets/buttonmatrix/lv_example_buttonmatrix_styling.d 

OBJS += \
./ThirdParty/lvgl/examples/widgets/buttonmatrix/lv_example_buttonmatrix_button_ctrl.o \
./ThirdParty/lvgl/examples/widgets/buttonmatrix/lv_example_buttonmatrix_button_width.o \
./ThirdParty/lvgl/examples/widgets/buttonmatrix/lv_example_buttonmatrix_event.o \
./ThirdParty/lvgl/examples/widgets/buttonmatrix/lv_example_buttonmatrix_map.o \
./ThirdParty/lvgl/examples/widgets/buttonmatrix/lv_example_buttonmatrix_one_checked.o \
./ThirdParty/lvgl/examples/widgets/buttonmatrix/lv_example_buttonmatrix_popover.o \
./ThirdParty/lvgl/examples/widgets/buttonmatrix/lv_example_buttonmatrix_recolor.o \
./ThirdParty/lvgl/examples/widgets/buttonmatrix/lv_example_buttonmatrix_styling.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/widgets/buttonmatrix/%.o: ../ThirdParty/lvgl/examples/widgets/buttonmatrix/%.c ThirdParty/lvgl/examples/widgets/buttonmatrix/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-buttonmatrix

clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-buttonmatrix:
	-$(RM) ./ThirdParty/lvgl/examples/widgets/buttonmatrix/lv_example_buttonmatrix_button_ctrl.d ./ThirdParty/lvgl/examples/widgets/buttonmatrix/lv_example_buttonmatrix_button_ctrl.o ./ThirdParty/lvgl/examples/widgets/buttonmatrix/lv_example_buttonmatrix_button_width.d ./ThirdParty/lvgl/examples/widgets/buttonmatrix/lv_example_buttonmatrix_button_width.o ./ThirdParty/lvgl/examples/widgets/buttonmatrix/lv_example_buttonmatrix_event.d ./ThirdParty/lvgl/examples/widgets/buttonmatrix/lv_example_buttonmatrix_event.o ./ThirdParty/lvgl/examples/widgets/buttonmatrix/lv_example_buttonmatrix_map.d ./ThirdParty/lvgl/examples/widgets/buttonmatrix/lv_example_buttonmatrix_map.o ./ThirdParty/lvgl/examples/widgets/buttonmatrix/lv_example_buttonmatrix_one_checked.d ./ThirdParty/lvgl/examples/widgets/buttonmatrix/lv_example_buttonmatrix_one_checked.o ./ThirdParty/lvgl/examples/widgets/buttonmatrix/lv_example_buttonmatrix_popover.d ./ThirdParty/lvgl/examples/widgets/buttonmatrix/lv_example_buttonmatrix_popover.o ./ThirdParty/lvgl/examples/widgets/buttonmatrix/lv_example_buttonmatrix_recolor.d ./ThirdParty/lvgl/examples/widgets/buttonmatrix/lv_example_buttonmatrix_recolor.o ./ThirdParty/lvgl/examples/widgets/buttonmatrix/lv_example_buttonmatrix_styling.d ./ThirdParty/lvgl/examples/widgets/buttonmatrix/lv_example_buttonmatrix_styling.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-buttonmatrix

