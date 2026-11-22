################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/widgets/chart/lv_chart.c 

C_DEPS += \
./ThirdParty/lvgl/src/widgets/chart/lv_chart.d 

OBJS += \
./ThirdParty/lvgl/src/widgets/chart/lv_chart.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/widgets/chart/%.o: ../ThirdParty/lvgl/src/widgets/chart/%.c ThirdParty/lvgl/src/widgets/chart/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-widgets-2f-chart

clean-ThirdParty-2f-lvgl-2f-src-2f-widgets-2f-chart:
	-$(RM) ./ThirdParty/lvgl/src/widgets/chart/lv_chart.d ./ThirdParty/lvgl/src/widgets/chart/lv_chart.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-widgets-2f-chart

