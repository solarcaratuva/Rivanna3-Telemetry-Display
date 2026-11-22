################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/widgets/animimage/lv_animimage.c 

C_DEPS += \
./ThirdParty/lvgl/src/widgets/animimage/lv_animimage.d 

OBJS += \
./ThirdParty/lvgl/src/widgets/animimage/lv_animimage.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/widgets/animimage/%.o: ../ThirdParty/lvgl/src/widgets/animimage/%.c ThirdParty/lvgl/src/widgets/animimage/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-widgets-2f-animimage

clean-ThirdParty-2f-lvgl-2f-src-2f-widgets-2f-animimage:
	-$(RM) ./ThirdParty/lvgl/src/widgets/animimage/lv_animimage.d ./ThirdParty/lvgl/src/widgets/animimage/lv_animimage.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-widgets-2f-animimage

