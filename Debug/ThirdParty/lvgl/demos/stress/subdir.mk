################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/demos/stress/lv_demo_stress.c 

C_DEPS += \
./ThirdParty/lvgl/demos/stress/lv_demo_stress.d 

OBJS += \
./ThirdParty/lvgl/demos/stress/lv_demo_stress.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/demos/stress/%.o: ../ThirdParty/lvgl/demos/stress/%.c ThirdParty/lvgl/demos/stress/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-demos-2f-stress

clean-ThirdParty-2f-lvgl-2f-demos-2f-stress:
	-$(RM) ./ThirdParty/lvgl/demos/stress/lv_demo_stress.d ./ThirdParty/lvgl/demos/stress/lv_demo_stress.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-demos-2f-stress

