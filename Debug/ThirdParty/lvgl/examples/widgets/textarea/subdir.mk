################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/widgets/textarea/lv_example_textarea_buttonmatrix.c \
../ThirdParty/lvgl/examples/widgets/textarea/lv_example_textarea_cursor.c \
../ThirdParty/lvgl/examples/widgets/textarea/lv_example_textarea_format.c \
../ThirdParty/lvgl/examples/widgets/textarea/lv_example_textarea_password.c \
../ThirdParty/lvgl/examples/widgets/textarea/lv_example_textarea_placeholder.c 

C_DEPS += \
./ThirdParty/lvgl/examples/widgets/textarea/lv_example_textarea_buttonmatrix.d \
./ThirdParty/lvgl/examples/widgets/textarea/lv_example_textarea_cursor.d \
./ThirdParty/lvgl/examples/widgets/textarea/lv_example_textarea_format.d \
./ThirdParty/lvgl/examples/widgets/textarea/lv_example_textarea_password.d \
./ThirdParty/lvgl/examples/widgets/textarea/lv_example_textarea_placeholder.d 

OBJS += \
./ThirdParty/lvgl/examples/widgets/textarea/lv_example_textarea_buttonmatrix.o \
./ThirdParty/lvgl/examples/widgets/textarea/lv_example_textarea_cursor.o \
./ThirdParty/lvgl/examples/widgets/textarea/lv_example_textarea_format.o \
./ThirdParty/lvgl/examples/widgets/textarea/lv_example_textarea_password.o \
./ThirdParty/lvgl/examples/widgets/textarea/lv_example_textarea_placeholder.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/widgets/textarea/%.o: ../ThirdParty/lvgl/examples/widgets/textarea/%.c ThirdParty/lvgl/examples/widgets/textarea/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-textarea

clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-textarea:
	-$(RM) ./ThirdParty/lvgl/examples/widgets/textarea/lv_example_textarea_buttonmatrix.d ./ThirdParty/lvgl/examples/widgets/textarea/lv_example_textarea_buttonmatrix.o ./ThirdParty/lvgl/examples/widgets/textarea/lv_example_textarea_cursor.d ./ThirdParty/lvgl/examples/widgets/textarea/lv_example_textarea_cursor.o ./ThirdParty/lvgl/examples/widgets/textarea/lv_example_textarea_format.d ./ThirdParty/lvgl/examples/widgets/textarea/lv_example_textarea_format.o ./ThirdParty/lvgl/examples/widgets/textarea/lv_example_textarea_password.d ./ThirdParty/lvgl/examples/widgets/textarea/lv_example_textarea_password.o ./ThirdParty/lvgl/examples/widgets/textarea/lv_example_textarea_placeholder.d ./ThirdParty/lvgl/examples/widgets/textarea/lv_example_textarea_placeholder.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-textarea

