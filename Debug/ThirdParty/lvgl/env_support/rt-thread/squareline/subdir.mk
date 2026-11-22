################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/env_support/rt-thread/squareline/lv_ui_entry.c 

C_DEPS += \
./ThirdParty/lvgl/env_support/rt-thread/squareline/lv_ui_entry.d 

OBJS += \
./ThirdParty/lvgl/env_support/rt-thread/squareline/lv_ui_entry.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/env_support/rt-thread/squareline/%.o: ../ThirdParty/lvgl/env_support/rt-thread/squareline/%.c ThirdParty/lvgl/env_support/rt-thread/squareline/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-env_support-2f-rt-2d-thread-2f-squareline

clean-ThirdParty-2f-lvgl-2f-env_support-2f-rt-2d-thread-2f-squareline:
	-$(RM) ./ThirdParty/lvgl/env_support/rt-thread/squareline/lv_ui_entry.d ./ThirdParty/lvgl/env_support/rt-thread/squareline/lv_ui_entry.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-env_support-2f-rt-2d-thread-2f-squareline

