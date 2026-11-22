################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/libs/rlottie/lv_example_rlottie_1.c \
../ThirdParty/lvgl/examples/libs/rlottie/lv_example_rlottie_2.c \
../ThirdParty/lvgl/examples/libs/rlottie/lv_example_rlottie_approve.c 

C_DEPS += \
./ThirdParty/lvgl/examples/libs/rlottie/lv_example_rlottie_1.d \
./ThirdParty/lvgl/examples/libs/rlottie/lv_example_rlottie_2.d \
./ThirdParty/lvgl/examples/libs/rlottie/lv_example_rlottie_approve.d 

OBJS += \
./ThirdParty/lvgl/examples/libs/rlottie/lv_example_rlottie_1.o \
./ThirdParty/lvgl/examples/libs/rlottie/lv_example_rlottie_2.o \
./ThirdParty/lvgl/examples/libs/rlottie/lv_example_rlottie_approve.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/libs/rlottie/%.o: ../ThirdParty/lvgl/examples/libs/rlottie/%.c ThirdParty/lvgl/examples/libs/rlottie/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-libs-2f-rlottie

clean-ThirdParty-2f-lvgl-2f-examples-2f-libs-2f-rlottie:
	-$(RM) ./ThirdParty/lvgl/examples/libs/rlottie/lv_example_rlottie_1.d ./ThirdParty/lvgl/examples/libs/rlottie/lv_example_rlottie_1.o ./ThirdParty/lvgl/examples/libs/rlottie/lv_example_rlottie_2.d ./ThirdParty/lvgl/examples/libs/rlottie/lv_example_rlottie_2.o ./ThirdParty/lvgl/examples/libs/rlottie/lv_example_rlottie_approve.d ./ThirdParty/lvgl/examples/libs/rlottie/lv_example_rlottie_approve.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-libs-2f-rlottie

