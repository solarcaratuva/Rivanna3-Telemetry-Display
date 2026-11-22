################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/libs/gif/img_bulb_gif.c \
../ThirdParty/lvgl/examples/libs/gif/lv_example_gif_src.c 

C_DEPS += \
./ThirdParty/lvgl/examples/libs/gif/img_bulb_gif.d \
./ThirdParty/lvgl/examples/libs/gif/lv_example_gif_src.d 

OBJS += \
./ThirdParty/lvgl/examples/libs/gif/img_bulb_gif.o \
./ThirdParty/lvgl/examples/libs/gif/lv_example_gif_src.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/libs/gif/%.o: ../ThirdParty/lvgl/examples/libs/gif/%.c ThirdParty/lvgl/examples/libs/gif/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-libs-2f-gif

clean-ThirdParty-2f-lvgl-2f-examples-2f-libs-2f-gif:
	-$(RM) ./ThirdParty/lvgl/examples/libs/gif/img_bulb_gif.d ./ThirdParty/lvgl/examples/libs/gif/img_bulb_gif.o ./ThirdParty/lvgl/examples/libs/gif/lv_example_gif_src.d ./ThirdParty/lvgl/examples/libs/gif/lv_example_gif_src.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-libs-2f-gif

