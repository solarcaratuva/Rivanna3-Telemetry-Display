################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/libs/svg/lv_example_svg_1.c \
../ThirdParty/lvgl/examples/libs/svg/lv_example_svg_2.c \
../ThirdParty/lvgl/examples/libs/svg/lv_example_svg_3.c 

C_DEPS += \
./ThirdParty/lvgl/examples/libs/svg/lv_example_svg_1.d \
./ThirdParty/lvgl/examples/libs/svg/lv_example_svg_2.d \
./ThirdParty/lvgl/examples/libs/svg/lv_example_svg_3.d 

OBJS += \
./ThirdParty/lvgl/examples/libs/svg/lv_example_svg_1.o \
./ThirdParty/lvgl/examples/libs/svg/lv_example_svg_2.o \
./ThirdParty/lvgl/examples/libs/svg/lv_example_svg_3.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/libs/svg/%.o: ../ThirdParty/lvgl/examples/libs/svg/%.c ThirdParty/lvgl/examples/libs/svg/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-libs-2f-svg

clean-ThirdParty-2f-lvgl-2f-examples-2f-libs-2f-svg:
	-$(RM) ./ThirdParty/lvgl/examples/libs/svg/lv_example_svg_1.d ./ThirdParty/lvgl/examples/libs/svg/lv_example_svg_1.o ./ThirdParty/lvgl/examples/libs/svg/lv_example_svg_2.d ./ThirdParty/lvgl/examples/libs/svg/lv_example_svg_2.o ./ThirdParty/lvgl/examples/libs/svg/lv_example_svg_3.d ./ThirdParty/lvgl/examples/libs/svg/lv_example_svg_3.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-libs-2f-svg

