################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/assets/animimg001.c \
../ThirdParty/lvgl/examples/assets/animimg002.c \
../ThirdParty/lvgl/examples/assets/animimg003.c \
../ThirdParty/lvgl/examples/assets/font_example_large.c \
../ThirdParty/lvgl/examples/assets/img_arc_bg.c \
../ThirdParty/lvgl/examples/assets/img_arc_indicator.c \
../ThirdParty/lvgl/examples/assets/img_bar_bg.c \
../ThirdParty/lvgl/examples/assets/img_bar_indicator.c \
../ThirdParty/lvgl/examples/assets/img_example_lvgl_logo.c \
../ThirdParty/lvgl/examples/assets/img_hand.c \
../ThirdParty/lvgl/examples/assets/img_multilang_like.c \
../ThirdParty/lvgl/examples/assets/img_skew_strip.c \
../ThirdParty/lvgl/examples/assets/img_star.c \
../ThirdParty/lvgl/examples/assets/img_svg_img.c \
../ThirdParty/lvgl/examples/assets/img_transform_avatar_15.c \
../ThirdParty/lvgl/examples/assets/imgbtn_left.c \
../ThirdParty/lvgl/examples/assets/imgbtn_mid.c \
../ThirdParty/lvgl/examples/assets/imgbtn_right.c 

C_DEPS += \
./ThirdParty/lvgl/examples/assets/animimg001.d \
./ThirdParty/lvgl/examples/assets/animimg002.d \
./ThirdParty/lvgl/examples/assets/animimg003.d \
./ThirdParty/lvgl/examples/assets/font_example_large.d \
./ThirdParty/lvgl/examples/assets/img_arc_bg.d \
./ThirdParty/lvgl/examples/assets/img_arc_indicator.d \
./ThirdParty/lvgl/examples/assets/img_bar_bg.d \
./ThirdParty/lvgl/examples/assets/img_bar_indicator.d \
./ThirdParty/lvgl/examples/assets/img_example_lvgl_logo.d \
./ThirdParty/lvgl/examples/assets/img_hand.d \
./ThirdParty/lvgl/examples/assets/img_multilang_like.d \
./ThirdParty/lvgl/examples/assets/img_skew_strip.d \
./ThirdParty/lvgl/examples/assets/img_star.d \
./ThirdParty/lvgl/examples/assets/img_svg_img.d \
./ThirdParty/lvgl/examples/assets/img_transform_avatar_15.d \
./ThirdParty/lvgl/examples/assets/imgbtn_left.d \
./ThirdParty/lvgl/examples/assets/imgbtn_mid.d \
./ThirdParty/lvgl/examples/assets/imgbtn_right.d 

OBJS += \
./ThirdParty/lvgl/examples/assets/animimg001.o \
./ThirdParty/lvgl/examples/assets/animimg002.o \
./ThirdParty/lvgl/examples/assets/animimg003.o \
./ThirdParty/lvgl/examples/assets/font_example_large.o \
./ThirdParty/lvgl/examples/assets/img_arc_bg.o \
./ThirdParty/lvgl/examples/assets/img_arc_indicator.o \
./ThirdParty/lvgl/examples/assets/img_bar_bg.o \
./ThirdParty/lvgl/examples/assets/img_bar_indicator.o \
./ThirdParty/lvgl/examples/assets/img_example_lvgl_logo.o \
./ThirdParty/lvgl/examples/assets/img_hand.o \
./ThirdParty/lvgl/examples/assets/img_multilang_like.o \
./ThirdParty/lvgl/examples/assets/img_skew_strip.o \
./ThirdParty/lvgl/examples/assets/img_star.o \
./ThirdParty/lvgl/examples/assets/img_svg_img.o \
./ThirdParty/lvgl/examples/assets/img_transform_avatar_15.o \
./ThirdParty/lvgl/examples/assets/imgbtn_left.o \
./ThirdParty/lvgl/examples/assets/imgbtn_mid.o \
./ThirdParty/lvgl/examples/assets/imgbtn_right.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/assets/%.o: ../ThirdParty/lvgl/examples/assets/%.c ThirdParty/lvgl/examples/assets/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-assets

clean-ThirdParty-2f-lvgl-2f-examples-2f-assets:
	-$(RM) ./ThirdParty/lvgl/examples/assets/animimg001.d ./ThirdParty/lvgl/examples/assets/animimg001.o ./ThirdParty/lvgl/examples/assets/animimg002.d ./ThirdParty/lvgl/examples/assets/animimg002.o ./ThirdParty/lvgl/examples/assets/animimg003.d ./ThirdParty/lvgl/examples/assets/animimg003.o ./ThirdParty/lvgl/examples/assets/font_example_large.d ./ThirdParty/lvgl/examples/assets/font_example_large.o ./ThirdParty/lvgl/examples/assets/img_arc_bg.d ./ThirdParty/lvgl/examples/assets/img_arc_bg.o ./ThirdParty/lvgl/examples/assets/img_arc_indicator.d ./ThirdParty/lvgl/examples/assets/img_arc_indicator.o ./ThirdParty/lvgl/examples/assets/img_bar_bg.d ./ThirdParty/lvgl/examples/assets/img_bar_bg.o ./ThirdParty/lvgl/examples/assets/img_bar_indicator.d ./ThirdParty/lvgl/examples/assets/img_bar_indicator.o ./ThirdParty/lvgl/examples/assets/img_example_lvgl_logo.d ./ThirdParty/lvgl/examples/assets/img_example_lvgl_logo.o ./ThirdParty/lvgl/examples/assets/img_hand.d ./ThirdParty/lvgl/examples/assets/img_hand.o ./ThirdParty/lvgl/examples/assets/img_multilang_like.d ./ThirdParty/lvgl/examples/assets/img_multilang_like.o ./ThirdParty/lvgl/examples/assets/img_skew_strip.d ./ThirdParty/lvgl/examples/assets/img_skew_strip.o ./ThirdParty/lvgl/examples/assets/img_star.d ./ThirdParty/lvgl/examples/assets/img_star.o ./ThirdParty/lvgl/examples/assets/img_svg_img.d ./ThirdParty/lvgl/examples/assets/img_svg_img.o ./ThirdParty/lvgl/examples/assets/img_transform_avatar_15.d ./ThirdParty/lvgl/examples/assets/img_transform_avatar_15.o ./ThirdParty/lvgl/examples/assets/imgbtn_left.d ./ThirdParty/lvgl/examples/assets/imgbtn_left.o ./ThirdParty/lvgl/examples/assets/imgbtn_mid.d ./ThirdParty/lvgl/examples/assets/imgbtn_mid.o ./ThirdParty/lvgl/examples/assets/imgbtn_right.d ./ThirdParty/lvgl/examples/assets/imgbtn_right.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-assets

