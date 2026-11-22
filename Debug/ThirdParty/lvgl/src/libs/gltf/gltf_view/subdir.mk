################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../ThirdParty/lvgl/src/libs/gltf/gltf_view/lv_gltf_view.cpp \
../ThirdParty/lvgl/src/libs/gltf/gltf_view/lv_gltf_view_render.cpp \
../ThirdParty/lvgl/src/libs/gltf/gltf_view/lv_gltf_view_shader.cpp 

CPP_DEPS += \
./ThirdParty/lvgl/src/libs/gltf/gltf_view/lv_gltf_view.d \
./ThirdParty/lvgl/src/libs/gltf/gltf_view/lv_gltf_view_render.d \
./ThirdParty/lvgl/src/libs/gltf/gltf_view/lv_gltf_view_shader.d 

OBJS += \
./ThirdParty/lvgl/src/libs/gltf/gltf_view/lv_gltf_view.o \
./ThirdParty/lvgl/src/libs/gltf/gltf_view/lv_gltf_view_render.o \
./ThirdParty/lvgl/src/libs/gltf/gltf_view/lv_gltf_view_shader.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/libs/gltf/gltf_view/%.o: ../ThirdParty/lvgl/src/libs/gltf/gltf_view/%.cpp ThirdParty/lvgl/src/libs/gltf/gltf_view/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-libs-2f-gltf-2f-gltf_view

clean-ThirdParty-2f-lvgl-2f-src-2f-libs-2f-gltf-2f-gltf_view:
	-$(RM) ./ThirdParty/lvgl/src/libs/gltf/gltf_view/lv_gltf_view.d ./ThirdParty/lvgl/src/libs/gltf/gltf_view/lv_gltf_view.o ./ThirdParty/lvgl/src/libs/gltf/gltf_view/lv_gltf_view_render.d ./ThirdParty/lvgl/src/libs/gltf/gltf_view/lv_gltf_view_render.o ./ThirdParty/lvgl/src/libs/gltf/gltf_view/lv_gltf_view_shader.d ./ThirdParty/lvgl/src/libs/gltf/gltf_view/lv_gltf_view_shader.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-libs-2f-gltf-2f-gltf_view

