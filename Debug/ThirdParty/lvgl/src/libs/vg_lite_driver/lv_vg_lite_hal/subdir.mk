################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/libs/vg_lite_driver/lv_vg_lite_hal/lv_vg_lite_hal.c \
../ThirdParty/lvgl/src/libs/vg_lite_driver/lv_vg_lite_hal/vg_lite_os.c 

C_DEPS += \
./ThirdParty/lvgl/src/libs/vg_lite_driver/lv_vg_lite_hal/lv_vg_lite_hal.d \
./ThirdParty/lvgl/src/libs/vg_lite_driver/lv_vg_lite_hal/vg_lite_os.d 

OBJS += \
./ThirdParty/lvgl/src/libs/vg_lite_driver/lv_vg_lite_hal/lv_vg_lite_hal.o \
./ThirdParty/lvgl/src/libs/vg_lite_driver/lv_vg_lite_hal/vg_lite_os.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/libs/vg_lite_driver/lv_vg_lite_hal/%.o: ../ThirdParty/lvgl/src/libs/vg_lite_driver/lv_vg_lite_hal/%.c ThirdParty/lvgl/src/libs/vg_lite_driver/lv_vg_lite_hal/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-libs-2f-vg_lite_driver-2f-lv_vg_lite_hal

clean-ThirdParty-2f-lvgl-2f-src-2f-libs-2f-vg_lite_driver-2f-lv_vg_lite_hal:
	-$(RM) ./ThirdParty/lvgl/src/libs/vg_lite_driver/lv_vg_lite_hal/lv_vg_lite_hal.d ./ThirdParty/lvgl/src/libs/vg_lite_driver/lv_vg_lite_hal/lv_vg_lite_hal.o ./ThirdParty/lvgl/src/libs/vg_lite_driver/lv_vg_lite_hal/vg_lite_os.d ./ThirdParty/lvgl/src/libs/vg_lite_driver/lv_vg_lite_hal/vg_lite_os.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-libs-2f-vg_lite_driver-2f-lv_vg_lite_hal

