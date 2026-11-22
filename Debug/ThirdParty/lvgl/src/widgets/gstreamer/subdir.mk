################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/widgets/gstreamer/lv_gstreamer.c 

C_DEPS += \
./ThirdParty/lvgl/src/widgets/gstreamer/lv_gstreamer.d 

OBJS += \
./ThirdParty/lvgl/src/widgets/gstreamer/lv_gstreamer.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/widgets/gstreamer/%.o: ../ThirdParty/lvgl/src/widgets/gstreamer/%.c ThirdParty/lvgl/src/widgets/gstreamer/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-widgets-2f-gstreamer

clean-ThirdParty-2f-lvgl-2f-src-2f-widgets-2f-gstreamer:
	-$(RM) ./ThirdParty/lvgl/src/widgets/gstreamer/lv_gstreamer.d ./ThirdParty/lvgl/src/widgets/gstreamer/lv_gstreamer.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-widgets-2f-gstreamer

