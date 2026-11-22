################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/widgets/spinner/lv_example_spinner_basic.c \
../ThirdParty/lvgl/examples/widgets/spinner/lv_example_spinner_styling.c 

C_DEPS += \
./ThirdParty/lvgl/examples/widgets/spinner/lv_example_spinner_basic.d \
./ThirdParty/lvgl/examples/widgets/spinner/lv_example_spinner_styling.d 

OBJS += \
./ThirdParty/lvgl/examples/widgets/spinner/lv_example_spinner_basic.o \
./ThirdParty/lvgl/examples/widgets/spinner/lv_example_spinner_styling.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/widgets/spinner/%.o: ../ThirdParty/lvgl/examples/widgets/spinner/%.c ThirdParty/lvgl/examples/widgets/spinner/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-spinner

clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-spinner:
	-$(RM) ./ThirdParty/lvgl/examples/widgets/spinner/lv_example_spinner_basic.d ./ThirdParty/lvgl/examples/widgets/spinner/lv_example_spinner_basic.o ./ThirdParty/lvgl/examples/widgets/spinner/lv_example_spinner_styling.d ./ThirdParty/lvgl/examples/widgets/spinner/lv_example_spinner_styling.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-spinner

