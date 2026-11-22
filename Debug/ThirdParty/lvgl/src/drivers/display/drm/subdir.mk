################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/drivers/display/drm/lv_linux_drm.c \
../ThirdParty/lvgl/src/drivers/display/drm/lv_linux_drm_common.c \
../ThirdParty/lvgl/src/drivers/display/drm/lv_linux_drm_egl.c 

C_DEPS += \
./ThirdParty/lvgl/src/drivers/display/drm/lv_linux_drm.d \
./ThirdParty/lvgl/src/drivers/display/drm/lv_linux_drm_common.d \
./ThirdParty/lvgl/src/drivers/display/drm/lv_linux_drm_egl.d 

OBJS += \
./ThirdParty/lvgl/src/drivers/display/drm/lv_linux_drm.o \
./ThirdParty/lvgl/src/drivers/display/drm/lv_linux_drm_common.o \
./ThirdParty/lvgl/src/drivers/display/drm/lv_linux_drm_egl.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/drivers/display/drm/%.o: ../ThirdParty/lvgl/src/drivers/display/drm/%.c ThirdParty/lvgl/src/drivers/display/drm/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-drivers-2f-display-2f-drm

clean-ThirdParty-2f-lvgl-2f-src-2f-drivers-2f-display-2f-drm:
	-$(RM) ./ThirdParty/lvgl/src/drivers/display/drm/lv_linux_drm.d ./ThirdParty/lvgl/src/drivers/display/drm/lv_linux_drm.o ./ThirdParty/lvgl/src/drivers/display/drm/lv_linux_drm_common.d ./ThirdParty/lvgl/src/drivers/display/drm/lv_linux_drm_common.o ./ThirdParty/lvgl/src/drivers/display/drm/lv_linux_drm_egl.d ./ThirdParty/lvgl/src/drivers/display/drm/lv_linux_drm_egl.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-drivers-2f-display-2f-drm

