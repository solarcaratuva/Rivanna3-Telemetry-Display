################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/widgets/bar/lv_bar.c 

C_DEPS += \
./ThirdParty/lvgl/src/widgets/bar/lv_bar.d 

OBJS += \
./ThirdParty/lvgl/src/widgets/bar/lv_bar.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/widgets/bar/%.o: ../ThirdParty/lvgl/src/widgets/bar/%.c ThirdParty/lvgl/src/widgets/bar/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-widgets-2f-bar

clean-ThirdParty-2f-lvgl-2f-src-2f-widgets-2f-bar:
	-$(RM) ./ThirdParty/lvgl/src/widgets/bar/lv_bar.d ./ThirdParty/lvgl/src/widgets/bar/lv_bar.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-widgets-2f-bar

