################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/widgets/spinner/lv_spinner.c 

C_DEPS += \
./ThirdParty/lvgl/src/widgets/spinner/lv_spinner.d 

OBJS += \
./ThirdParty/lvgl/src/widgets/spinner/lv_spinner.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/widgets/spinner/%.o: ../ThirdParty/lvgl/src/widgets/spinner/%.c ThirdParty/lvgl/src/widgets/spinner/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-widgets-2f-spinner

clean-ThirdParty-2f-lvgl-2f-src-2f-widgets-2f-spinner:
	-$(RM) ./ThirdParty/lvgl/src/widgets/spinner/lv_spinner.d ./ThirdParty/lvgl/src/widgets/spinner/lv_spinner.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-widgets-2f-spinner

