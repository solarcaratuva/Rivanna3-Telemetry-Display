################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/demos/vector_graphic/assets/img_demo_vector_avatar.c 

C_DEPS += \
./ThirdParty/lvgl/demos/vector_graphic/assets/img_demo_vector_avatar.d 

OBJS += \
./ThirdParty/lvgl/demos/vector_graphic/assets/img_demo_vector_avatar.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/demos/vector_graphic/assets/%.o: ../ThirdParty/lvgl/demos/vector_graphic/assets/%.c ThirdParty/lvgl/demos/vector_graphic/assets/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-demos-2f-vector_graphic-2f-assets

clean-ThirdParty-2f-lvgl-2f-demos-2f-vector_graphic-2f-assets:
	-$(RM) ./ThirdParty/lvgl/demos/vector_graphic/assets/img_demo_vector_avatar.d ./ThirdParty/lvgl/demos/vector_graphic/assets/img_demo_vector_avatar.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-demos-2f-vector_graphic-2f-assets

