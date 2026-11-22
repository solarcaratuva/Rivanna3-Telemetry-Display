################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/libs/tiny_ttf/lv_example_tiny_ttf_1.c \
../ThirdParty/lvgl/examples/libs/tiny_ttf/lv_example_tiny_ttf_2.c \
../ThirdParty/lvgl/examples/libs/tiny_ttf/lv_example_tiny_ttf_3.c \
../ThirdParty/lvgl/examples/libs/tiny_ttf/ubuntu_font.c 

C_DEPS += \
./ThirdParty/lvgl/examples/libs/tiny_ttf/lv_example_tiny_ttf_1.d \
./ThirdParty/lvgl/examples/libs/tiny_ttf/lv_example_tiny_ttf_2.d \
./ThirdParty/lvgl/examples/libs/tiny_ttf/lv_example_tiny_ttf_3.d \
./ThirdParty/lvgl/examples/libs/tiny_ttf/ubuntu_font.d 

OBJS += \
./ThirdParty/lvgl/examples/libs/tiny_ttf/lv_example_tiny_ttf_1.o \
./ThirdParty/lvgl/examples/libs/tiny_ttf/lv_example_tiny_ttf_2.o \
./ThirdParty/lvgl/examples/libs/tiny_ttf/lv_example_tiny_ttf_3.o \
./ThirdParty/lvgl/examples/libs/tiny_ttf/ubuntu_font.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/libs/tiny_ttf/%.o: ../ThirdParty/lvgl/examples/libs/tiny_ttf/%.c ThirdParty/lvgl/examples/libs/tiny_ttf/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-libs-2f-tiny_ttf

clean-ThirdParty-2f-lvgl-2f-examples-2f-libs-2f-tiny_ttf:
	-$(RM) ./ThirdParty/lvgl/examples/libs/tiny_ttf/lv_example_tiny_ttf_1.d ./ThirdParty/lvgl/examples/libs/tiny_ttf/lv_example_tiny_ttf_1.o ./ThirdParty/lvgl/examples/libs/tiny_ttf/lv_example_tiny_ttf_2.d ./ThirdParty/lvgl/examples/libs/tiny_ttf/lv_example_tiny_ttf_2.o ./ThirdParty/lvgl/examples/libs/tiny_ttf/lv_example_tiny_ttf_3.d ./ThirdParty/lvgl/examples/libs/tiny_ttf/lv_example_tiny_ttf_3.o ./ThirdParty/lvgl/examples/libs/tiny_ttf/ubuntu_font.d ./ThirdParty/lvgl/examples/libs/tiny_ttf/ubuntu_font.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-libs-2f-tiny_ttf

