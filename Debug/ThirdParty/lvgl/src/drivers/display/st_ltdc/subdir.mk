################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/drivers/display/st_ltdc/lv_st_ltdc.c 

C_DEPS += \
./ThirdParty/lvgl/src/drivers/display/st_ltdc/lv_st_ltdc.d 

OBJS += \
./ThirdParty/lvgl/src/drivers/display/st_ltdc/lv_st_ltdc.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/drivers/display/st_ltdc/%.o: ../ThirdParty/lvgl/src/drivers/display/st_ltdc/%.c ThirdParty/lvgl/src/drivers/display/st_ltdc/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-drivers-2f-display-2f-st_ltdc

clean-ThirdParty-2f-lvgl-2f-src-2f-drivers-2f-display-2f-st_ltdc:
	-$(RM) ./ThirdParty/lvgl/src/drivers/display/st_ltdc/lv_st_ltdc.d ./ThirdParty/lvgl/src/drivers/display/st_ltdc/lv_st_ltdc.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-drivers-2f-display-2f-st_ltdc

