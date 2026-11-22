################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/widgets/animimg/lv_example_animimg_play.c 

C_DEPS += \
./ThirdParty/lvgl/examples/widgets/animimg/lv_example_animimg_play.d 

OBJS += \
./ThirdParty/lvgl/examples/widgets/animimg/lv_example_animimg_play.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/widgets/animimg/%.o: ../ThirdParty/lvgl/examples/widgets/animimg/%.c ThirdParty/lvgl/examples/widgets/animimg/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-animimg

clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-animimg:
	-$(RM) ./ThirdParty/lvgl/examples/widgets/animimg/lv_example_animimg_play.d ./ThirdParty/lvgl/examples/widgets/animimg/lv_example_animimg_play.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-animimg

