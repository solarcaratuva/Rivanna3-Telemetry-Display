################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/demos/vector_graphic/lv_demo_vector_graphic.c 

C_DEPS += \
./ThirdParty/lvgl/demos/vector_graphic/lv_demo_vector_graphic.d 

OBJS += \
./ThirdParty/lvgl/demos/vector_graphic/lv_demo_vector_graphic.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/demos/vector_graphic/%.o: ../ThirdParty/lvgl/demos/vector_graphic/%.c ThirdParty/lvgl/demos/vector_graphic/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-demos-2f-vector_graphic

clean-ThirdParty-2f-lvgl-2f-demos-2f-vector_graphic:
	-$(RM) ./ThirdParty/lvgl/demos/vector_graphic/lv_demo_vector_graphic.d ./ThirdParty/lvgl/demos/vector_graphic/lv_demo_vector_graphic.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-demos-2f-vector_graphic

