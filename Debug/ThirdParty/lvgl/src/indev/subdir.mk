################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/indev/lv_gridnav.c \
../ThirdParty/lvgl/src/indev/lv_indev.c \
../ThirdParty/lvgl/src/indev/lv_indev_gesture.c \
../ThirdParty/lvgl/src/indev/lv_indev_scroll.c 

C_DEPS += \
./ThirdParty/lvgl/src/indev/lv_gridnav.d \
./ThirdParty/lvgl/src/indev/lv_indev.d \
./ThirdParty/lvgl/src/indev/lv_indev_gesture.d \
./ThirdParty/lvgl/src/indev/lv_indev_scroll.d 

OBJS += \
./ThirdParty/lvgl/src/indev/lv_gridnav.o \
./ThirdParty/lvgl/src/indev/lv_indev.o \
./ThirdParty/lvgl/src/indev/lv_indev_gesture.o \
./ThirdParty/lvgl/src/indev/lv_indev_scroll.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/indev/%.o: ../ThirdParty/lvgl/src/indev/%.c ThirdParty/lvgl/src/indev/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-indev

clean-ThirdParty-2f-lvgl-2f-src-2f-indev:
	-$(RM) ./ThirdParty/lvgl/src/indev/lv_gridnav.d ./ThirdParty/lvgl/src/indev/lv_gridnav.o ./ThirdParty/lvgl/src/indev/lv_indev.d ./ThirdParty/lvgl/src/indev/lv_indev.o ./ThirdParty/lvgl/src/indev/lv_indev_gesture.d ./ThirdParty/lvgl/src/indev/lv_indev_gesture.o ./ThirdParty/lvgl/src/indev/lv_indev_scroll.d ./ThirdParty/lvgl/src/indev/lv_indev_scroll.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-indev

