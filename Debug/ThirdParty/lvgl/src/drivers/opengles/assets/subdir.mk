################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/drivers/opengles/assets/lv_opengles_shader.c 

C_DEPS += \
./ThirdParty/lvgl/src/drivers/opengles/assets/lv_opengles_shader.d 

OBJS += \
./ThirdParty/lvgl/src/drivers/opengles/assets/lv_opengles_shader.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/drivers/opengles/assets/%.o: ../ThirdParty/lvgl/src/drivers/opengles/assets/%.c ThirdParty/lvgl/src/drivers/opengles/assets/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-drivers-2f-opengles-2f-assets

clean-ThirdParty-2f-lvgl-2f-src-2f-drivers-2f-opengles-2f-assets:
	-$(RM) ./ThirdParty/lvgl/src/drivers/opengles/assets/lv_opengles_shader.d ./ThirdParty/lvgl/src/drivers/opengles/assets/lv_opengles_shader.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-drivers-2f-opengles-2f-assets

