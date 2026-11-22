################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/layouts/split/lv_example_split.c \
../ThirdParty/lvgl/examples/layouts/split/lv_example_split_vertical.c 

C_DEPS += \
./ThirdParty/lvgl/examples/layouts/split/lv_example_split.d \
./ThirdParty/lvgl/examples/layouts/split/lv_example_split_vertical.d 

OBJS += \
./ThirdParty/lvgl/examples/layouts/split/lv_example_split.o \
./ThirdParty/lvgl/examples/layouts/split/lv_example_split_vertical.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/layouts/split/%.o: ../ThirdParty/lvgl/examples/layouts/split/%.c ThirdParty/lvgl/examples/layouts/split/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-layouts-2f-split

clean-ThirdParty-2f-lvgl-2f-examples-2f-layouts-2f-split:
	-$(RM) ./ThirdParty/lvgl/examples/layouts/split/lv_example_split.d ./ThirdParty/lvgl/examples/layouts/split/lv_example_split.o ./ThirdParty/lvgl/examples/layouts/split/lv_example_split_vertical.d ./ThirdParty/lvgl/examples/layouts/split/lv_example_split_vertical.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-layouts-2f-split

