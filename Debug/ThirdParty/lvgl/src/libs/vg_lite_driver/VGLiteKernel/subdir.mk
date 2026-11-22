################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/libs/vg_lite_driver/VGLiteKernel/vg_lite_kernel.c 

C_DEPS += \
./ThirdParty/lvgl/src/libs/vg_lite_driver/VGLiteKernel/vg_lite_kernel.d 

OBJS += \
./ThirdParty/lvgl/src/libs/vg_lite_driver/VGLiteKernel/vg_lite_kernel.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/libs/vg_lite_driver/VGLiteKernel/%.o: ../ThirdParty/lvgl/src/libs/vg_lite_driver/VGLiteKernel/%.c ThirdParty/lvgl/src/libs/vg_lite_driver/VGLiteKernel/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-libs-2f-vg_lite_driver-2f-VGLiteKernel

clean-ThirdParty-2f-lvgl-2f-src-2f-libs-2f-vg_lite_driver-2f-VGLiteKernel:
	-$(RM) ./ThirdParty/lvgl/src/libs/vg_lite_driver/VGLiteKernel/vg_lite_kernel.d ./ThirdParty/lvgl/src/libs/vg_lite_driver/VGLiteKernel/vg_lite_kernel.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-libs-2f-vg_lite_driver-2f-VGLiteKernel

