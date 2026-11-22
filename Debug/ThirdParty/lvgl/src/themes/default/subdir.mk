################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/themes/default/lv_theme_default.c 

C_DEPS += \
./ThirdParty/lvgl/src/themes/default/lv_theme_default.d 

OBJS += \
./ThirdParty/lvgl/src/themes/default/lv_theme_default.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/themes/default/%.o: ../ThirdParty/lvgl/src/themes/default/%.c ThirdParty/lvgl/src/themes/default/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-themes-2f-default

clean-ThirdParty-2f-lvgl-2f-src-2f-themes-2f-default:
	-$(RM) ./ThirdParty/lvgl/src/themes/default/lv_theme_default.d ./ThirdParty/lvgl/src/themes/default/lv_theme_default.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-themes-2f-default

