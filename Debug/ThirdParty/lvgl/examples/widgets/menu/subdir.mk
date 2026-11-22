################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/widgets/menu/lv_example_menu_custom_back_button.c \
../ThirdParty/lvgl/examples/widgets/menu/lv_example_menu_floating_button.c \
../ThirdParty/lvgl/examples/widgets/menu/lv_example_menu_navigation.c \
../ThirdParty/lvgl/examples/widgets/menu/lv_example_menu_root_back_button.c \
../ThirdParty/lvgl/examples/widgets/menu/lv_example_menu_sidebar.c \
../ThirdParty/lvgl/examples/widgets/menu/lv_example_menu_sub_page.c 

C_DEPS += \
./ThirdParty/lvgl/examples/widgets/menu/lv_example_menu_custom_back_button.d \
./ThirdParty/lvgl/examples/widgets/menu/lv_example_menu_floating_button.d \
./ThirdParty/lvgl/examples/widgets/menu/lv_example_menu_navigation.d \
./ThirdParty/lvgl/examples/widgets/menu/lv_example_menu_root_back_button.d \
./ThirdParty/lvgl/examples/widgets/menu/lv_example_menu_sidebar.d \
./ThirdParty/lvgl/examples/widgets/menu/lv_example_menu_sub_page.d 

OBJS += \
./ThirdParty/lvgl/examples/widgets/menu/lv_example_menu_custom_back_button.o \
./ThirdParty/lvgl/examples/widgets/menu/lv_example_menu_floating_button.o \
./ThirdParty/lvgl/examples/widgets/menu/lv_example_menu_navigation.o \
./ThirdParty/lvgl/examples/widgets/menu/lv_example_menu_root_back_button.o \
./ThirdParty/lvgl/examples/widgets/menu/lv_example_menu_sidebar.o \
./ThirdParty/lvgl/examples/widgets/menu/lv_example_menu_sub_page.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/widgets/menu/%.o: ../ThirdParty/lvgl/examples/widgets/menu/%.c ThirdParty/lvgl/examples/widgets/menu/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-menu

clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-menu:
	-$(RM) ./ThirdParty/lvgl/examples/widgets/menu/lv_example_menu_custom_back_button.d ./ThirdParty/lvgl/examples/widgets/menu/lv_example_menu_custom_back_button.o ./ThirdParty/lvgl/examples/widgets/menu/lv_example_menu_floating_button.d ./ThirdParty/lvgl/examples/widgets/menu/lv_example_menu_floating_button.o ./ThirdParty/lvgl/examples/widgets/menu/lv_example_menu_navigation.d ./ThirdParty/lvgl/examples/widgets/menu/lv_example_menu_navigation.o ./ThirdParty/lvgl/examples/widgets/menu/lv_example_menu_root_back_button.d ./ThirdParty/lvgl/examples/widgets/menu/lv_example_menu_root_back_button.o ./ThirdParty/lvgl/examples/widgets/menu/lv_example_menu_sidebar.d ./ThirdParty/lvgl/examples/widgets/menu/lv_example_menu_sidebar.o ./ThirdParty/lvgl/examples/widgets/menu/lv_example_menu_sub_page.d ./ThirdParty/lvgl/examples/widgets/menu/lv_example_menu_sub_page.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-menu

