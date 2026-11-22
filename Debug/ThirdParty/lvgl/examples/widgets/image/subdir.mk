################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/widgets/image/lv_example_image_inner_align.c \
../ThirdParty/lvgl/examples/widgets/image/lv_example_image_recolor.c \
../ThirdParty/lvgl/examples/widgets/image/lv_example_image_src.c \
../ThirdParty/lvgl/examples/widgets/image/lv_example_image_svg.c \
../ThirdParty/lvgl/examples/widgets/image/lv_example_image_transformations.c 

C_DEPS += \
./ThirdParty/lvgl/examples/widgets/image/lv_example_image_inner_align.d \
./ThirdParty/lvgl/examples/widgets/image/lv_example_image_recolor.d \
./ThirdParty/lvgl/examples/widgets/image/lv_example_image_src.d \
./ThirdParty/lvgl/examples/widgets/image/lv_example_image_svg.d \
./ThirdParty/lvgl/examples/widgets/image/lv_example_image_transformations.d 

OBJS += \
./ThirdParty/lvgl/examples/widgets/image/lv_example_image_inner_align.o \
./ThirdParty/lvgl/examples/widgets/image/lv_example_image_recolor.o \
./ThirdParty/lvgl/examples/widgets/image/lv_example_image_src.o \
./ThirdParty/lvgl/examples/widgets/image/lv_example_image_svg.o \
./ThirdParty/lvgl/examples/widgets/image/lv_example_image_transformations.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/widgets/image/%.o: ../ThirdParty/lvgl/examples/widgets/image/%.c ThirdParty/lvgl/examples/widgets/image/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-image

clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-image:
	-$(RM) ./ThirdParty/lvgl/examples/widgets/image/lv_example_image_inner_align.d ./ThirdParty/lvgl/examples/widgets/image/lv_example_image_inner_align.o ./ThirdParty/lvgl/examples/widgets/image/lv_example_image_recolor.d ./ThirdParty/lvgl/examples/widgets/image/lv_example_image_recolor.o ./ThirdParty/lvgl/examples/widgets/image/lv_example_image_src.d ./ThirdParty/lvgl/examples/widgets/image/lv_example_image_src.o ./ThirdParty/lvgl/examples/widgets/image/lv_example_image_svg.d ./ThirdParty/lvgl/examples/widgets/image/lv_example_image_svg.o ./ThirdParty/lvgl/examples/widgets/image/lv_example_image_transformations.d ./ThirdParty/lvgl/examples/widgets/image/lv_example_image_transformations.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-image

