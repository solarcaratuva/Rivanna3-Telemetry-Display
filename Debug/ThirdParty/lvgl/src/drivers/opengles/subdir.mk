################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/drivers/opengles/lv_opengles_debug.c \
../ThirdParty/lvgl/src/drivers/opengles/lv_opengles_driver.c \
../ThirdParty/lvgl/src/drivers/opengles/lv_opengles_egl.c \
../ThirdParty/lvgl/src/drivers/opengles/lv_opengles_glfw.c \
../ThirdParty/lvgl/src/drivers/opengles/lv_opengles_pbuffer.c \
../ThirdParty/lvgl/src/drivers/opengles/lv_opengles_texture.c 

C_DEPS += \
./ThirdParty/lvgl/src/drivers/opengles/lv_opengles_debug.d \
./ThirdParty/lvgl/src/drivers/opengles/lv_opengles_driver.d \
./ThirdParty/lvgl/src/drivers/opengles/lv_opengles_egl.d \
./ThirdParty/lvgl/src/drivers/opengles/lv_opengles_glfw.d \
./ThirdParty/lvgl/src/drivers/opengles/lv_opengles_pbuffer.d \
./ThirdParty/lvgl/src/drivers/opengles/lv_opengles_texture.d 

OBJS += \
./ThirdParty/lvgl/src/drivers/opengles/lv_opengles_debug.o \
./ThirdParty/lvgl/src/drivers/opengles/lv_opengles_driver.o \
./ThirdParty/lvgl/src/drivers/opengles/lv_opengles_egl.o \
./ThirdParty/lvgl/src/drivers/opengles/lv_opengles_glfw.o \
./ThirdParty/lvgl/src/drivers/opengles/lv_opengles_pbuffer.o \
./ThirdParty/lvgl/src/drivers/opengles/lv_opengles_texture.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/drivers/opengles/%.o: ../ThirdParty/lvgl/src/drivers/opengles/%.c ThirdParty/lvgl/src/drivers/opengles/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-drivers-2f-opengles

clean-ThirdParty-2f-lvgl-2f-src-2f-drivers-2f-opengles:
	-$(RM) ./ThirdParty/lvgl/src/drivers/opengles/lv_opengles_debug.d ./ThirdParty/lvgl/src/drivers/opengles/lv_opengles_debug.o ./ThirdParty/lvgl/src/drivers/opengles/lv_opengles_driver.d ./ThirdParty/lvgl/src/drivers/opengles/lv_opengles_driver.o ./ThirdParty/lvgl/src/drivers/opengles/lv_opengles_egl.d ./ThirdParty/lvgl/src/drivers/opengles/lv_opengles_egl.o ./ThirdParty/lvgl/src/drivers/opengles/lv_opengles_glfw.d ./ThirdParty/lvgl/src/drivers/opengles/lv_opengles_glfw.o ./ThirdParty/lvgl/src/drivers/opengles/lv_opengles_pbuffer.d ./ThirdParty/lvgl/src/drivers/opengles/lv_opengles_pbuffer.o ./ThirdParty/lvgl/src/drivers/opengles/lv_opengles_texture.d ./ThirdParty/lvgl/src/drivers/opengles/lv_opengles_texture.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-drivers-2f-opengles

