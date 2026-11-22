################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/draw/nxp/g2d/lv_draw_buf_g2d.c \
../ThirdParty/lvgl/src/draw/nxp/g2d/lv_draw_g2d.c \
../ThirdParty/lvgl/src/draw/nxp/g2d/lv_draw_g2d_fill.c \
../ThirdParty/lvgl/src/draw/nxp/g2d/lv_draw_g2d_img.c \
../ThirdParty/lvgl/src/draw/nxp/g2d/lv_g2d_buf_map.c \
../ThirdParty/lvgl/src/draw/nxp/g2d/lv_g2d_utils.c 

C_DEPS += \
./ThirdParty/lvgl/src/draw/nxp/g2d/lv_draw_buf_g2d.d \
./ThirdParty/lvgl/src/draw/nxp/g2d/lv_draw_g2d.d \
./ThirdParty/lvgl/src/draw/nxp/g2d/lv_draw_g2d_fill.d \
./ThirdParty/lvgl/src/draw/nxp/g2d/lv_draw_g2d_img.d \
./ThirdParty/lvgl/src/draw/nxp/g2d/lv_g2d_buf_map.d \
./ThirdParty/lvgl/src/draw/nxp/g2d/lv_g2d_utils.d 

OBJS += \
./ThirdParty/lvgl/src/draw/nxp/g2d/lv_draw_buf_g2d.o \
./ThirdParty/lvgl/src/draw/nxp/g2d/lv_draw_g2d.o \
./ThirdParty/lvgl/src/draw/nxp/g2d/lv_draw_g2d_fill.o \
./ThirdParty/lvgl/src/draw/nxp/g2d/lv_draw_g2d_img.o \
./ThirdParty/lvgl/src/draw/nxp/g2d/lv_g2d_buf_map.o \
./ThirdParty/lvgl/src/draw/nxp/g2d/lv_g2d_utils.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/draw/nxp/g2d/%.o: ../ThirdParty/lvgl/src/draw/nxp/g2d/%.c ThirdParty/lvgl/src/draw/nxp/g2d/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-draw-2f-nxp-2f-g2d

clean-ThirdParty-2f-lvgl-2f-src-2f-draw-2f-nxp-2f-g2d:
	-$(RM) ./ThirdParty/lvgl/src/draw/nxp/g2d/lv_draw_buf_g2d.d ./ThirdParty/lvgl/src/draw/nxp/g2d/lv_draw_buf_g2d.o ./ThirdParty/lvgl/src/draw/nxp/g2d/lv_draw_g2d.d ./ThirdParty/lvgl/src/draw/nxp/g2d/lv_draw_g2d.o ./ThirdParty/lvgl/src/draw/nxp/g2d/lv_draw_g2d_fill.d ./ThirdParty/lvgl/src/draw/nxp/g2d/lv_draw_g2d_fill.o ./ThirdParty/lvgl/src/draw/nxp/g2d/lv_draw_g2d_img.d ./ThirdParty/lvgl/src/draw/nxp/g2d/lv_draw_g2d_img.o ./ThirdParty/lvgl/src/draw/nxp/g2d/lv_g2d_buf_map.d ./ThirdParty/lvgl/src/draw/nxp/g2d/lv_g2d_buf_map.o ./ThirdParty/lvgl/src/draw/nxp/g2d/lv_g2d_utils.d ./ThirdParty/lvgl/src/draw/nxp/g2d/lv_g2d_utils.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-draw-2f-nxp-2f-g2d

