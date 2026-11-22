################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/widgets/line/lv_example_line_points.c 

C_DEPS += \
./ThirdParty/lvgl/examples/widgets/line/lv_example_line_points.d 

OBJS += \
./ThirdParty/lvgl/examples/widgets/line/lv_example_line_points.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/widgets/line/%.o: ../ThirdParty/lvgl/examples/widgets/line/%.c ThirdParty/lvgl/examples/widgets/line/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-line

clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-line:
	-$(RM) ./ThirdParty/lvgl/examples/widgets/line/lv_example_line_points.d ./ThirdParty/lvgl/examples/widgets/line/lv_example_line_points.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-line

