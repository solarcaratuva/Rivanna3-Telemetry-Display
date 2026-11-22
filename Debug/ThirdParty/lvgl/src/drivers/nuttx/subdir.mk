################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/drivers/nuttx/lv_nuttx_cache.c \
../ThirdParty/lvgl/src/drivers/nuttx/lv_nuttx_entry.c \
../ThirdParty/lvgl/src/drivers/nuttx/lv_nuttx_fbdev.c \
../ThirdParty/lvgl/src/drivers/nuttx/lv_nuttx_image_cache.c \
../ThirdParty/lvgl/src/drivers/nuttx/lv_nuttx_lcd.c \
../ThirdParty/lvgl/src/drivers/nuttx/lv_nuttx_libuv.c \
../ThirdParty/lvgl/src/drivers/nuttx/lv_nuttx_mouse.c \
../ThirdParty/lvgl/src/drivers/nuttx/lv_nuttx_profiler.c \
../ThirdParty/lvgl/src/drivers/nuttx/lv_nuttx_touchscreen.c 

C_DEPS += \
./ThirdParty/lvgl/src/drivers/nuttx/lv_nuttx_cache.d \
./ThirdParty/lvgl/src/drivers/nuttx/lv_nuttx_entry.d \
./ThirdParty/lvgl/src/drivers/nuttx/lv_nuttx_fbdev.d \
./ThirdParty/lvgl/src/drivers/nuttx/lv_nuttx_image_cache.d \
./ThirdParty/lvgl/src/drivers/nuttx/lv_nuttx_lcd.d \
./ThirdParty/lvgl/src/drivers/nuttx/lv_nuttx_libuv.d \
./ThirdParty/lvgl/src/drivers/nuttx/lv_nuttx_mouse.d \
./ThirdParty/lvgl/src/drivers/nuttx/lv_nuttx_profiler.d \
./ThirdParty/lvgl/src/drivers/nuttx/lv_nuttx_touchscreen.d 

OBJS += \
./ThirdParty/lvgl/src/drivers/nuttx/lv_nuttx_cache.o \
./ThirdParty/lvgl/src/drivers/nuttx/lv_nuttx_entry.o \
./ThirdParty/lvgl/src/drivers/nuttx/lv_nuttx_fbdev.o \
./ThirdParty/lvgl/src/drivers/nuttx/lv_nuttx_image_cache.o \
./ThirdParty/lvgl/src/drivers/nuttx/lv_nuttx_lcd.o \
./ThirdParty/lvgl/src/drivers/nuttx/lv_nuttx_libuv.o \
./ThirdParty/lvgl/src/drivers/nuttx/lv_nuttx_mouse.o \
./ThirdParty/lvgl/src/drivers/nuttx/lv_nuttx_profiler.o \
./ThirdParty/lvgl/src/drivers/nuttx/lv_nuttx_touchscreen.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/drivers/nuttx/%.o: ../ThirdParty/lvgl/src/drivers/nuttx/%.c ThirdParty/lvgl/src/drivers/nuttx/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-drivers-2f-nuttx

clean-ThirdParty-2f-lvgl-2f-src-2f-drivers-2f-nuttx:
	-$(RM) ./ThirdParty/lvgl/src/drivers/nuttx/lv_nuttx_cache.d ./ThirdParty/lvgl/src/drivers/nuttx/lv_nuttx_cache.o ./ThirdParty/lvgl/src/drivers/nuttx/lv_nuttx_entry.d ./ThirdParty/lvgl/src/drivers/nuttx/lv_nuttx_entry.o ./ThirdParty/lvgl/src/drivers/nuttx/lv_nuttx_fbdev.d ./ThirdParty/lvgl/src/drivers/nuttx/lv_nuttx_fbdev.o ./ThirdParty/lvgl/src/drivers/nuttx/lv_nuttx_image_cache.d ./ThirdParty/lvgl/src/drivers/nuttx/lv_nuttx_image_cache.o ./ThirdParty/lvgl/src/drivers/nuttx/lv_nuttx_lcd.d ./ThirdParty/lvgl/src/drivers/nuttx/lv_nuttx_lcd.o ./ThirdParty/lvgl/src/drivers/nuttx/lv_nuttx_libuv.d ./ThirdParty/lvgl/src/drivers/nuttx/lv_nuttx_libuv.o ./ThirdParty/lvgl/src/drivers/nuttx/lv_nuttx_mouse.d ./ThirdParty/lvgl/src/drivers/nuttx/lv_nuttx_mouse.o ./ThirdParty/lvgl/src/drivers/nuttx/lv_nuttx_profiler.d ./ThirdParty/lvgl/src/drivers/nuttx/lv_nuttx_profiler.o ./ThirdParty/lvgl/src/drivers/nuttx/lv_nuttx_touchscreen.d ./ThirdParty/lvgl/src/drivers/nuttx/lv_nuttx_touchscreen.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-drivers-2f-nuttx

