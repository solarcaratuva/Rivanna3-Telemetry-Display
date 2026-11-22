################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite.c \
../ThirdParty/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_image.c \
../ThirdParty/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_matrix.c \
../ThirdParty/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_path.c \
../ThirdParty/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_stroke.c 

C_DEPS += \
./ThirdParty/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite.d \
./ThirdParty/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_image.d \
./ThirdParty/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_matrix.d \
./ThirdParty/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_path.d \
./ThirdParty/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_stroke.d 

OBJS += \
./ThirdParty/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite.o \
./ThirdParty/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_image.o \
./ThirdParty/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_matrix.o \
./ThirdParty/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_path.o \
./ThirdParty/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_stroke.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/libs/vg_lite_driver/VGLite/%.o: ../ThirdParty/lvgl/src/libs/vg_lite_driver/VGLite/%.c ThirdParty/lvgl/src/libs/vg_lite_driver/VGLite/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-libs-2f-vg_lite_driver-2f-VGLite

clean-ThirdParty-2f-lvgl-2f-src-2f-libs-2f-vg_lite_driver-2f-VGLite:
	-$(RM) ./ThirdParty/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite.d ./ThirdParty/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite.o ./ThirdParty/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_image.d ./ThirdParty/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_image.o ./ThirdParty/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_matrix.d ./ThirdParty/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_matrix.o ./ThirdParty/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_path.d ./ThirdParty/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_path.o ./ThirdParty/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_stroke.d ./ThirdParty/lvgl/src/libs/vg_lite_driver/VGLite/vg_lite_stroke.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-libs-2f-vg_lite_driver-2f-VGLite

