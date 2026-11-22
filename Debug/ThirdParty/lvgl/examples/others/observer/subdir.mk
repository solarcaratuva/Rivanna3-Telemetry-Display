################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/others/observer/lv_example_observer_1.c \
../ThirdParty/lvgl/examples/others/observer/lv_example_observer_2.c \
../ThirdParty/lvgl/examples/others/observer/lv_example_observer_3.c \
../ThirdParty/lvgl/examples/others/observer/lv_example_observer_4.c \
../ThirdParty/lvgl/examples/others/observer/lv_example_observer_5.c \
../ThirdParty/lvgl/examples/others/observer/lv_example_observer_6.c \
../ThirdParty/lvgl/examples/others/observer/lv_example_observer_7.c 

C_DEPS += \
./ThirdParty/lvgl/examples/others/observer/lv_example_observer_1.d \
./ThirdParty/lvgl/examples/others/observer/lv_example_observer_2.d \
./ThirdParty/lvgl/examples/others/observer/lv_example_observer_3.d \
./ThirdParty/lvgl/examples/others/observer/lv_example_observer_4.d \
./ThirdParty/lvgl/examples/others/observer/lv_example_observer_5.d \
./ThirdParty/lvgl/examples/others/observer/lv_example_observer_6.d \
./ThirdParty/lvgl/examples/others/observer/lv_example_observer_7.d 

OBJS += \
./ThirdParty/lvgl/examples/others/observer/lv_example_observer_1.o \
./ThirdParty/lvgl/examples/others/observer/lv_example_observer_2.o \
./ThirdParty/lvgl/examples/others/observer/lv_example_observer_3.o \
./ThirdParty/lvgl/examples/others/observer/lv_example_observer_4.o \
./ThirdParty/lvgl/examples/others/observer/lv_example_observer_5.o \
./ThirdParty/lvgl/examples/others/observer/lv_example_observer_6.o \
./ThirdParty/lvgl/examples/others/observer/lv_example_observer_7.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/others/observer/%.o: ../ThirdParty/lvgl/examples/others/observer/%.c ThirdParty/lvgl/examples/others/observer/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-others-2f-observer

clean-ThirdParty-2f-lvgl-2f-examples-2f-others-2f-observer:
	-$(RM) ./ThirdParty/lvgl/examples/others/observer/lv_example_observer_1.d ./ThirdParty/lvgl/examples/others/observer/lv_example_observer_1.o ./ThirdParty/lvgl/examples/others/observer/lv_example_observer_2.d ./ThirdParty/lvgl/examples/others/observer/lv_example_observer_2.o ./ThirdParty/lvgl/examples/others/observer/lv_example_observer_3.d ./ThirdParty/lvgl/examples/others/observer/lv_example_observer_3.o ./ThirdParty/lvgl/examples/others/observer/lv_example_observer_4.d ./ThirdParty/lvgl/examples/others/observer/lv_example_observer_4.o ./ThirdParty/lvgl/examples/others/observer/lv_example_observer_5.d ./ThirdParty/lvgl/examples/others/observer/lv_example_observer_5.o ./ThirdParty/lvgl/examples/others/observer/lv_example_observer_6.d ./ThirdParty/lvgl/examples/others/observer/lv_example_observer_6.o ./ThirdParty/lvgl/examples/others/observer/lv_example_observer_7.d ./ThirdParty/lvgl/examples/others/observer/lv_example_observer_7.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-others-2f-observer

