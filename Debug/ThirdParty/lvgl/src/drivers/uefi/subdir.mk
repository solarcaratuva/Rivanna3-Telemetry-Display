################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/drivers/uefi/lv_uefi_context.c \
../ThirdParty/lvgl/src/drivers/uefi/lv_uefi_display.c \
../ThirdParty/lvgl/src/drivers/uefi/lv_uefi_indev_keyboard.c \
../ThirdParty/lvgl/src/drivers/uefi/lv_uefi_indev_pointer.c \
../ThirdParty/lvgl/src/drivers/uefi/lv_uefi_indev_touch.c \
../ThirdParty/lvgl/src/drivers/uefi/lv_uefi_private.c 

C_DEPS += \
./ThirdParty/lvgl/src/drivers/uefi/lv_uefi_context.d \
./ThirdParty/lvgl/src/drivers/uefi/lv_uefi_display.d \
./ThirdParty/lvgl/src/drivers/uefi/lv_uefi_indev_keyboard.d \
./ThirdParty/lvgl/src/drivers/uefi/lv_uefi_indev_pointer.d \
./ThirdParty/lvgl/src/drivers/uefi/lv_uefi_indev_touch.d \
./ThirdParty/lvgl/src/drivers/uefi/lv_uefi_private.d 

OBJS += \
./ThirdParty/lvgl/src/drivers/uefi/lv_uefi_context.o \
./ThirdParty/lvgl/src/drivers/uefi/lv_uefi_display.o \
./ThirdParty/lvgl/src/drivers/uefi/lv_uefi_indev_keyboard.o \
./ThirdParty/lvgl/src/drivers/uefi/lv_uefi_indev_pointer.o \
./ThirdParty/lvgl/src/drivers/uefi/lv_uefi_indev_touch.o \
./ThirdParty/lvgl/src/drivers/uefi/lv_uefi_private.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/drivers/uefi/%.o: ../ThirdParty/lvgl/src/drivers/uefi/%.c ThirdParty/lvgl/src/drivers/uefi/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-drivers-2f-uefi

clean-ThirdParty-2f-lvgl-2f-src-2f-drivers-2f-uefi:
	-$(RM) ./ThirdParty/lvgl/src/drivers/uefi/lv_uefi_context.d ./ThirdParty/lvgl/src/drivers/uefi/lv_uefi_context.o ./ThirdParty/lvgl/src/drivers/uefi/lv_uefi_display.d ./ThirdParty/lvgl/src/drivers/uefi/lv_uefi_display.o ./ThirdParty/lvgl/src/drivers/uefi/lv_uefi_indev_keyboard.d ./ThirdParty/lvgl/src/drivers/uefi/lv_uefi_indev_keyboard.o ./ThirdParty/lvgl/src/drivers/uefi/lv_uefi_indev_pointer.d ./ThirdParty/lvgl/src/drivers/uefi/lv_uefi_indev_pointer.o ./ThirdParty/lvgl/src/drivers/uefi/lv_uefi_indev_touch.d ./ThirdParty/lvgl/src/drivers/uefi/lv_uefi_indev_touch.o ./ThirdParty/lvgl/src/drivers/uefi/lv_uefi_private.d ./ThirdParty/lvgl/src/drivers/uefi/lv_uefi_private.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-drivers-2f-uefi

