################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/drivers/display/ft81x/lv_ft81x.c 

C_DEPS += \
./ThirdParty/lvgl/src/drivers/display/ft81x/lv_ft81x.d 

OBJS += \
./ThirdParty/lvgl/src/drivers/display/ft81x/lv_ft81x.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/drivers/display/ft81x/%.o: ../ThirdParty/lvgl/src/drivers/display/ft81x/%.c ThirdParty/lvgl/src/drivers/display/ft81x/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-drivers-2f-display-2f-ft81x

clean-ThirdParty-2f-lvgl-2f-src-2f-drivers-2f-display-2f-ft81x:
	-$(RM) ./ThirdParty/lvgl/src/drivers/display/ft81x/lv_ft81x.d ./ThirdParty/lvgl/src/drivers/display/ft81x/lv_ft81x.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-drivers-2f-display-2f-ft81x

