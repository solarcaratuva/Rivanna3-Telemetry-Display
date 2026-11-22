################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/widgets/obj/lv_example_obj_bind_style.c \
../ThirdParty/lvgl/examples/widgets/obj/lv_example_obj_draggable.c \
../ThirdParty/lvgl/examples/widgets/obj/lv_example_obj_transform.c 

C_DEPS += \
./ThirdParty/lvgl/examples/widgets/obj/lv_example_obj_bind_style.d \
./ThirdParty/lvgl/examples/widgets/obj/lv_example_obj_draggable.d \
./ThirdParty/lvgl/examples/widgets/obj/lv_example_obj_transform.d 

OBJS += \
./ThirdParty/lvgl/examples/widgets/obj/lv_example_obj_bind_style.o \
./ThirdParty/lvgl/examples/widgets/obj/lv_example_obj_draggable.o \
./ThirdParty/lvgl/examples/widgets/obj/lv_example_obj_transform.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/widgets/obj/%.o: ../ThirdParty/lvgl/examples/widgets/obj/%.c ThirdParty/lvgl/examples/widgets/obj/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-obj

clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-obj:
	-$(RM) ./ThirdParty/lvgl/examples/widgets/obj/lv_example_obj_bind_style.d ./ThirdParty/lvgl/examples/widgets/obj/lv_example_obj_bind_style.o ./ThirdParty/lvgl/examples/widgets/obj/lv_example_obj_draggable.d ./ThirdParty/lvgl/examples/widgets/obj/lv_example_obj_draggable.o ./ThirdParty/lvgl/examples/widgets/obj/lv_example_obj_transform.d ./ThirdParty/lvgl/examples/widgets/obj/lv_example_obj_transform.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-obj

