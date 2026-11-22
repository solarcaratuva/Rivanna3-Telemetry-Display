################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/demos/benchmark/assets/img_benchmark_avatar.c \
../ThirdParty/lvgl/demos/benchmark/assets/img_benchmark_lvgl_logo_argb.c \
../ThirdParty/lvgl/demos/benchmark/assets/img_benchmark_lvgl_logo_rgb.c \
../ThirdParty/lvgl/demos/benchmark/assets/lv_font_benchmark_montserrat_12_aligned.c \
../ThirdParty/lvgl/demos/benchmark/assets/lv_font_benchmark_montserrat_14_aligned.c \
../ThirdParty/lvgl/demos/benchmark/assets/lv_font_benchmark_montserrat_16_aligned.c \
../ThirdParty/lvgl/demos/benchmark/assets/lv_font_benchmark_montserrat_18_aligned.c \
../ThirdParty/lvgl/demos/benchmark/assets/lv_font_benchmark_montserrat_20_aligned.c \
../ThirdParty/lvgl/demos/benchmark/assets/lv_font_benchmark_montserrat_24_aligned.c \
../ThirdParty/lvgl/demos/benchmark/assets/lv_font_benchmark_montserrat_26_aligned.c 

C_DEPS += \
./ThirdParty/lvgl/demos/benchmark/assets/img_benchmark_avatar.d \
./ThirdParty/lvgl/demos/benchmark/assets/img_benchmark_lvgl_logo_argb.d \
./ThirdParty/lvgl/demos/benchmark/assets/img_benchmark_lvgl_logo_rgb.d \
./ThirdParty/lvgl/demos/benchmark/assets/lv_font_benchmark_montserrat_12_aligned.d \
./ThirdParty/lvgl/demos/benchmark/assets/lv_font_benchmark_montserrat_14_aligned.d \
./ThirdParty/lvgl/demos/benchmark/assets/lv_font_benchmark_montserrat_16_aligned.d \
./ThirdParty/lvgl/demos/benchmark/assets/lv_font_benchmark_montserrat_18_aligned.d \
./ThirdParty/lvgl/demos/benchmark/assets/lv_font_benchmark_montserrat_20_aligned.d \
./ThirdParty/lvgl/demos/benchmark/assets/lv_font_benchmark_montserrat_24_aligned.d \
./ThirdParty/lvgl/demos/benchmark/assets/lv_font_benchmark_montserrat_26_aligned.d 

OBJS += \
./ThirdParty/lvgl/demos/benchmark/assets/img_benchmark_avatar.o \
./ThirdParty/lvgl/demos/benchmark/assets/img_benchmark_lvgl_logo_argb.o \
./ThirdParty/lvgl/demos/benchmark/assets/img_benchmark_lvgl_logo_rgb.o \
./ThirdParty/lvgl/demos/benchmark/assets/lv_font_benchmark_montserrat_12_aligned.o \
./ThirdParty/lvgl/demos/benchmark/assets/lv_font_benchmark_montserrat_14_aligned.o \
./ThirdParty/lvgl/demos/benchmark/assets/lv_font_benchmark_montserrat_16_aligned.o \
./ThirdParty/lvgl/demos/benchmark/assets/lv_font_benchmark_montserrat_18_aligned.o \
./ThirdParty/lvgl/demos/benchmark/assets/lv_font_benchmark_montserrat_20_aligned.o \
./ThirdParty/lvgl/demos/benchmark/assets/lv_font_benchmark_montserrat_24_aligned.o \
./ThirdParty/lvgl/demos/benchmark/assets/lv_font_benchmark_montserrat_26_aligned.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/demos/benchmark/assets/%.o: ../ThirdParty/lvgl/demos/benchmark/assets/%.c ThirdParty/lvgl/demos/benchmark/assets/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-demos-2f-benchmark-2f-assets

clean-ThirdParty-2f-lvgl-2f-demos-2f-benchmark-2f-assets:
	-$(RM) ./ThirdParty/lvgl/demos/benchmark/assets/img_benchmark_avatar.d ./ThirdParty/lvgl/demos/benchmark/assets/img_benchmark_avatar.o ./ThirdParty/lvgl/demos/benchmark/assets/img_benchmark_lvgl_logo_argb.d ./ThirdParty/lvgl/demos/benchmark/assets/img_benchmark_lvgl_logo_argb.o ./ThirdParty/lvgl/demos/benchmark/assets/img_benchmark_lvgl_logo_rgb.d ./ThirdParty/lvgl/demos/benchmark/assets/img_benchmark_lvgl_logo_rgb.o ./ThirdParty/lvgl/demos/benchmark/assets/lv_font_benchmark_montserrat_12_aligned.d ./ThirdParty/lvgl/demos/benchmark/assets/lv_font_benchmark_montserrat_12_aligned.o ./ThirdParty/lvgl/demos/benchmark/assets/lv_font_benchmark_montserrat_14_aligned.d ./ThirdParty/lvgl/demos/benchmark/assets/lv_font_benchmark_montserrat_14_aligned.o ./ThirdParty/lvgl/demos/benchmark/assets/lv_font_benchmark_montserrat_16_aligned.d ./ThirdParty/lvgl/demos/benchmark/assets/lv_font_benchmark_montserrat_16_aligned.o ./ThirdParty/lvgl/demos/benchmark/assets/lv_font_benchmark_montserrat_18_aligned.d ./ThirdParty/lvgl/demos/benchmark/assets/lv_font_benchmark_montserrat_18_aligned.o ./ThirdParty/lvgl/demos/benchmark/assets/lv_font_benchmark_montserrat_20_aligned.d ./ThirdParty/lvgl/demos/benchmark/assets/lv_font_benchmark_montserrat_20_aligned.o ./ThirdParty/lvgl/demos/benchmark/assets/lv_font_benchmark_montserrat_24_aligned.d ./ThirdParty/lvgl/demos/benchmark/assets/lv_font_benchmark_montserrat_24_aligned.o ./ThirdParty/lvgl/demos/benchmark/assets/lv_font_benchmark_montserrat_26_aligned.d ./ThirdParty/lvgl/demos/benchmark/assets/lv_font_benchmark_montserrat_26_aligned.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-demos-2f-benchmark-2f-assets

