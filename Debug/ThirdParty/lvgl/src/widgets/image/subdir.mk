################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/widgets/image/lv_image.c 

C_DEPS += \
./ThirdParty/lvgl/src/widgets/image/lv_image.d 

OBJS += \
./ThirdParty/lvgl/src/widgets/image/lv_image.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/widgets/image/%.o: ../ThirdParty/lvgl/src/widgets/image/%.c ThirdParty/lvgl/src/widgets/image/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-widgets-2f-image

clean-ThirdParty-2f-lvgl-2f-src-2f-widgets-2f-image:
	-$(RM) ./ThirdParty/lvgl/src/widgets/image/lv_image.d ./ThirdParty/lvgl/src/widgets/image/lv_image.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-widgets-2f-image

