################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/drivers/windows/lv_windows_context.c \
../ThirdParty/lvgl/src/drivers/windows/lv_windows_display.c \
../ThirdParty/lvgl/src/drivers/windows/lv_windows_input.c 

C_DEPS += \
./ThirdParty/lvgl/src/drivers/windows/lv_windows_context.d \
./ThirdParty/lvgl/src/drivers/windows/lv_windows_display.d \
./ThirdParty/lvgl/src/drivers/windows/lv_windows_input.d 

OBJS += \
./ThirdParty/lvgl/src/drivers/windows/lv_windows_context.o \
./ThirdParty/lvgl/src/drivers/windows/lv_windows_display.o \
./ThirdParty/lvgl/src/drivers/windows/lv_windows_input.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/drivers/windows/%.o: ../ThirdParty/lvgl/src/drivers/windows/%.c ThirdParty/lvgl/src/drivers/windows/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-drivers-2f-windows

clean-ThirdParty-2f-lvgl-2f-src-2f-drivers-2f-windows:
	-$(RM) ./ThirdParty/lvgl/src/drivers/windows/lv_windows_context.d ./ThirdParty/lvgl/src/drivers/windows/lv_windows_context.o ./ThirdParty/lvgl/src/drivers/windows/lv_windows_display.d ./ThirdParty/lvgl/src/drivers/windows/lv_windows_display.o ./ThirdParty/lvgl/src/drivers/windows/lv_windows_input.d ./ThirdParty/lvgl/src/drivers/windows/lv_windows_input.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-drivers-2f-windows

