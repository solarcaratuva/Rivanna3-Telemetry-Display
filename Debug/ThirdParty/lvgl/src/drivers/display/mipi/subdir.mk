################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/drivers/display/mipi/lv_ili9341.c \
../ThirdParty/lvgl/src/drivers/display/mipi/lv_lcd_generic_mipi.c \
../ThirdParty/lvgl/src/drivers/display/mipi/lv_nv3007.c \
../ThirdParty/lvgl/src/drivers/display/mipi/lv_st7735.c \
../ThirdParty/lvgl/src/drivers/display/mipi/lv_st7789.c \
../ThirdParty/lvgl/src/drivers/display/mipi/lv_st7796.c 

C_DEPS += \
./ThirdParty/lvgl/src/drivers/display/mipi/lv_ili9341.d \
./ThirdParty/lvgl/src/drivers/display/mipi/lv_lcd_generic_mipi.d \
./ThirdParty/lvgl/src/drivers/display/mipi/lv_nv3007.d \
./ThirdParty/lvgl/src/drivers/display/mipi/lv_st7735.d \
./ThirdParty/lvgl/src/drivers/display/mipi/lv_st7789.d \
./ThirdParty/lvgl/src/drivers/display/mipi/lv_st7796.d 

OBJS += \
./ThirdParty/lvgl/src/drivers/display/mipi/lv_ili9341.o \
./ThirdParty/lvgl/src/drivers/display/mipi/lv_lcd_generic_mipi.o \
./ThirdParty/lvgl/src/drivers/display/mipi/lv_nv3007.o \
./ThirdParty/lvgl/src/drivers/display/mipi/lv_st7735.o \
./ThirdParty/lvgl/src/drivers/display/mipi/lv_st7789.o \
./ThirdParty/lvgl/src/drivers/display/mipi/lv_st7796.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/drivers/display/mipi/%.o: ../ThirdParty/lvgl/src/drivers/display/mipi/%.c ThirdParty/lvgl/src/drivers/display/mipi/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-drivers-2f-display-2f-mipi

clean-ThirdParty-2f-lvgl-2f-src-2f-drivers-2f-display-2f-mipi:
	-$(RM) ./ThirdParty/lvgl/src/drivers/display/mipi/lv_ili9341.d ./ThirdParty/lvgl/src/drivers/display/mipi/lv_ili9341.o ./ThirdParty/lvgl/src/drivers/display/mipi/lv_lcd_generic_mipi.d ./ThirdParty/lvgl/src/drivers/display/mipi/lv_lcd_generic_mipi.o ./ThirdParty/lvgl/src/drivers/display/mipi/lv_nv3007.d ./ThirdParty/lvgl/src/drivers/display/mipi/lv_nv3007.o ./ThirdParty/lvgl/src/drivers/display/mipi/lv_st7735.d ./ThirdParty/lvgl/src/drivers/display/mipi/lv_st7735.o ./ThirdParty/lvgl/src/drivers/display/mipi/lv_st7789.d ./ThirdParty/lvgl/src/drivers/display/mipi/lv_st7789.o ./ThirdParty/lvgl/src/drivers/display/mipi/lv_st7796.d ./ThirdParty/lvgl/src/drivers/display/mipi/lv_st7796.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-drivers-2f-display-2f-mipi

