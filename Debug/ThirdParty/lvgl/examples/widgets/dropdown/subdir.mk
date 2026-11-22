################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/widgets/dropdown/lv_example_dropdown_bind_value.c \
../ThirdParty/lvgl/examples/widgets/dropdown/lv_example_dropdown_direction.c \
../ThirdParty/lvgl/examples/widgets/dropdown/lv_example_dropdown_event.c \
../ThirdParty/lvgl/examples/widgets/dropdown/lv_example_dropdown_styling.c \
../ThirdParty/lvgl/examples/widgets/dropdown/lv_example_dropdown_text.c 

C_DEPS += \
./ThirdParty/lvgl/examples/widgets/dropdown/lv_example_dropdown_bind_value.d \
./ThirdParty/lvgl/examples/widgets/dropdown/lv_example_dropdown_direction.d \
./ThirdParty/lvgl/examples/widgets/dropdown/lv_example_dropdown_event.d \
./ThirdParty/lvgl/examples/widgets/dropdown/lv_example_dropdown_styling.d \
./ThirdParty/lvgl/examples/widgets/dropdown/lv_example_dropdown_text.d 

OBJS += \
./ThirdParty/lvgl/examples/widgets/dropdown/lv_example_dropdown_bind_value.o \
./ThirdParty/lvgl/examples/widgets/dropdown/lv_example_dropdown_direction.o \
./ThirdParty/lvgl/examples/widgets/dropdown/lv_example_dropdown_event.o \
./ThirdParty/lvgl/examples/widgets/dropdown/lv_example_dropdown_styling.o \
./ThirdParty/lvgl/examples/widgets/dropdown/lv_example_dropdown_text.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/widgets/dropdown/%.o: ../ThirdParty/lvgl/examples/widgets/dropdown/%.c ThirdParty/lvgl/examples/widgets/dropdown/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-dropdown

clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-dropdown:
	-$(RM) ./ThirdParty/lvgl/examples/widgets/dropdown/lv_example_dropdown_bind_value.d ./ThirdParty/lvgl/examples/widgets/dropdown/lv_example_dropdown_bind_value.o ./ThirdParty/lvgl/examples/widgets/dropdown/lv_example_dropdown_direction.d ./ThirdParty/lvgl/examples/widgets/dropdown/lv_example_dropdown_direction.o ./ThirdParty/lvgl/examples/widgets/dropdown/lv_example_dropdown_event.d ./ThirdParty/lvgl/examples/widgets/dropdown/lv_example_dropdown_event.o ./ThirdParty/lvgl/examples/widgets/dropdown/lv_example_dropdown_styling.d ./ThirdParty/lvgl/examples/widgets/dropdown/lv_example_dropdown_styling.o ./ThirdParty/lvgl/examples/widgets/dropdown/lv_example_dropdown_text.d ./ThirdParty/lvgl/examples/widgets/dropdown/lv_example_dropdown_text.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-dropdown

