################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/drivers/draw/eve/lv_draw_eve_display.c 

C_DEPS += \
./ThirdParty/lvgl/src/drivers/draw/eve/lv_draw_eve_display.d 

OBJS += \
./ThirdParty/lvgl/src/drivers/draw/eve/lv_draw_eve_display.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/drivers/draw/eve/%.o: ../ThirdParty/lvgl/src/drivers/draw/eve/%.c ThirdParty/lvgl/src/drivers/draw/eve/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-drivers-2f-draw-2f-eve

clean-ThirdParty-2f-lvgl-2f-src-2f-drivers-2f-draw-2f-eve:
	-$(RM) ./ThirdParty/lvgl/src/drivers/draw/eve/lv_draw_eve_display.d ./ThirdParty/lvgl/src/drivers/draw/eve/lv_draw_eve_display.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-drivers-2f-draw-2f-eve

