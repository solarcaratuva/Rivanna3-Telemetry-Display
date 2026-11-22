################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/demos/lv_demos.c 

C_DEPS += \
./ThirdParty/lvgl/demos/lv_demos.d 

OBJS += \
./ThirdParty/lvgl/demos/lv_demos.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/demos/%.o: ../ThirdParty/lvgl/demos/%.c ThirdParty/lvgl/demos/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-demos

clean-ThirdParty-2f-lvgl-2f-demos:
	-$(RM) ./ThirdParty/lvgl/demos/lv_demos.d ./ThirdParty/lvgl/demos/lv_demos.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-demos

