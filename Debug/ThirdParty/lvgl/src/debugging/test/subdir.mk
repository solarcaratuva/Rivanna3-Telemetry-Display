################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/debugging/test/lv_test_display.c \
../ThirdParty/lvgl/src/debugging/test/lv_test_display_egl.c \
../ThirdParty/lvgl/src/debugging/test/lv_test_fs.c \
../ThirdParty/lvgl/src/debugging/test/lv_test_helpers.c \
../ThirdParty/lvgl/src/debugging/test/lv_test_indev.c \
../ThirdParty/lvgl/src/debugging/test/lv_test_indev_gesture.c \
../ThirdParty/lvgl/src/debugging/test/lv_test_screenshot_compare.c 

C_DEPS += \
./ThirdParty/lvgl/src/debugging/test/lv_test_display.d \
./ThirdParty/lvgl/src/debugging/test/lv_test_display_egl.d \
./ThirdParty/lvgl/src/debugging/test/lv_test_fs.d \
./ThirdParty/lvgl/src/debugging/test/lv_test_helpers.d \
./ThirdParty/lvgl/src/debugging/test/lv_test_indev.d \
./ThirdParty/lvgl/src/debugging/test/lv_test_indev_gesture.d \
./ThirdParty/lvgl/src/debugging/test/lv_test_screenshot_compare.d 

OBJS += \
./ThirdParty/lvgl/src/debugging/test/lv_test_display.o \
./ThirdParty/lvgl/src/debugging/test/lv_test_display_egl.o \
./ThirdParty/lvgl/src/debugging/test/lv_test_fs.o \
./ThirdParty/lvgl/src/debugging/test/lv_test_helpers.o \
./ThirdParty/lvgl/src/debugging/test/lv_test_indev.o \
./ThirdParty/lvgl/src/debugging/test/lv_test_indev_gesture.o \
./ThirdParty/lvgl/src/debugging/test/lv_test_screenshot_compare.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/debugging/test/%.o: ../ThirdParty/lvgl/src/debugging/test/%.c ThirdParty/lvgl/src/debugging/test/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-debugging-2f-test

clean-ThirdParty-2f-lvgl-2f-src-2f-debugging-2f-test:
	-$(RM) ./ThirdParty/lvgl/src/debugging/test/lv_test_display.d ./ThirdParty/lvgl/src/debugging/test/lv_test_display.o ./ThirdParty/lvgl/src/debugging/test/lv_test_display_egl.d ./ThirdParty/lvgl/src/debugging/test/lv_test_display_egl.o ./ThirdParty/lvgl/src/debugging/test/lv_test_fs.d ./ThirdParty/lvgl/src/debugging/test/lv_test_fs.o ./ThirdParty/lvgl/src/debugging/test/lv_test_helpers.d ./ThirdParty/lvgl/src/debugging/test/lv_test_helpers.o ./ThirdParty/lvgl/src/debugging/test/lv_test_indev.d ./ThirdParty/lvgl/src/debugging/test/lv_test_indev.o ./ThirdParty/lvgl/src/debugging/test/lv_test_indev_gesture.d ./ThirdParty/lvgl/src/debugging/test/lv_test_indev_gesture.o ./ThirdParty/lvgl/src/debugging/test/lv_test_screenshot_compare.d ./ThirdParty/lvgl/src/debugging/test/lv_test_screenshot_compare.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-debugging-2f-test

