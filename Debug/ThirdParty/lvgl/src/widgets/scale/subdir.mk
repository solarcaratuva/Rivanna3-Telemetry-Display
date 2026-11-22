################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/widgets/scale/lv_scale.c 

C_DEPS += \
./ThirdParty/lvgl/src/widgets/scale/lv_scale.d 

OBJS += \
./ThirdParty/lvgl/src/widgets/scale/lv_scale.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/widgets/scale/%.o: ../ThirdParty/lvgl/src/widgets/scale/%.c ThirdParty/lvgl/src/widgets/scale/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-widgets-2f-scale

clean-ThirdParty-2f-lvgl-2f-src-2f-widgets-2f-scale:
	-$(RM) ./ThirdParty/lvgl/src/widgets/scale/lv_scale.d ./ThirdParty/lvgl/src/widgets/scale/lv_scale.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-widgets-2f-scale

