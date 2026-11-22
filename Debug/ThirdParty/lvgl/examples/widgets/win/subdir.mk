################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/widgets/win/lv_example_win_toolbar.c 

C_DEPS += \
./ThirdParty/lvgl/examples/widgets/win/lv_example_win_toolbar.d 

OBJS += \
./ThirdParty/lvgl/examples/widgets/win/lv_example_win_toolbar.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/widgets/win/%.o: ../ThirdParty/lvgl/examples/widgets/win/%.c ThirdParty/lvgl/examples/widgets/win/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-win

clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-win:
	-$(RM) ./ThirdParty/lvgl/examples/widgets/win/lv_example_win_toolbar.d ./ThirdParty/lvgl/examples/widgets/win/lv_example_win_toolbar.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-win

