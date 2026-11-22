################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/libs/freetype/lv_example_freetype_1.c \
../ThirdParty/lvgl/examples/libs/freetype/lv_example_freetype_2.c \
../ThirdParty/lvgl/examples/libs/freetype/lv_example_freetype_3.c 

C_DEPS += \
./ThirdParty/lvgl/examples/libs/freetype/lv_example_freetype_1.d \
./ThirdParty/lvgl/examples/libs/freetype/lv_example_freetype_2.d \
./ThirdParty/lvgl/examples/libs/freetype/lv_example_freetype_3.d 

OBJS += \
./ThirdParty/lvgl/examples/libs/freetype/lv_example_freetype_1.o \
./ThirdParty/lvgl/examples/libs/freetype/lv_example_freetype_2.o \
./ThirdParty/lvgl/examples/libs/freetype/lv_example_freetype_3.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/libs/freetype/%.o: ../ThirdParty/lvgl/examples/libs/freetype/%.c ThirdParty/lvgl/examples/libs/freetype/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-libs-2f-freetype

clean-ThirdParty-2f-lvgl-2f-examples-2f-libs-2f-freetype:
	-$(RM) ./ThirdParty/lvgl/examples/libs/freetype/lv_example_freetype_1.d ./ThirdParty/lvgl/examples/libs/freetype/lv_example_freetype_1.o ./ThirdParty/lvgl/examples/libs/freetype/lv_example_freetype_2.d ./ThirdParty/lvgl/examples/libs/freetype/lv_example_freetype_2.o ./ThirdParty/lvgl/examples/libs/freetype/lv_example_freetype_3.d ./ThirdParty/lvgl/examples/libs/freetype/lv_example_freetype_3.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-libs-2f-freetype

