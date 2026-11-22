################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/libs/gstreamer/lv_example_gstreamer_1.c 

C_DEPS += \
./ThirdParty/lvgl/examples/libs/gstreamer/lv_example_gstreamer_1.d 

OBJS += \
./ThirdParty/lvgl/examples/libs/gstreamer/lv_example_gstreamer_1.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/libs/gstreamer/%.o: ../ThirdParty/lvgl/examples/libs/gstreamer/%.c ThirdParty/lvgl/examples/libs/gstreamer/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-libs-2f-gstreamer

clean-ThirdParty-2f-lvgl-2f-examples-2f-libs-2f-gstreamer:
	-$(RM) ./ThirdParty/lvgl/examples/libs/gstreamer/lv_example_gstreamer_1.d ./ThirdParty/lvgl/examples/libs/gstreamer/lv_example_gstreamer_1.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-libs-2f-gstreamer

