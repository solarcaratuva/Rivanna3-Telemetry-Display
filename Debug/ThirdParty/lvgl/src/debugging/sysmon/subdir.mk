################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/debugging/sysmon/lv_sysmon.c 

C_DEPS += \
./ThirdParty/lvgl/src/debugging/sysmon/lv_sysmon.d 

OBJS += \
./ThirdParty/lvgl/src/debugging/sysmon/lv_sysmon.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/debugging/sysmon/%.o: ../ThirdParty/lvgl/src/debugging/sysmon/%.c ThirdParty/lvgl/src/debugging/sysmon/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-debugging-2f-sysmon

clean-ThirdParty-2f-lvgl-2f-src-2f-debugging-2f-sysmon:
	-$(RM) ./ThirdParty/lvgl/src/debugging/sysmon/lv_sysmon.d ./ThirdParty/lvgl/src/debugging/sysmon/lv_sysmon.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-debugging-2f-sysmon

