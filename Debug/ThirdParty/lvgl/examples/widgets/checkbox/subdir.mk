################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/widgets/checkbox/lv_example_checkbox_bind_checked.c \
../ThirdParty/lvgl/examples/widgets/checkbox/lv_example_checkbox_event.c \
../ThirdParty/lvgl/examples/widgets/checkbox/lv_example_checkbox_states.c \
../ThirdParty/lvgl/examples/widgets/checkbox/lv_example_checkbox_styling.c \
../ThirdParty/lvgl/examples/widgets/checkbox/lv_example_checkbox_text.c 

C_DEPS += \
./ThirdParty/lvgl/examples/widgets/checkbox/lv_example_checkbox_bind_checked.d \
./ThirdParty/lvgl/examples/widgets/checkbox/lv_example_checkbox_event.d \
./ThirdParty/lvgl/examples/widgets/checkbox/lv_example_checkbox_states.d \
./ThirdParty/lvgl/examples/widgets/checkbox/lv_example_checkbox_styling.d \
./ThirdParty/lvgl/examples/widgets/checkbox/lv_example_checkbox_text.d 

OBJS += \
./ThirdParty/lvgl/examples/widgets/checkbox/lv_example_checkbox_bind_checked.o \
./ThirdParty/lvgl/examples/widgets/checkbox/lv_example_checkbox_event.o \
./ThirdParty/lvgl/examples/widgets/checkbox/lv_example_checkbox_states.o \
./ThirdParty/lvgl/examples/widgets/checkbox/lv_example_checkbox_styling.o \
./ThirdParty/lvgl/examples/widgets/checkbox/lv_example_checkbox_text.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/widgets/checkbox/%.o: ../ThirdParty/lvgl/examples/widgets/checkbox/%.c ThirdParty/lvgl/examples/widgets/checkbox/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-checkbox

clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-checkbox:
	-$(RM) ./ThirdParty/lvgl/examples/widgets/checkbox/lv_example_checkbox_bind_checked.d ./ThirdParty/lvgl/examples/widgets/checkbox/lv_example_checkbox_bind_checked.o ./ThirdParty/lvgl/examples/widgets/checkbox/lv_example_checkbox_event.d ./ThirdParty/lvgl/examples/widgets/checkbox/lv_example_checkbox_event.o ./ThirdParty/lvgl/examples/widgets/checkbox/lv_example_checkbox_states.d ./ThirdParty/lvgl/examples/widgets/checkbox/lv_example_checkbox_states.o ./ThirdParty/lvgl/examples/widgets/checkbox/lv_example_checkbox_styling.d ./ThirdParty/lvgl/examples/widgets/checkbox/lv_example_checkbox_styling.o ./ThirdParty/lvgl/examples/widgets/checkbox/lv_example_checkbox_text.d ./ThirdParty/lvgl/examples/widgets/checkbox/lv_example_checkbox_text.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-checkbox

