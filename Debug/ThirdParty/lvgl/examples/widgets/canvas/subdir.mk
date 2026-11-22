################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/widgets/canvas/lv_example_canvas_alpha.c \
../ThirdParty/lvgl/examples/widgets/canvas/lv_example_canvas_arc.c \
../ThirdParty/lvgl/examples/widgets/canvas/lv_example_canvas_blur.c \
../ThirdParty/lvgl/examples/widgets/canvas/lv_example_canvas_image.c \
../ThirdParty/lvgl/examples/widgets/canvas/lv_example_canvas_label.c \
../ThirdParty/lvgl/examples/widgets/canvas/lv_example_canvas_line.c \
../ThirdParty/lvgl/examples/widgets/canvas/lv_example_canvas_rectangle.c \
../ThirdParty/lvgl/examples/widgets/canvas/lv_example_canvas_rotate.c \
../ThirdParty/lvgl/examples/widgets/canvas/lv_example_canvas_triangle.c \
../ThirdParty/lvgl/examples/widgets/canvas/lv_example_canvas_vector.c \
../ThirdParty/lvgl/examples/widgets/canvas/lv_example_canvas_wave_text.c \
../ThirdParty/lvgl/examples/widgets/canvas/lv_example_canvas_windstorm_text.c 

C_DEPS += \
./ThirdParty/lvgl/examples/widgets/canvas/lv_example_canvas_alpha.d \
./ThirdParty/lvgl/examples/widgets/canvas/lv_example_canvas_arc.d \
./ThirdParty/lvgl/examples/widgets/canvas/lv_example_canvas_blur.d \
./ThirdParty/lvgl/examples/widgets/canvas/lv_example_canvas_image.d \
./ThirdParty/lvgl/examples/widgets/canvas/lv_example_canvas_label.d \
./ThirdParty/lvgl/examples/widgets/canvas/lv_example_canvas_line.d \
./ThirdParty/lvgl/examples/widgets/canvas/lv_example_canvas_rectangle.d \
./ThirdParty/lvgl/examples/widgets/canvas/lv_example_canvas_rotate.d \
./ThirdParty/lvgl/examples/widgets/canvas/lv_example_canvas_triangle.d \
./ThirdParty/lvgl/examples/widgets/canvas/lv_example_canvas_vector.d \
./ThirdParty/lvgl/examples/widgets/canvas/lv_example_canvas_wave_text.d \
./ThirdParty/lvgl/examples/widgets/canvas/lv_example_canvas_windstorm_text.d 

OBJS += \
./ThirdParty/lvgl/examples/widgets/canvas/lv_example_canvas_alpha.o \
./ThirdParty/lvgl/examples/widgets/canvas/lv_example_canvas_arc.o \
./ThirdParty/lvgl/examples/widgets/canvas/lv_example_canvas_blur.o \
./ThirdParty/lvgl/examples/widgets/canvas/lv_example_canvas_image.o \
./ThirdParty/lvgl/examples/widgets/canvas/lv_example_canvas_label.o \
./ThirdParty/lvgl/examples/widgets/canvas/lv_example_canvas_line.o \
./ThirdParty/lvgl/examples/widgets/canvas/lv_example_canvas_rectangle.o \
./ThirdParty/lvgl/examples/widgets/canvas/lv_example_canvas_rotate.o \
./ThirdParty/lvgl/examples/widgets/canvas/lv_example_canvas_triangle.o \
./ThirdParty/lvgl/examples/widgets/canvas/lv_example_canvas_vector.o \
./ThirdParty/lvgl/examples/widgets/canvas/lv_example_canvas_wave_text.o \
./ThirdParty/lvgl/examples/widgets/canvas/lv_example_canvas_windstorm_text.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/widgets/canvas/%.o: ../ThirdParty/lvgl/examples/widgets/canvas/%.c ThirdParty/lvgl/examples/widgets/canvas/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-canvas

clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-canvas:
	-$(RM) ./ThirdParty/lvgl/examples/widgets/canvas/lv_example_canvas_alpha.d ./ThirdParty/lvgl/examples/widgets/canvas/lv_example_canvas_alpha.o ./ThirdParty/lvgl/examples/widgets/canvas/lv_example_canvas_arc.d ./ThirdParty/lvgl/examples/widgets/canvas/lv_example_canvas_arc.o ./ThirdParty/lvgl/examples/widgets/canvas/lv_example_canvas_blur.d ./ThirdParty/lvgl/examples/widgets/canvas/lv_example_canvas_blur.o ./ThirdParty/lvgl/examples/widgets/canvas/lv_example_canvas_image.d ./ThirdParty/lvgl/examples/widgets/canvas/lv_example_canvas_image.o ./ThirdParty/lvgl/examples/widgets/canvas/lv_example_canvas_label.d ./ThirdParty/lvgl/examples/widgets/canvas/lv_example_canvas_label.o ./ThirdParty/lvgl/examples/widgets/canvas/lv_example_canvas_line.d ./ThirdParty/lvgl/examples/widgets/canvas/lv_example_canvas_line.o ./ThirdParty/lvgl/examples/widgets/canvas/lv_example_canvas_rectangle.d ./ThirdParty/lvgl/examples/widgets/canvas/lv_example_canvas_rectangle.o ./ThirdParty/lvgl/examples/widgets/canvas/lv_example_canvas_rotate.d ./ThirdParty/lvgl/examples/widgets/canvas/lv_example_canvas_rotate.o ./ThirdParty/lvgl/examples/widgets/canvas/lv_example_canvas_triangle.d ./ThirdParty/lvgl/examples/widgets/canvas/lv_example_canvas_triangle.o ./ThirdParty/lvgl/examples/widgets/canvas/lv_example_canvas_vector.d ./ThirdParty/lvgl/examples/widgets/canvas/lv_example_canvas_vector.o ./ThirdParty/lvgl/examples/widgets/canvas/lv_example_canvas_wave_text.d ./ThirdParty/lvgl/examples/widgets/canvas/lv_example_canvas_wave_text.o ./ThirdParty/lvgl/examples/widgets/canvas/lv_example_canvas_windstorm_text.d ./ThirdParty/lvgl/examples/widgets/canvas/lv_example_canvas_windstorm_text.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-canvas

