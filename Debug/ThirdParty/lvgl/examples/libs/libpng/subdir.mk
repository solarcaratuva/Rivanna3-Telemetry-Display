################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/libs/libpng/img_png_demo.c \
../ThirdParty/lvgl/examples/libs/libpng/lv_example_libpng_1.c 

C_DEPS += \
./ThirdParty/lvgl/examples/libs/libpng/img_png_demo.d \
./ThirdParty/lvgl/examples/libs/libpng/lv_example_libpng_1.d 

OBJS += \
./ThirdParty/lvgl/examples/libs/libpng/img_png_demo.o \
./ThirdParty/lvgl/examples/libs/libpng/lv_example_libpng_1.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/libs/libpng/%.o: ../ThirdParty/lvgl/examples/libs/libpng/%.c ThirdParty/lvgl/examples/libs/libpng/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-libs-2f-libpng

clean-ThirdParty-2f-lvgl-2f-examples-2f-libs-2f-libpng:
	-$(RM) ./ThirdParty/lvgl/examples/libs/libpng/img_png_demo.d ./ThirdParty/lvgl/examples/libs/libpng/img_png_demo.o ./ThirdParty/lvgl/examples/libs/libpng/lv_example_libpng_1.d ./ThirdParty/lvgl/examples/libs/libpng/lv_example_libpng_1.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-libs-2f-libpng

