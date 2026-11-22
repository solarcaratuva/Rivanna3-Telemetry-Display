################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/drivers/libinput/lv_libinput.c \
../ThirdParty/lvgl/src/drivers/libinput/lv_xkb.c 

C_DEPS += \
./ThirdParty/lvgl/src/drivers/libinput/lv_libinput.d \
./ThirdParty/lvgl/src/drivers/libinput/lv_xkb.d 

OBJS += \
./ThirdParty/lvgl/src/drivers/libinput/lv_libinput.o \
./ThirdParty/lvgl/src/drivers/libinput/lv_xkb.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/drivers/libinput/%.o: ../ThirdParty/lvgl/src/drivers/libinput/%.c ThirdParty/lvgl/src/drivers/libinput/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-drivers-2f-libinput

clean-ThirdParty-2f-lvgl-2f-src-2f-drivers-2f-libinput:
	-$(RM) ./ThirdParty/lvgl/src/drivers/libinput/lv_libinput.d ./ThirdParty/lvgl/src/drivers/libinput/lv_libinput.o ./ThirdParty/lvgl/src/drivers/libinput/lv_xkb.d ./ThirdParty/lvgl/src/drivers/libinput/lv_xkb.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-drivers-2f-libinput

