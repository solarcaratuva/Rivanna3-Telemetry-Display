################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/libs/gltf/gltf_view/assets/chromatic.c \
../ThirdParty/lvgl/src/libs/gltf/gltf_view/assets/lv_gltf_view_shader.c 

C_DEPS += \
./ThirdParty/lvgl/src/libs/gltf/gltf_view/assets/chromatic.d \
./ThirdParty/lvgl/src/libs/gltf/gltf_view/assets/lv_gltf_view_shader.d 

OBJS += \
./ThirdParty/lvgl/src/libs/gltf/gltf_view/assets/chromatic.o \
./ThirdParty/lvgl/src/libs/gltf/gltf_view/assets/lv_gltf_view_shader.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/libs/gltf/gltf_view/assets/%.o: ../ThirdParty/lvgl/src/libs/gltf/gltf_view/assets/%.c ThirdParty/lvgl/src/libs/gltf/gltf_view/assets/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-libs-2f-gltf-2f-gltf_view-2f-assets

clean-ThirdParty-2f-lvgl-2f-src-2f-libs-2f-gltf-2f-gltf_view-2f-assets:
	-$(RM) ./ThirdParty/lvgl/src/libs/gltf/gltf_view/assets/chromatic.d ./ThirdParty/lvgl/src/libs/gltf/gltf_view/assets/chromatic.o ./ThirdParty/lvgl/src/libs/gltf/gltf_view/assets/lv_gltf_view_shader.d ./ThirdParty/lvgl/src/libs/gltf/gltf_view/assets/lv_gltf_view_shader.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-libs-2f-gltf-2f-gltf_view-2f-assets

