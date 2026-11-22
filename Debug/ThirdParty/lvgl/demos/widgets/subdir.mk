################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/demos/widgets/lv_demo_widgets.c \
../ThirdParty/lvgl/demos/widgets/lv_demo_widgets_analytics.c \
../ThirdParty/lvgl/demos/widgets/lv_demo_widgets_components.c \
../ThirdParty/lvgl/demos/widgets/lv_demo_widgets_profile.c \
../ThirdParty/lvgl/demos/widgets/lv_demo_widgets_shop.c 

C_DEPS += \
./ThirdParty/lvgl/demos/widgets/lv_demo_widgets.d \
./ThirdParty/lvgl/demos/widgets/lv_demo_widgets_analytics.d \
./ThirdParty/lvgl/demos/widgets/lv_demo_widgets_components.d \
./ThirdParty/lvgl/demos/widgets/lv_demo_widgets_profile.d \
./ThirdParty/lvgl/demos/widgets/lv_demo_widgets_shop.d 

OBJS += \
./ThirdParty/lvgl/demos/widgets/lv_demo_widgets.o \
./ThirdParty/lvgl/demos/widgets/lv_demo_widgets_analytics.o \
./ThirdParty/lvgl/demos/widgets/lv_demo_widgets_components.o \
./ThirdParty/lvgl/demos/widgets/lv_demo_widgets_profile.o \
./ThirdParty/lvgl/demos/widgets/lv_demo_widgets_shop.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/demos/widgets/%.o: ../ThirdParty/lvgl/demos/widgets/%.c ThirdParty/lvgl/demos/widgets/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-demos-2f-widgets

clean-ThirdParty-2f-lvgl-2f-demos-2f-widgets:
	-$(RM) ./ThirdParty/lvgl/demos/widgets/lv_demo_widgets.d ./ThirdParty/lvgl/demos/widgets/lv_demo_widgets.o ./ThirdParty/lvgl/demos/widgets/lv_demo_widgets_analytics.d ./ThirdParty/lvgl/demos/widgets/lv_demo_widgets_analytics.o ./ThirdParty/lvgl/demos/widgets/lv_demo_widgets_components.d ./ThirdParty/lvgl/demos/widgets/lv_demo_widgets_components.o ./ThirdParty/lvgl/demos/widgets/lv_demo_widgets_profile.d ./ThirdParty/lvgl/demos/widgets/lv_demo_widgets_profile.o ./ThirdParty/lvgl/demos/widgets/lv_demo_widgets_shop.d ./ThirdParty/lvgl/demos/widgets/lv_demo_widgets_shop.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-demos-2f-widgets

