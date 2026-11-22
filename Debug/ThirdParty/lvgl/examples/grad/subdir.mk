################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/grad/lv_example_grad_1.c \
../ThirdParty/lvgl/examples/grad/lv_example_grad_2.c \
../ThirdParty/lvgl/examples/grad/lv_example_grad_3.c \
../ThirdParty/lvgl/examples/grad/lv_example_grad_4.c 

C_DEPS += \
./ThirdParty/lvgl/examples/grad/lv_example_grad_1.d \
./ThirdParty/lvgl/examples/grad/lv_example_grad_2.d \
./ThirdParty/lvgl/examples/grad/lv_example_grad_3.d \
./ThirdParty/lvgl/examples/grad/lv_example_grad_4.d 

OBJS += \
./ThirdParty/lvgl/examples/grad/lv_example_grad_1.o \
./ThirdParty/lvgl/examples/grad/lv_example_grad_2.o \
./ThirdParty/lvgl/examples/grad/lv_example_grad_3.o \
./ThirdParty/lvgl/examples/grad/lv_example_grad_4.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/grad/%.o: ../ThirdParty/lvgl/examples/grad/%.c ThirdParty/lvgl/examples/grad/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-grad

clean-ThirdParty-2f-lvgl-2f-examples-2f-grad:
	-$(RM) ./ThirdParty/lvgl/examples/grad/lv_example_grad_1.d ./ThirdParty/lvgl/examples/grad/lv_example_grad_1.o ./ThirdParty/lvgl/examples/grad/lv_example_grad_2.d ./ThirdParty/lvgl/examples/grad/lv_example_grad_2.o ./ThirdParty/lvgl/examples/grad/lv_example_grad_3.d ./ThirdParty/lvgl/examples/grad/lv_example_grad_3.o ./ThirdParty/lvgl/examples/grad/lv_example_grad_4.d ./ThirdParty/lvgl/examples/grad/lv_example_grad_4.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-grad

