################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/drivers/display/nxp_elcdif/lv_nxp_elcdif.c 

C_DEPS += \
./ThirdParty/lvgl/src/drivers/display/nxp_elcdif/lv_nxp_elcdif.d 

OBJS += \
./ThirdParty/lvgl/src/drivers/display/nxp_elcdif/lv_nxp_elcdif.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/drivers/display/nxp_elcdif/%.o: ../ThirdParty/lvgl/src/drivers/display/nxp_elcdif/%.c ThirdParty/lvgl/src/drivers/display/nxp_elcdif/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-drivers-2f-display-2f-nxp_elcdif

clean-ThirdParty-2f-lvgl-2f-src-2f-drivers-2f-display-2f-nxp_elcdif:
	-$(RM) ./ThirdParty/lvgl/src/drivers/display/nxp_elcdif/lv_nxp_elcdif.d ./ThirdParty/lvgl/src/drivers/display/nxp_elcdif/lv_nxp_elcdif.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-drivers-2f-display-2f-nxp_elcdif

