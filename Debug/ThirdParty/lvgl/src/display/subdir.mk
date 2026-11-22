################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/display/lv_display.c 

C_DEPS += \
./ThirdParty/lvgl/src/display/lv_display.d 

OBJS += \
./ThirdParty/lvgl/src/display/lv_display.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/display/%.o: ../ThirdParty/lvgl/src/display/%.c ThirdParty/lvgl/src/display/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-display

clean-ThirdParty-2f-lvgl-2f-src-2f-display:
	-$(RM) ./ThirdParty/lvgl/src/display/lv_display.d ./ThirdParty/lvgl/src/display/lv_display.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-display

