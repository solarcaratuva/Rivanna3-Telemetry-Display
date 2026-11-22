################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/logging/lv_log.c 

C_DEPS += \
./ThirdParty/lvgl/src/logging/lv_log.d 

OBJS += \
./ThirdParty/lvgl/src/logging/lv_log.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/logging/%.o: ../ThirdParty/lvgl/src/logging/%.c ThirdParty/lvgl/src/logging/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-logging

clean-ThirdParty-2f-lvgl-2f-src-2f-logging:
	-$(RM) ./ThirdParty/lvgl/src/logging/lv_log.d ./ThirdParty/lvgl/src/logging/lv_log.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-logging

