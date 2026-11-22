################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/demos/widgets/assets/img_clothes.c \
../ThirdParty/lvgl/demos/widgets/assets/img_demo_widgets_avatar.c \
../ThirdParty/lvgl/demos/widgets/assets/img_demo_widgets_needle.c \
../ThirdParty/lvgl/demos/widgets/assets/img_lvgl_logo.c 

C_DEPS += \
./ThirdParty/lvgl/demos/widgets/assets/img_clothes.d \
./ThirdParty/lvgl/demos/widgets/assets/img_demo_widgets_avatar.d \
./ThirdParty/lvgl/demos/widgets/assets/img_demo_widgets_needle.d \
./ThirdParty/lvgl/demos/widgets/assets/img_lvgl_logo.d 

OBJS += \
./ThirdParty/lvgl/demos/widgets/assets/img_clothes.o \
./ThirdParty/lvgl/demos/widgets/assets/img_demo_widgets_avatar.o \
./ThirdParty/lvgl/demos/widgets/assets/img_demo_widgets_needle.o \
./ThirdParty/lvgl/demos/widgets/assets/img_lvgl_logo.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/demos/widgets/assets/%.o: ../ThirdParty/lvgl/demos/widgets/assets/%.c ThirdParty/lvgl/demos/widgets/assets/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-demos-2f-widgets-2f-assets

clean-ThirdParty-2f-lvgl-2f-demos-2f-widgets-2f-assets:
	-$(RM) ./ThirdParty/lvgl/demos/widgets/assets/img_clothes.d ./ThirdParty/lvgl/demos/widgets/assets/img_clothes.o ./ThirdParty/lvgl/demos/widgets/assets/img_demo_widgets_avatar.d ./ThirdParty/lvgl/demos/widgets/assets/img_demo_widgets_avatar.o ./ThirdParty/lvgl/demos/widgets/assets/img_demo_widgets_needle.d ./ThirdParty/lvgl/demos/widgets/assets/img_demo_widgets_needle.o ./ThirdParty/lvgl/demos/widgets/assets/img_lvgl_logo.d ./ThirdParty/lvgl/demos/widgets/assets/img_lvgl_logo.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-demos-2f-widgets-2f-assets

