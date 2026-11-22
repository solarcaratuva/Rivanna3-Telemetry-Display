################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/env_support/pikascript/pika_lv_point_t.c \
../ThirdParty/lvgl/env_support/pikascript/pika_lv_timer_t.c \
../ThirdParty/lvgl/env_support/pikascript/pika_lv_wegit.c \
../ThirdParty/lvgl/env_support/pikascript/pika_lvgl.c \
../ThirdParty/lvgl/env_support/pikascript/pika_lvgl_indev_t.c \
../ThirdParty/lvgl/env_support/pikascript/pika_lvgl_lv_event.c \
../ThirdParty/lvgl/env_support/pikascript/pika_lvgl_lv_obj.c \
../ThirdParty/lvgl/env_support/pikascript/pika_lvgl_lv_style_t.c 

C_DEPS += \
./ThirdParty/lvgl/env_support/pikascript/pika_lv_point_t.d \
./ThirdParty/lvgl/env_support/pikascript/pika_lv_timer_t.d \
./ThirdParty/lvgl/env_support/pikascript/pika_lv_wegit.d \
./ThirdParty/lvgl/env_support/pikascript/pika_lvgl.d \
./ThirdParty/lvgl/env_support/pikascript/pika_lvgl_indev_t.d \
./ThirdParty/lvgl/env_support/pikascript/pika_lvgl_lv_event.d \
./ThirdParty/lvgl/env_support/pikascript/pika_lvgl_lv_obj.d \
./ThirdParty/lvgl/env_support/pikascript/pika_lvgl_lv_style_t.d 

OBJS += \
./ThirdParty/lvgl/env_support/pikascript/pika_lv_point_t.o \
./ThirdParty/lvgl/env_support/pikascript/pika_lv_timer_t.o \
./ThirdParty/lvgl/env_support/pikascript/pika_lv_wegit.o \
./ThirdParty/lvgl/env_support/pikascript/pika_lvgl.o \
./ThirdParty/lvgl/env_support/pikascript/pika_lvgl_indev_t.o \
./ThirdParty/lvgl/env_support/pikascript/pika_lvgl_lv_event.o \
./ThirdParty/lvgl/env_support/pikascript/pika_lvgl_lv_obj.o \
./ThirdParty/lvgl/env_support/pikascript/pika_lvgl_lv_style_t.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/env_support/pikascript/%.o: ../ThirdParty/lvgl/env_support/pikascript/%.c ThirdParty/lvgl/env_support/pikascript/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-env_support-2f-pikascript

clean-ThirdParty-2f-lvgl-2f-env_support-2f-pikascript:
	-$(RM) ./ThirdParty/lvgl/env_support/pikascript/pika_lv_point_t.d ./ThirdParty/lvgl/env_support/pikascript/pika_lv_point_t.o ./ThirdParty/lvgl/env_support/pikascript/pika_lv_timer_t.d ./ThirdParty/lvgl/env_support/pikascript/pika_lv_timer_t.o ./ThirdParty/lvgl/env_support/pikascript/pika_lv_wegit.d ./ThirdParty/lvgl/env_support/pikascript/pika_lv_wegit.o ./ThirdParty/lvgl/env_support/pikascript/pika_lvgl.d ./ThirdParty/lvgl/env_support/pikascript/pika_lvgl.o ./ThirdParty/lvgl/env_support/pikascript/pika_lvgl_indev_t.d ./ThirdParty/lvgl/env_support/pikascript/pika_lvgl_indev_t.o ./ThirdParty/lvgl/env_support/pikascript/pika_lvgl_lv_event.d ./ThirdParty/lvgl/env_support/pikascript/pika_lvgl_lv_event.o ./ThirdParty/lvgl/env_support/pikascript/pika_lvgl_lv_obj.d ./ThirdParty/lvgl/env_support/pikascript/pika_lvgl_lv_obj.o ./ThirdParty/lvgl/env_support/pikascript/pika_lvgl_lv_style_t.d ./ThirdParty/lvgl/env_support/pikascript/pika_lvgl_lv_style_t.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-env_support-2f-pikascript

