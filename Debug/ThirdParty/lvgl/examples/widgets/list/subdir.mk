################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/widgets/list/lv_example_list_reorder.c \
../ThirdParty/lvgl/examples/widgets/list/lv_example_list_sections.c 

C_DEPS += \
./ThirdParty/lvgl/examples/widgets/list/lv_example_list_reorder.d \
./ThirdParty/lvgl/examples/widgets/list/lv_example_list_sections.d 

OBJS += \
./ThirdParty/lvgl/examples/widgets/list/lv_example_list_reorder.o \
./ThirdParty/lvgl/examples/widgets/list/lv_example_list_sections.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/widgets/list/%.o: ../ThirdParty/lvgl/examples/widgets/list/%.c ThirdParty/lvgl/examples/widgets/list/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-list

clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-list:
	-$(RM) ./ThirdParty/lvgl/examples/widgets/list/lv_example_list_reorder.d ./ThirdParty/lvgl/examples/widgets/list/lv_example_list_reorder.o ./ThirdParty/lvgl/examples/widgets/list/lv_example_list_sections.d ./ThirdParty/lvgl/examples/widgets/list/lv_example_list_sections.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-list

