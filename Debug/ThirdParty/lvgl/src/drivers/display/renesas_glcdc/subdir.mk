################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/drivers/display/renesas_glcdc/lv_renesas_glcdc.c 

C_DEPS += \
./ThirdParty/lvgl/src/drivers/display/renesas_glcdc/lv_renesas_glcdc.d 

OBJS += \
./ThirdParty/lvgl/src/drivers/display/renesas_glcdc/lv_renesas_glcdc.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/drivers/display/renesas_glcdc/%.o: ../ThirdParty/lvgl/src/drivers/display/renesas_glcdc/%.c ThirdParty/lvgl/src/drivers/display/renesas_glcdc/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-drivers-2f-display-2f-renesas_glcdc

clean-ThirdParty-2f-lvgl-2f-src-2f-drivers-2f-display-2f-renesas_glcdc:
	-$(RM) ./ThirdParty/lvgl/src/drivers/display/renesas_glcdc/lv_renesas_glcdc.d ./ThirdParty/lvgl/src/drivers/display/renesas_glcdc/lv_renesas_glcdc.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-drivers-2f-display-2f-renesas_glcdc

