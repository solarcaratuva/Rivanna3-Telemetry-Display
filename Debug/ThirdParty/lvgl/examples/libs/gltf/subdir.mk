################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/libs/gltf/lv_example_gltf_1.c \
../ThirdParty/lvgl/examples/libs/gltf/lv_example_gltf_2.c \
../ThirdParty/lvgl/examples/libs/gltf/lv_example_gltf_3.c \
../ThirdParty/lvgl/examples/libs/gltf/lv_example_gltf_4.c 

C_DEPS += \
./ThirdParty/lvgl/examples/libs/gltf/lv_example_gltf_1.d \
./ThirdParty/lvgl/examples/libs/gltf/lv_example_gltf_2.d \
./ThirdParty/lvgl/examples/libs/gltf/lv_example_gltf_3.d \
./ThirdParty/lvgl/examples/libs/gltf/lv_example_gltf_4.d 

OBJS += \
./ThirdParty/lvgl/examples/libs/gltf/lv_example_gltf_1.o \
./ThirdParty/lvgl/examples/libs/gltf/lv_example_gltf_2.o \
./ThirdParty/lvgl/examples/libs/gltf/lv_example_gltf_3.o \
./ThirdParty/lvgl/examples/libs/gltf/lv_example_gltf_4.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/libs/gltf/%.o: ../ThirdParty/lvgl/examples/libs/gltf/%.c ThirdParty/lvgl/examples/libs/gltf/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-libs-2f-gltf

clean-ThirdParty-2f-lvgl-2f-examples-2f-libs-2f-gltf:
	-$(RM) ./ThirdParty/lvgl/examples/libs/gltf/lv_example_gltf_1.d ./ThirdParty/lvgl/examples/libs/gltf/lv_example_gltf_1.o ./ThirdParty/lvgl/examples/libs/gltf/lv_example_gltf_2.d ./ThirdParty/lvgl/examples/libs/gltf/lv_example_gltf_2.o ./ThirdParty/lvgl/examples/libs/gltf/lv_example_gltf_3.d ./ThirdParty/lvgl/examples/libs/gltf/lv_example_gltf_3.o ./ThirdParty/lvgl/examples/libs/gltf/lv_example_gltf_4.d ./ThirdParty/lvgl/examples/libs/gltf/lv_example_gltf_4.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-libs-2f-gltf

