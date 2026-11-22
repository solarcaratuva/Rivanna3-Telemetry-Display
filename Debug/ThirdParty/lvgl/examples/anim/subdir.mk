################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/anim/lv_example_anim_1.c \
../ThirdParty/lvgl/examples/anim/lv_example_anim_2.c \
../ThirdParty/lvgl/examples/anim/lv_example_anim_3.c \
../ThirdParty/lvgl/examples/anim/lv_example_anim_4.c \
../ThirdParty/lvgl/examples/anim/lv_example_anim_timeline_1.c 

C_DEPS += \
./ThirdParty/lvgl/examples/anim/lv_example_anim_1.d \
./ThirdParty/lvgl/examples/anim/lv_example_anim_2.d \
./ThirdParty/lvgl/examples/anim/lv_example_anim_3.d \
./ThirdParty/lvgl/examples/anim/lv_example_anim_4.d \
./ThirdParty/lvgl/examples/anim/lv_example_anim_timeline_1.d 

OBJS += \
./ThirdParty/lvgl/examples/anim/lv_example_anim_1.o \
./ThirdParty/lvgl/examples/anim/lv_example_anim_2.o \
./ThirdParty/lvgl/examples/anim/lv_example_anim_3.o \
./ThirdParty/lvgl/examples/anim/lv_example_anim_4.o \
./ThirdParty/lvgl/examples/anim/lv_example_anim_timeline_1.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/anim/%.o: ../ThirdParty/lvgl/examples/anim/%.c ThirdParty/lvgl/examples/anim/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-anim

clean-ThirdParty-2f-lvgl-2f-examples-2f-anim:
	-$(RM) ./ThirdParty/lvgl/examples/anim/lv_example_anim_1.d ./ThirdParty/lvgl/examples/anim/lv_example_anim_1.o ./ThirdParty/lvgl/examples/anim/lv_example_anim_2.d ./ThirdParty/lvgl/examples/anim/lv_example_anim_2.o ./ThirdParty/lvgl/examples/anim/lv_example_anim_3.d ./ThirdParty/lvgl/examples/anim/lv_example_anim_3.o ./ThirdParty/lvgl/examples/anim/lv_example_anim_4.d ./ThirdParty/lvgl/examples/anim/lv_example_anim_4.o ./ThirdParty/lvgl/examples/anim/lv_example_anim_timeline_1.d ./ThirdParty/lvgl/examples/anim/lv_example_anim_timeline_1.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-anim

