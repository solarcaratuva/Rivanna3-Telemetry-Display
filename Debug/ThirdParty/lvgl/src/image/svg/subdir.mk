################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/image/svg/lv_svg.c \
../ThirdParty/lvgl/src/image/svg/lv_svg_decoder.c \
../ThirdParty/lvgl/src/image/svg/lv_svg_parser.c \
../ThirdParty/lvgl/src/image/svg/lv_svg_render.c \
../ThirdParty/lvgl/src/image/svg/lv_svg_token.c 

C_DEPS += \
./ThirdParty/lvgl/src/image/svg/lv_svg.d \
./ThirdParty/lvgl/src/image/svg/lv_svg_decoder.d \
./ThirdParty/lvgl/src/image/svg/lv_svg_parser.d \
./ThirdParty/lvgl/src/image/svg/lv_svg_render.d \
./ThirdParty/lvgl/src/image/svg/lv_svg_token.d 

OBJS += \
./ThirdParty/lvgl/src/image/svg/lv_svg.o \
./ThirdParty/lvgl/src/image/svg/lv_svg_decoder.o \
./ThirdParty/lvgl/src/image/svg/lv_svg_parser.o \
./ThirdParty/lvgl/src/image/svg/lv_svg_render.o \
./ThirdParty/lvgl/src/image/svg/lv_svg_token.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/image/svg/%.o: ../ThirdParty/lvgl/src/image/svg/%.c ThirdParty/lvgl/src/image/svg/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-image-2f-svg

clean-ThirdParty-2f-lvgl-2f-src-2f-image-2f-svg:
	-$(RM) ./ThirdParty/lvgl/src/image/svg/lv_svg.d ./ThirdParty/lvgl/src/image/svg/lv_svg.o ./ThirdParty/lvgl/src/image/svg/lv_svg_decoder.d ./ThirdParty/lvgl/src/image/svg/lv_svg_decoder.o ./ThirdParty/lvgl/src/image/svg/lv_svg_parser.d ./ThirdParty/lvgl/src/image/svg/lv_svg_parser.o ./ThirdParty/lvgl/src/image/svg/lv_svg_render.d ./ThirdParty/lvgl/src/image/svg/lv_svg_render.o ./ThirdParty/lvgl/src/image/svg/lv_svg_token.d ./ThirdParty/lvgl/src/image/svg/lv_svg_token.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-image-2f-svg

