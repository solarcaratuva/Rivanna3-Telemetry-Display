################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/drivers/sdl/lv_sdl_egl.c \
../ThirdParty/lvgl/src/drivers/sdl/lv_sdl_keyboard.c \
../ThirdParty/lvgl/src/drivers/sdl/lv_sdl_mouse.c \
../ThirdParty/lvgl/src/drivers/sdl/lv_sdl_mousewheel.c \
../ThirdParty/lvgl/src/drivers/sdl/lv_sdl_sw.c \
../ThirdParty/lvgl/src/drivers/sdl/lv_sdl_texture.c \
../ThirdParty/lvgl/src/drivers/sdl/lv_sdl_window.c 

C_DEPS += \
./ThirdParty/lvgl/src/drivers/sdl/lv_sdl_egl.d \
./ThirdParty/lvgl/src/drivers/sdl/lv_sdl_keyboard.d \
./ThirdParty/lvgl/src/drivers/sdl/lv_sdl_mouse.d \
./ThirdParty/lvgl/src/drivers/sdl/lv_sdl_mousewheel.d \
./ThirdParty/lvgl/src/drivers/sdl/lv_sdl_sw.d \
./ThirdParty/lvgl/src/drivers/sdl/lv_sdl_texture.d \
./ThirdParty/lvgl/src/drivers/sdl/lv_sdl_window.d 

OBJS += \
./ThirdParty/lvgl/src/drivers/sdl/lv_sdl_egl.o \
./ThirdParty/lvgl/src/drivers/sdl/lv_sdl_keyboard.o \
./ThirdParty/lvgl/src/drivers/sdl/lv_sdl_mouse.o \
./ThirdParty/lvgl/src/drivers/sdl/lv_sdl_mousewheel.o \
./ThirdParty/lvgl/src/drivers/sdl/lv_sdl_sw.o \
./ThirdParty/lvgl/src/drivers/sdl/lv_sdl_texture.o \
./ThirdParty/lvgl/src/drivers/sdl/lv_sdl_window.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/drivers/sdl/%.o: ../ThirdParty/lvgl/src/drivers/sdl/%.c ThirdParty/lvgl/src/drivers/sdl/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-drivers-2f-sdl

clean-ThirdParty-2f-lvgl-2f-src-2f-drivers-2f-sdl:
	-$(RM) ./ThirdParty/lvgl/src/drivers/sdl/lv_sdl_egl.d ./ThirdParty/lvgl/src/drivers/sdl/lv_sdl_egl.o ./ThirdParty/lvgl/src/drivers/sdl/lv_sdl_keyboard.d ./ThirdParty/lvgl/src/drivers/sdl/lv_sdl_keyboard.o ./ThirdParty/lvgl/src/drivers/sdl/lv_sdl_mouse.d ./ThirdParty/lvgl/src/drivers/sdl/lv_sdl_mouse.o ./ThirdParty/lvgl/src/drivers/sdl/lv_sdl_mousewheel.d ./ThirdParty/lvgl/src/drivers/sdl/lv_sdl_mousewheel.o ./ThirdParty/lvgl/src/drivers/sdl/lv_sdl_sw.d ./ThirdParty/lvgl/src/drivers/sdl/lv_sdl_sw.o ./ThirdParty/lvgl/src/drivers/sdl/lv_sdl_texture.d ./ThirdParty/lvgl/src/drivers/sdl/lv_sdl_texture.o ./ThirdParty/lvgl/src/drivers/sdl/lv_sdl_window.d ./ThirdParty/lvgl/src/drivers/sdl/lv_sdl_window.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-drivers-2f-sdl

