################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/widgets/lottie/lv_example_lottie_approve.c \
../ThirdParty/lvgl/examples/widgets/lottie/lv_example_lottie_from_data.c \
../ThirdParty/lvgl/examples/widgets/lottie/lv_example_lottie_from_file.c 

C_DEPS += \
./ThirdParty/lvgl/examples/widgets/lottie/lv_example_lottie_approve.d \
./ThirdParty/lvgl/examples/widgets/lottie/lv_example_lottie_from_data.d \
./ThirdParty/lvgl/examples/widgets/lottie/lv_example_lottie_from_file.d 

OBJS += \
./ThirdParty/lvgl/examples/widgets/lottie/lv_example_lottie_approve.o \
./ThirdParty/lvgl/examples/widgets/lottie/lv_example_lottie_from_data.o \
./ThirdParty/lvgl/examples/widgets/lottie/lv_example_lottie_from_file.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/widgets/lottie/%.o: ../ThirdParty/lvgl/examples/widgets/lottie/%.c ThirdParty/lvgl/examples/widgets/lottie/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-lottie

clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-lottie:
	-$(RM) ./ThirdParty/lvgl/examples/widgets/lottie/lv_example_lottie_approve.d ./ThirdParty/lvgl/examples/widgets/lottie/lv_example_lottie_approve.o ./ThirdParty/lvgl/examples/widgets/lottie/lv_example_lottie_from_data.d ./ThirdParty/lvgl/examples/widgets/lottie/lv_example_lottie_from_data.o ./ThirdParty/lvgl/examples/widgets/lottie/lv_example_lottie_from_file.d ./ThirdParty/lvgl/examples/widgets/lottie/lv_example_lottie_from_file.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-lottie

