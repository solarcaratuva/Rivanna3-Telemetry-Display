################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/draw/nxp/pxp/lv_draw_buf_pxp.c \
../ThirdParty/lvgl/src/draw/nxp/pxp/lv_draw_pxp.c \
../ThirdParty/lvgl/src/draw/nxp/pxp/lv_draw_pxp_fill.c \
../ThirdParty/lvgl/src/draw/nxp/pxp/lv_draw_pxp_img.c \
../ThirdParty/lvgl/src/draw/nxp/pxp/lv_draw_pxp_layer.c \
../ThirdParty/lvgl/src/draw/nxp/pxp/lv_pxp_cfg.c \
../ThirdParty/lvgl/src/draw/nxp/pxp/lv_pxp_osa.c \
../ThirdParty/lvgl/src/draw/nxp/pxp/lv_pxp_utils.c 

C_DEPS += \
./ThirdParty/lvgl/src/draw/nxp/pxp/lv_draw_buf_pxp.d \
./ThirdParty/lvgl/src/draw/nxp/pxp/lv_draw_pxp.d \
./ThirdParty/lvgl/src/draw/nxp/pxp/lv_draw_pxp_fill.d \
./ThirdParty/lvgl/src/draw/nxp/pxp/lv_draw_pxp_img.d \
./ThirdParty/lvgl/src/draw/nxp/pxp/lv_draw_pxp_layer.d \
./ThirdParty/lvgl/src/draw/nxp/pxp/lv_pxp_cfg.d \
./ThirdParty/lvgl/src/draw/nxp/pxp/lv_pxp_osa.d \
./ThirdParty/lvgl/src/draw/nxp/pxp/lv_pxp_utils.d 

OBJS += \
./ThirdParty/lvgl/src/draw/nxp/pxp/lv_draw_buf_pxp.o \
./ThirdParty/lvgl/src/draw/nxp/pxp/lv_draw_pxp.o \
./ThirdParty/lvgl/src/draw/nxp/pxp/lv_draw_pxp_fill.o \
./ThirdParty/lvgl/src/draw/nxp/pxp/lv_draw_pxp_img.o \
./ThirdParty/lvgl/src/draw/nxp/pxp/lv_draw_pxp_layer.o \
./ThirdParty/lvgl/src/draw/nxp/pxp/lv_pxp_cfg.o \
./ThirdParty/lvgl/src/draw/nxp/pxp/lv_pxp_osa.o \
./ThirdParty/lvgl/src/draw/nxp/pxp/lv_pxp_utils.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/draw/nxp/pxp/%.o: ../ThirdParty/lvgl/src/draw/nxp/pxp/%.c ThirdParty/lvgl/src/draw/nxp/pxp/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-draw-2f-nxp-2f-pxp

clean-ThirdParty-2f-lvgl-2f-src-2f-draw-2f-nxp-2f-pxp:
	-$(RM) ./ThirdParty/lvgl/src/draw/nxp/pxp/lv_draw_buf_pxp.d ./ThirdParty/lvgl/src/draw/nxp/pxp/lv_draw_buf_pxp.o ./ThirdParty/lvgl/src/draw/nxp/pxp/lv_draw_pxp.d ./ThirdParty/lvgl/src/draw/nxp/pxp/lv_draw_pxp.o ./ThirdParty/lvgl/src/draw/nxp/pxp/lv_draw_pxp_fill.d ./ThirdParty/lvgl/src/draw/nxp/pxp/lv_draw_pxp_fill.o ./ThirdParty/lvgl/src/draw/nxp/pxp/lv_draw_pxp_img.d ./ThirdParty/lvgl/src/draw/nxp/pxp/lv_draw_pxp_img.o ./ThirdParty/lvgl/src/draw/nxp/pxp/lv_draw_pxp_layer.d ./ThirdParty/lvgl/src/draw/nxp/pxp/lv_draw_pxp_layer.o ./ThirdParty/lvgl/src/draw/nxp/pxp/lv_pxp_cfg.d ./ThirdParty/lvgl/src/draw/nxp/pxp/lv_pxp_cfg.o ./ThirdParty/lvgl/src/draw/nxp/pxp/lv_pxp_osa.d ./ThirdParty/lvgl/src/draw/nxp/pxp/lv_pxp_osa.o ./ThirdParty/lvgl/src/draw/nxp/pxp/lv_pxp_utils.d ./ThirdParty/lvgl/src/draw/nxp/pxp/lv_pxp_utils.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-draw-2f-nxp-2f-pxp

