################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/draw/eve/lv_draw_eve.c \
../ThirdParty/lvgl/src/draw/eve/lv_draw_eve_arc.c \
../ThirdParty/lvgl/src/draw/eve/lv_draw_eve_fill.c \
../ThirdParty/lvgl/src/draw/eve/lv_draw_eve_image.c \
../ThirdParty/lvgl/src/draw/eve/lv_draw_eve_letter.c \
../ThirdParty/lvgl/src/draw/eve/lv_draw_eve_line.c \
../ThirdParty/lvgl/src/draw/eve/lv_draw_eve_ram_g.c \
../ThirdParty/lvgl/src/draw/eve/lv_draw_eve_triangle.c \
../ThirdParty/lvgl/src/draw/eve/lv_eve.c 

C_DEPS += \
./ThirdParty/lvgl/src/draw/eve/lv_draw_eve.d \
./ThirdParty/lvgl/src/draw/eve/lv_draw_eve_arc.d \
./ThirdParty/lvgl/src/draw/eve/lv_draw_eve_fill.d \
./ThirdParty/lvgl/src/draw/eve/lv_draw_eve_image.d \
./ThirdParty/lvgl/src/draw/eve/lv_draw_eve_letter.d \
./ThirdParty/lvgl/src/draw/eve/lv_draw_eve_line.d \
./ThirdParty/lvgl/src/draw/eve/lv_draw_eve_ram_g.d \
./ThirdParty/lvgl/src/draw/eve/lv_draw_eve_triangle.d \
./ThirdParty/lvgl/src/draw/eve/lv_eve.d 

OBJS += \
./ThirdParty/lvgl/src/draw/eve/lv_draw_eve.o \
./ThirdParty/lvgl/src/draw/eve/lv_draw_eve_arc.o \
./ThirdParty/lvgl/src/draw/eve/lv_draw_eve_fill.o \
./ThirdParty/lvgl/src/draw/eve/lv_draw_eve_image.o \
./ThirdParty/lvgl/src/draw/eve/lv_draw_eve_letter.o \
./ThirdParty/lvgl/src/draw/eve/lv_draw_eve_line.o \
./ThirdParty/lvgl/src/draw/eve/lv_draw_eve_ram_g.o \
./ThirdParty/lvgl/src/draw/eve/lv_draw_eve_triangle.o \
./ThirdParty/lvgl/src/draw/eve/lv_eve.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/draw/eve/%.o: ../ThirdParty/lvgl/src/draw/eve/%.c ThirdParty/lvgl/src/draw/eve/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-draw-2f-eve

clean-ThirdParty-2f-lvgl-2f-src-2f-draw-2f-eve:
	-$(RM) ./ThirdParty/lvgl/src/draw/eve/lv_draw_eve.d ./ThirdParty/lvgl/src/draw/eve/lv_draw_eve.o ./ThirdParty/lvgl/src/draw/eve/lv_draw_eve_arc.d ./ThirdParty/lvgl/src/draw/eve/lv_draw_eve_arc.o ./ThirdParty/lvgl/src/draw/eve/lv_draw_eve_fill.d ./ThirdParty/lvgl/src/draw/eve/lv_draw_eve_fill.o ./ThirdParty/lvgl/src/draw/eve/lv_draw_eve_image.d ./ThirdParty/lvgl/src/draw/eve/lv_draw_eve_image.o ./ThirdParty/lvgl/src/draw/eve/lv_draw_eve_letter.d ./ThirdParty/lvgl/src/draw/eve/lv_draw_eve_letter.o ./ThirdParty/lvgl/src/draw/eve/lv_draw_eve_line.d ./ThirdParty/lvgl/src/draw/eve/lv_draw_eve_line.o ./ThirdParty/lvgl/src/draw/eve/lv_draw_eve_ram_g.d ./ThirdParty/lvgl/src/draw/eve/lv_draw_eve_ram_g.o ./ThirdParty/lvgl/src/draw/eve/lv_draw_eve_triangle.d ./ThirdParty/lvgl/src/draw/eve/lv_draw_eve_triangle.o ./ThirdParty/lvgl/src/draw/eve/lv_eve.d ./ThirdParty/lvgl/src/draw/eve/lv_eve.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-draw-2f-eve

