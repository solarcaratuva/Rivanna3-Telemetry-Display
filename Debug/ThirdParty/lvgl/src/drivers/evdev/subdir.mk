################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/drivers/evdev/lv_evdev.c 

C_DEPS += \
./ThirdParty/lvgl/src/drivers/evdev/lv_evdev.d 

OBJS += \
./ThirdParty/lvgl/src/drivers/evdev/lv_evdev.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/drivers/evdev/%.o: ../ThirdParty/lvgl/src/drivers/evdev/%.c ThirdParty/lvgl/src/drivers/evdev/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-drivers-2f-evdev

clean-ThirdParty-2f-lvgl-2f-src-2f-drivers-2f-evdev:
	-$(RM) ./ThirdParty/lvgl/src/drivers/evdev/lv_evdev.d ./ThirdParty/lvgl/src/drivers/evdev/lv_evdev.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-drivers-2f-evdev

