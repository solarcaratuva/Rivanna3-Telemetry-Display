################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/widgets/spinbox/lv_example_spinbox_bind_value.c \
../ThirdParty/lvgl/examples/widgets/spinbox/lv_example_spinbox_format.c \
../ThirdParty/lvgl/examples/widgets/spinbox/lv_example_spinbox_rollover.c \
../ThirdParty/lvgl/examples/widgets/spinbox/lv_example_spinbox_styling.c \
../ThirdParty/lvgl/examples/widgets/spinbox/lv_example_spinbox_value.c \
../ThirdParty/lvgl/examples/widgets/spinbox/lv_example_spinbox_with_buttons.c 

C_DEPS += \
./ThirdParty/lvgl/examples/widgets/spinbox/lv_example_spinbox_bind_value.d \
./ThirdParty/lvgl/examples/widgets/spinbox/lv_example_spinbox_format.d \
./ThirdParty/lvgl/examples/widgets/spinbox/lv_example_spinbox_rollover.d \
./ThirdParty/lvgl/examples/widgets/spinbox/lv_example_spinbox_styling.d \
./ThirdParty/lvgl/examples/widgets/spinbox/lv_example_spinbox_value.d \
./ThirdParty/lvgl/examples/widgets/spinbox/lv_example_spinbox_with_buttons.d 

OBJS += \
./ThirdParty/lvgl/examples/widgets/spinbox/lv_example_spinbox_bind_value.o \
./ThirdParty/lvgl/examples/widgets/spinbox/lv_example_spinbox_format.o \
./ThirdParty/lvgl/examples/widgets/spinbox/lv_example_spinbox_rollover.o \
./ThirdParty/lvgl/examples/widgets/spinbox/lv_example_spinbox_styling.o \
./ThirdParty/lvgl/examples/widgets/spinbox/lv_example_spinbox_value.o \
./ThirdParty/lvgl/examples/widgets/spinbox/lv_example_spinbox_with_buttons.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/widgets/spinbox/%.o: ../ThirdParty/lvgl/examples/widgets/spinbox/%.c ThirdParty/lvgl/examples/widgets/spinbox/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-spinbox

clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-spinbox:
	-$(RM) ./ThirdParty/lvgl/examples/widgets/spinbox/lv_example_spinbox_bind_value.d ./ThirdParty/lvgl/examples/widgets/spinbox/lv_example_spinbox_bind_value.o ./ThirdParty/lvgl/examples/widgets/spinbox/lv_example_spinbox_format.d ./ThirdParty/lvgl/examples/widgets/spinbox/lv_example_spinbox_format.o ./ThirdParty/lvgl/examples/widgets/spinbox/lv_example_spinbox_rollover.d ./ThirdParty/lvgl/examples/widgets/spinbox/lv_example_spinbox_rollover.o ./ThirdParty/lvgl/examples/widgets/spinbox/lv_example_spinbox_styling.d ./ThirdParty/lvgl/examples/widgets/spinbox/lv_example_spinbox_styling.o ./ThirdParty/lvgl/examples/widgets/spinbox/lv_example_spinbox_value.d ./ThirdParty/lvgl/examples/widgets/spinbox/lv_example_spinbox_value.o ./ThirdParty/lvgl/examples/widgets/spinbox/lv_example_spinbox_with_buttons.d ./ThirdParty/lvgl/examples/widgets/spinbox/lv_example_spinbox_with_buttons.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-spinbox

