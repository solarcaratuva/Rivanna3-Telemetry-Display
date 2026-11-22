################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/themes/lv_theme.c 

C_DEPS += \
./ThirdParty/lvgl/src/themes/lv_theme.d 

OBJS += \
./ThirdParty/lvgl/src/themes/lv_theme.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/themes/%.o: ../ThirdParty/lvgl/src/themes/%.c ThirdParty/lvgl/src/themes/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-themes

clean-ThirdParty-2f-lvgl-2f-src-2f-themes:
	-$(RM) ./ThirdParty/lvgl/src/themes/lv_theme.d ./ThirdParty/lvgl/src/themes/lv_theme.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-themes

