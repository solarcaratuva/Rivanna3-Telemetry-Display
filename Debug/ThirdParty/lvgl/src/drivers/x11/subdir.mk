################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/drivers/x11/lv_x11_display.c \
../ThirdParty/lvgl/src/drivers/x11/lv_x11_input.c 

C_DEPS += \
./ThirdParty/lvgl/src/drivers/x11/lv_x11_display.d \
./ThirdParty/lvgl/src/drivers/x11/lv_x11_input.d 

OBJS += \
./ThirdParty/lvgl/src/drivers/x11/lv_x11_display.o \
./ThirdParty/lvgl/src/drivers/x11/lv_x11_input.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/drivers/x11/%.o: ../ThirdParty/lvgl/src/drivers/x11/%.c ThirdParty/lvgl/src/drivers/x11/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-drivers-2f-x11

clean-ThirdParty-2f-lvgl-2f-src-2f-drivers-2f-x11:
	-$(RM) ./ThirdParty/lvgl/src/drivers/x11/lv_x11_display.d ./ThirdParty/lvgl/src/drivers/x11/lv_x11_display.o ./ThirdParty/lvgl/src/drivers/x11/lv_x11_input.d ./ThirdParty/lvgl/src/drivers/x11/lv_x11_input.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-drivers-2f-x11

