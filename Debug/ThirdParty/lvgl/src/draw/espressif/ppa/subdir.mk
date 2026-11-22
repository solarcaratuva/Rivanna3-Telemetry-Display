################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/draw/espressif/ppa/lv_draw_ppa.c \
../ThirdParty/lvgl/src/draw/espressif/ppa/lv_draw_ppa_buf.c \
../ThirdParty/lvgl/src/draw/espressif/ppa/lv_draw_ppa_fill.c \
../ThirdParty/lvgl/src/draw/espressif/ppa/lv_draw_ppa_img.c 

C_DEPS += \
./ThirdParty/lvgl/src/draw/espressif/ppa/lv_draw_ppa.d \
./ThirdParty/lvgl/src/draw/espressif/ppa/lv_draw_ppa_buf.d \
./ThirdParty/lvgl/src/draw/espressif/ppa/lv_draw_ppa_fill.d \
./ThirdParty/lvgl/src/draw/espressif/ppa/lv_draw_ppa_img.d 

OBJS += \
./ThirdParty/lvgl/src/draw/espressif/ppa/lv_draw_ppa.o \
./ThirdParty/lvgl/src/draw/espressif/ppa/lv_draw_ppa_buf.o \
./ThirdParty/lvgl/src/draw/espressif/ppa/lv_draw_ppa_fill.o \
./ThirdParty/lvgl/src/draw/espressif/ppa/lv_draw_ppa_img.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/draw/espressif/ppa/%.o: ../ThirdParty/lvgl/src/draw/espressif/ppa/%.c ThirdParty/lvgl/src/draw/espressif/ppa/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-draw-2f-espressif-2f-ppa

clean-ThirdParty-2f-lvgl-2f-src-2f-draw-2f-espressif-2f-ppa:
	-$(RM) ./ThirdParty/lvgl/src/draw/espressif/ppa/lv_draw_ppa.d ./ThirdParty/lvgl/src/draw/espressif/ppa/lv_draw_ppa.o ./ThirdParty/lvgl/src/draw/espressif/ppa/lv_draw_ppa_buf.d ./ThirdParty/lvgl/src/draw/espressif/ppa/lv_draw_ppa_buf.o ./ThirdParty/lvgl/src/draw/espressif/ppa/lv_draw_ppa_fill.d ./ThirdParty/lvgl/src/draw/espressif/ppa/lv_draw_ppa_fill.o ./ThirdParty/lvgl/src/draw/espressif/ppa/lv_draw_ppa_img.d ./ThirdParty/lvgl/src/draw/espressif/ppa/lv_draw_ppa_img.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-draw-2f-espressif-2f-ppa

