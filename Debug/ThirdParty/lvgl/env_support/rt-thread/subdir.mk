################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/env_support/rt-thread/lv_rt_thread_port.c 

C_DEPS += \
./ThirdParty/lvgl/env_support/rt-thread/lv_rt_thread_port.d 

OBJS += \
./ThirdParty/lvgl/env_support/rt-thread/lv_rt_thread_port.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/env_support/rt-thread/%.o: ../ThirdParty/lvgl/env_support/rt-thread/%.c ThirdParty/lvgl/env_support/rt-thread/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-env_support-2f-rt-2d-thread

clean-ThirdParty-2f-lvgl-2f-env_support-2f-rt-2d-thread:
	-$(RM) ./ThirdParty/lvgl/env_support/rt-thread/lv_rt_thread_port.d ./ThirdParty/lvgl/env_support/rt-thread/lv_rt_thread_port.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-env_support-2f-rt-2d-thread

