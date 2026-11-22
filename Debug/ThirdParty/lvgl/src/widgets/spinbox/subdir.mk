################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/widgets/spinbox/lv_spinbox.c 

C_DEPS += \
./ThirdParty/lvgl/src/widgets/spinbox/lv_spinbox.d 

OBJS += \
./ThirdParty/lvgl/src/widgets/spinbox/lv_spinbox.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/widgets/spinbox/%.o: ../ThirdParty/lvgl/src/widgets/spinbox/%.c ThirdParty/lvgl/src/widgets/spinbox/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-widgets-2f-spinbox

clean-ThirdParty-2f-lvgl-2f-src-2f-widgets-2f-spinbox:
	-$(RM) ./ThirdParty/lvgl/src/widgets/spinbox/lv_spinbox.d ./ThirdParty/lvgl/src/widgets/spinbox/lv_spinbox.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-widgets-2f-spinbox

