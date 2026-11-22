################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/others/gridnav/lv_example_gridnav_1.c \
../ThirdParty/lvgl/examples/others/gridnav/lv_example_gridnav_2.c \
../ThirdParty/lvgl/examples/others/gridnav/lv_example_gridnav_3.c \
../ThirdParty/lvgl/examples/others/gridnav/lv_example_gridnav_4.c \
../ThirdParty/lvgl/examples/others/gridnav/lv_example_gridnav_5.c 

C_DEPS += \
./ThirdParty/lvgl/examples/others/gridnav/lv_example_gridnav_1.d \
./ThirdParty/lvgl/examples/others/gridnav/lv_example_gridnav_2.d \
./ThirdParty/lvgl/examples/others/gridnav/lv_example_gridnav_3.d \
./ThirdParty/lvgl/examples/others/gridnav/lv_example_gridnav_4.d \
./ThirdParty/lvgl/examples/others/gridnav/lv_example_gridnav_5.d 

OBJS += \
./ThirdParty/lvgl/examples/others/gridnav/lv_example_gridnav_1.o \
./ThirdParty/lvgl/examples/others/gridnav/lv_example_gridnav_2.o \
./ThirdParty/lvgl/examples/others/gridnav/lv_example_gridnav_3.o \
./ThirdParty/lvgl/examples/others/gridnav/lv_example_gridnav_4.o \
./ThirdParty/lvgl/examples/others/gridnav/lv_example_gridnav_5.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/others/gridnav/%.o: ../ThirdParty/lvgl/examples/others/gridnav/%.c ThirdParty/lvgl/examples/others/gridnav/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-others-2f-gridnav

clean-ThirdParty-2f-lvgl-2f-examples-2f-others-2f-gridnav:
	-$(RM) ./ThirdParty/lvgl/examples/others/gridnav/lv_example_gridnav_1.d ./ThirdParty/lvgl/examples/others/gridnav/lv_example_gridnav_1.o ./ThirdParty/lvgl/examples/others/gridnav/lv_example_gridnav_2.d ./ThirdParty/lvgl/examples/others/gridnav/lv_example_gridnav_2.o ./ThirdParty/lvgl/examples/others/gridnav/lv_example_gridnav_3.d ./ThirdParty/lvgl/examples/others/gridnav/lv_example_gridnav_3.o ./ThirdParty/lvgl/examples/others/gridnav/lv_example_gridnav_4.d ./ThirdParty/lvgl/examples/others/gridnav/lv_example_gridnav_4.o ./ThirdParty/lvgl/examples/others/gridnav/lv_example_gridnav_5.d ./ThirdParty/lvgl/examples/others/gridnav/lv_example_gridnav_5.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-others-2f-gridnav

