################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/core/lv_group.c \
../ThirdParty/lvgl/src/core/lv_obj.c \
../ThirdParty/lvgl/src/core/lv_obj_class.c \
../ThirdParty/lvgl/src/core/lv_obj_draw.c \
../ThirdParty/lvgl/src/core/lv_obj_event.c \
../ThirdParty/lvgl/src/core/lv_obj_id_builtin.c \
../ThirdParty/lvgl/src/core/lv_obj_pos.c \
../ThirdParty/lvgl/src/core/lv_obj_property.c \
../ThirdParty/lvgl/src/core/lv_obj_scroll.c \
../ThirdParty/lvgl/src/core/lv_obj_style.c \
../ThirdParty/lvgl/src/core/lv_obj_style_gen.c \
../ThirdParty/lvgl/src/core/lv_obj_tree.c \
../ThirdParty/lvgl/src/core/lv_observer.c \
../ThirdParty/lvgl/src/core/lv_refr.c 

C_DEPS += \
./ThirdParty/lvgl/src/core/lv_group.d \
./ThirdParty/lvgl/src/core/lv_obj.d \
./ThirdParty/lvgl/src/core/lv_obj_class.d \
./ThirdParty/lvgl/src/core/lv_obj_draw.d \
./ThirdParty/lvgl/src/core/lv_obj_event.d \
./ThirdParty/lvgl/src/core/lv_obj_id_builtin.d \
./ThirdParty/lvgl/src/core/lv_obj_pos.d \
./ThirdParty/lvgl/src/core/lv_obj_property.d \
./ThirdParty/lvgl/src/core/lv_obj_scroll.d \
./ThirdParty/lvgl/src/core/lv_obj_style.d \
./ThirdParty/lvgl/src/core/lv_obj_style_gen.d \
./ThirdParty/lvgl/src/core/lv_obj_tree.d \
./ThirdParty/lvgl/src/core/lv_observer.d \
./ThirdParty/lvgl/src/core/lv_refr.d 

OBJS += \
./ThirdParty/lvgl/src/core/lv_group.o \
./ThirdParty/lvgl/src/core/lv_obj.o \
./ThirdParty/lvgl/src/core/lv_obj_class.o \
./ThirdParty/lvgl/src/core/lv_obj_draw.o \
./ThirdParty/lvgl/src/core/lv_obj_event.o \
./ThirdParty/lvgl/src/core/lv_obj_id_builtin.o \
./ThirdParty/lvgl/src/core/lv_obj_pos.o \
./ThirdParty/lvgl/src/core/lv_obj_property.o \
./ThirdParty/lvgl/src/core/lv_obj_scroll.o \
./ThirdParty/lvgl/src/core/lv_obj_style.o \
./ThirdParty/lvgl/src/core/lv_obj_style_gen.o \
./ThirdParty/lvgl/src/core/lv_obj_tree.o \
./ThirdParty/lvgl/src/core/lv_observer.o \
./ThirdParty/lvgl/src/core/lv_refr.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/core/%.o: ../ThirdParty/lvgl/src/core/%.c ThirdParty/lvgl/src/core/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-core

clean-ThirdParty-2f-lvgl-2f-src-2f-core:
	-$(RM) ./ThirdParty/lvgl/src/core/lv_group.d ./ThirdParty/lvgl/src/core/lv_group.o ./ThirdParty/lvgl/src/core/lv_obj.d ./ThirdParty/lvgl/src/core/lv_obj.o ./ThirdParty/lvgl/src/core/lv_obj_class.d ./ThirdParty/lvgl/src/core/lv_obj_class.o ./ThirdParty/lvgl/src/core/lv_obj_draw.d ./ThirdParty/lvgl/src/core/lv_obj_draw.o ./ThirdParty/lvgl/src/core/lv_obj_event.d ./ThirdParty/lvgl/src/core/lv_obj_event.o ./ThirdParty/lvgl/src/core/lv_obj_id_builtin.d ./ThirdParty/lvgl/src/core/lv_obj_id_builtin.o ./ThirdParty/lvgl/src/core/lv_obj_pos.d ./ThirdParty/lvgl/src/core/lv_obj_pos.o ./ThirdParty/lvgl/src/core/lv_obj_property.d ./ThirdParty/lvgl/src/core/lv_obj_property.o ./ThirdParty/lvgl/src/core/lv_obj_scroll.d ./ThirdParty/lvgl/src/core/lv_obj_scroll.o ./ThirdParty/lvgl/src/core/lv_obj_style.d ./ThirdParty/lvgl/src/core/lv_obj_style.o ./ThirdParty/lvgl/src/core/lv_obj_style_gen.d ./ThirdParty/lvgl/src/core/lv_obj_style_gen.o ./ThirdParty/lvgl/src/core/lv_obj_tree.d ./ThirdParty/lvgl/src/core/lv_obj_tree.o ./ThirdParty/lvgl/src/core/lv_observer.d ./ThirdParty/lvgl/src/core/lv_observer.o ./ThirdParty/lvgl/src/core/lv_refr.d ./ThirdParty/lvgl/src/core/lv_refr.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-core

