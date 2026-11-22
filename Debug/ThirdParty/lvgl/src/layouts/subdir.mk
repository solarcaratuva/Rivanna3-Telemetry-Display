################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/layouts/lv_layout.c 

C_DEPS += \
./ThirdParty/lvgl/src/layouts/lv_layout.d 

OBJS += \
./ThirdParty/lvgl/src/layouts/lv_layout.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/layouts/%.o: ../ThirdParty/lvgl/src/layouts/%.c ThirdParty/lvgl/src/layouts/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-layouts

clean-ThirdParty-2f-lvgl-2f-src-2f-layouts:
	-$(RM) ./ThirdParty/lvgl/src/layouts/lv_layout.d ./ThirdParty/lvgl/src/layouts/lv_layout.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-layouts

