################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/porting/lv_port_disp_template.c \
../ThirdParty/lvgl/examples/porting/lv_port_fs_template.c \
../ThirdParty/lvgl/examples/porting/lv_port_indev_template.c \
../ThirdParty/lvgl/examples/porting/lv_port_lcd_stm32_template.c 

C_DEPS += \
./ThirdParty/lvgl/examples/porting/lv_port_disp_template.d \
./ThirdParty/lvgl/examples/porting/lv_port_fs_template.d \
./ThirdParty/lvgl/examples/porting/lv_port_indev_template.d \
./ThirdParty/lvgl/examples/porting/lv_port_lcd_stm32_template.d 

OBJS += \
./ThirdParty/lvgl/examples/porting/lv_port_disp_template.o \
./ThirdParty/lvgl/examples/porting/lv_port_fs_template.o \
./ThirdParty/lvgl/examples/porting/lv_port_indev_template.o \
./ThirdParty/lvgl/examples/porting/lv_port_lcd_stm32_template.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/porting/%.o: ../ThirdParty/lvgl/examples/porting/%.c ThirdParty/lvgl/examples/porting/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-porting

clean-ThirdParty-2f-lvgl-2f-examples-2f-porting:
	-$(RM) ./ThirdParty/lvgl/examples/porting/lv_port_disp_template.d ./ThirdParty/lvgl/examples/porting/lv_port_disp_template.o ./ThirdParty/lvgl/examples/porting/lv_port_fs_template.d ./ThirdParty/lvgl/examples/porting/lv_port_fs_template.o ./ThirdParty/lvgl/examples/porting/lv_port_indev_template.d ./ThirdParty/lvgl/examples/porting/lv_port_indev_template.o ./ThirdParty/lvgl/examples/porting/lv_port_lcd_stm32_template.d ./ThirdParty/lvgl/examples/porting/lv_port_lcd_stm32_template.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-porting

