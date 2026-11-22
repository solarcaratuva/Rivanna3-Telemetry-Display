################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/draw/sifli/epic/lv_draw_buf_sifli_epic.c \
../ThirdParty/lvgl/src/draw/sifli/epic/lv_draw_sifli_epic.c \
../ThirdParty/lvgl/src/draw/sifli/epic/lv_draw_sifli_epic_border.c \
../ThirdParty/lvgl/src/draw/sifli/epic/lv_draw_sifli_epic_fill.c \
../ThirdParty/lvgl/src/draw/sifli/epic/lv_draw_sifli_epic_img.c \
../ThirdParty/lvgl/src/draw/sifli/epic/lv_draw_sifli_epic_label.c \
../ThirdParty/lvgl/src/draw/sifli/epic/lv_draw_sifli_epic_layer.c \
../ThirdParty/lvgl/src/draw/sifli/epic/lv_sifli_epic_cfg.c \
../ThirdParty/lvgl/src/draw/sifli/epic/lv_sifli_epic_osa.c \
../ThirdParty/lvgl/src/draw/sifli/epic/lv_sifli_epic_utils.c 

C_DEPS += \
./ThirdParty/lvgl/src/draw/sifli/epic/lv_draw_buf_sifli_epic.d \
./ThirdParty/lvgl/src/draw/sifli/epic/lv_draw_sifli_epic.d \
./ThirdParty/lvgl/src/draw/sifli/epic/lv_draw_sifli_epic_border.d \
./ThirdParty/lvgl/src/draw/sifli/epic/lv_draw_sifli_epic_fill.d \
./ThirdParty/lvgl/src/draw/sifli/epic/lv_draw_sifli_epic_img.d \
./ThirdParty/lvgl/src/draw/sifli/epic/lv_draw_sifli_epic_label.d \
./ThirdParty/lvgl/src/draw/sifli/epic/lv_draw_sifli_epic_layer.d \
./ThirdParty/lvgl/src/draw/sifli/epic/lv_sifli_epic_cfg.d \
./ThirdParty/lvgl/src/draw/sifli/epic/lv_sifli_epic_osa.d \
./ThirdParty/lvgl/src/draw/sifli/epic/lv_sifli_epic_utils.d 

OBJS += \
./ThirdParty/lvgl/src/draw/sifli/epic/lv_draw_buf_sifli_epic.o \
./ThirdParty/lvgl/src/draw/sifli/epic/lv_draw_sifli_epic.o \
./ThirdParty/lvgl/src/draw/sifli/epic/lv_draw_sifli_epic_border.o \
./ThirdParty/lvgl/src/draw/sifli/epic/lv_draw_sifli_epic_fill.o \
./ThirdParty/lvgl/src/draw/sifli/epic/lv_draw_sifli_epic_img.o \
./ThirdParty/lvgl/src/draw/sifli/epic/lv_draw_sifli_epic_label.o \
./ThirdParty/lvgl/src/draw/sifli/epic/lv_draw_sifli_epic_layer.o \
./ThirdParty/lvgl/src/draw/sifli/epic/lv_sifli_epic_cfg.o \
./ThirdParty/lvgl/src/draw/sifli/epic/lv_sifli_epic_osa.o \
./ThirdParty/lvgl/src/draw/sifli/epic/lv_sifli_epic_utils.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/draw/sifli/epic/%.o: ../ThirdParty/lvgl/src/draw/sifli/epic/%.c ThirdParty/lvgl/src/draw/sifli/epic/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-draw-2f-sifli-2f-epic

clean-ThirdParty-2f-lvgl-2f-src-2f-draw-2f-sifli-2f-epic:
	-$(RM) ./ThirdParty/lvgl/src/draw/sifli/epic/lv_draw_buf_sifli_epic.d ./ThirdParty/lvgl/src/draw/sifli/epic/lv_draw_buf_sifli_epic.o ./ThirdParty/lvgl/src/draw/sifli/epic/lv_draw_sifli_epic.d ./ThirdParty/lvgl/src/draw/sifli/epic/lv_draw_sifli_epic.o ./ThirdParty/lvgl/src/draw/sifli/epic/lv_draw_sifli_epic_border.d ./ThirdParty/lvgl/src/draw/sifli/epic/lv_draw_sifli_epic_border.o ./ThirdParty/lvgl/src/draw/sifli/epic/lv_draw_sifli_epic_fill.d ./ThirdParty/lvgl/src/draw/sifli/epic/lv_draw_sifli_epic_fill.o ./ThirdParty/lvgl/src/draw/sifli/epic/lv_draw_sifli_epic_img.d ./ThirdParty/lvgl/src/draw/sifli/epic/lv_draw_sifli_epic_img.o ./ThirdParty/lvgl/src/draw/sifli/epic/lv_draw_sifli_epic_label.d ./ThirdParty/lvgl/src/draw/sifli/epic/lv_draw_sifli_epic_label.o ./ThirdParty/lvgl/src/draw/sifli/epic/lv_draw_sifli_epic_layer.d ./ThirdParty/lvgl/src/draw/sifli/epic/lv_draw_sifli_epic_layer.o ./ThirdParty/lvgl/src/draw/sifli/epic/lv_sifli_epic_cfg.d ./ThirdParty/lvgl/src/draw/sifli/epic/lv_sifli_epic_cfg.o ./ThirdParty/lvgl/src/draw/sifli/epic/lv_sifli_epic_osa.d ./ThirdParty/lvgl/src/draw/sifli/epic/lv_sifli_epic_osa.o ./ThirdParty/lvgl/src/draw/sifli/epic/lv_sifli_epic_utils.d ./ThirdParty/lvgl/src/draw/sifli/epic/lv_sifli_epic_utils.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-draw-2f-sifli-2f-epic

