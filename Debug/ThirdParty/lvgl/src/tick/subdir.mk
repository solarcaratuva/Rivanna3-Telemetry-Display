################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/tick/lv_tick.c 

C_DEPS += \
./ThirdParty/lvgl/src/tick/lv_tick.d 

OBJS += \
./ThirdParty/lvgl/src/tick/lv_tick.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/tick/%.o: ../ThirdParty/lvgl/src/tick/%.c ThirdParty/lvgl/src/tick/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-tick

clean-ThirdParty-2f-lvgl-2f-src-2f-tick:
	-$(RM) ./ThirdParty/lvgl/src/tick/lv_tick.d ./ThirdParty/lvgl/src/tick/lv_tick.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-tick

