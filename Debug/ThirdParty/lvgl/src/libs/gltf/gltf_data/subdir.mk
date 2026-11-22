################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../ThirdParty/lvgl/src/libs/gltf/gltf_data/lv_gltf_data.cpp \
../ThirdParty/lvgl/src/libs/gltf/gltf_data/lv_gltf_data_animations.cpp \
../ThirdParty/lvgl/src/libs/gltf/gltf_data/lv_gltf_data_cache.cpp \
../ThirdParty/lvgl/src/libs/gltf/gltf_data/lv_gltf_data_injest.cpp \
../ThirdParty/lvgl/src/libs/gltf/gltf_data/lv_gltf_data_mesh.cpp \
../ThirdParty/lvgl/src/libs/gltf/gltf_data/lv_gltf_data_primitive.cpp \
../ThirdParty/lvgl/src/libs/gltf/gltf_data/lv_gltf_data_shader.cpp \
../ThirdParty/lvgl/src/libs/gltf/gltf_data/lv_gltf_data_skin.cpp \
../ThirdParty/lvgl/src/libs/gltf/gltf_data/lv_gltf_data_texture.cpp \
../ThirdParty/lvgl/src/libs/gltf/gltf_data/lv_gltf_model_node.cpp \
../ThirdParty/lvgl/src/libs/gltf/gltf_data/lv_gltf_uniform_locations.cpp 

C_SRCS += \
../ThirdParty/lvgl/src/libs/gltf/gltf_data/lv_gltf_model_loader.c 

CPP_DEPS += \
./ThirdParty/lvgl/src/libs/gltf/gltf_data/lv_gltf_data.d \
./ThirdParty/lvgl/src/libs/gltf/gltf_data/lv_gltf_data_animations.d \
./ThirdParty/lvgl/src/libs/gltf/gltf_data/lv_gltf_data_cache.d \
./ThirdParty/lvgl/src/libs/gltf/gltf_data/lv_gltf_data_injest.d \
./ThirdParty/lvgl/src/libs/gltf/gltf_data/lv_gltf_data_mesh.d \
./ThirdParty/lvgl/src/libs/gltf/gltf_data/lv_gltf_data_primitive.d \
./ThirdParty/lvgl/src/libs/gltf/gltf_data/lv_gltf_data_shader.d \
./ThirdParty/lvgl/src/libs/gltf/gltf_data/lv_gltf_data_skin.d \
./ThirdParty/lvgl/src/libs/gltf/gltf_data/lv_gltf_data_texture.d \
./ThirdParty/lvgl/src/libs/gltf/gltf_data/lv_gltf_model_node.d \
./ThirdParty/lvgl/src/libs/gltf/gltf_data/lv_gltf_uniform_locations.d 

C_DEPS += \
./ThirdParty/lvgl/src/libs/gltf/gltf_data/lv_gltf_model_loader.d 

OBJS += \
./ThirdParty/lvgl/src/libs/gltf/gltf_data/lv_gltf_data.o \
./ThirdParty/lvgl/src/libs/gltf/gltf_data/lv_gltf_data_animations.o \
./ThirdParty/lvgl/src/libs/gltf/gltf_data/lv_gltf_data_cache.o \
./ThirdParty/lvgl/src/libs/gltf/gltf_data/lv_gltf_data_injest.o \
./ThirdParty/lvgl/src/libs/gltf/gltf_data/lv_gltf_data_mesh.o \
./ThirdParty/lvgl/src/libs/gltf/gltf_data/lv_gltf_data_primitive.o \
./ThirdParty/lvgl/src/libs/gltf/gltf_data/lv_gltf_data_shader.o \
./ThirdParty/lvgl/src/libs/gltf/gltf_data/lv_gltf_data_skin.o \
./ThirdParty/lvgl/src/libs/gltf/gltf_data/lv_gltf_data_texture.o \
./ThirdParty/lvgl/src/libs/gltf/gltf_data/lv_gltf_model_loader.o \
./ThirdParty/lvgl/src/libs/gltf/gltf_data/lv_gltf_model_node.o \
./ThirdParty/lvgl/src/libs/gltf/gltf_data/lv_gltf_uniform_locations.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/libs/gltf/gltf_data/%.o: ../ThirdParty/lvgl/src/libs/gltf/gltf_data/%.cpp ThirdParty/lvgl/src/libs/gltf/gltf_data/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

ThirdParty/lvgl/src/libs/gltf/gltf_data/%.o: ../ThirdParty/lvgl/src/libs/gltf/gltf_data/%.c ThirdParty/lvgl/src/libs/gltf/gltf_data/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-libs-2f-gltf-2f-gltf_data

clean-ThirdParty-2f-lvgl-2f-src-2f-libs-2f-gltf-2f-gltf_data:
	-$(RM) ./ThirdParty/lvgl/src/libs/gltf/gltf_data/lv_gltf_data.d ./ThirdParty/lvgl/src/libs/gltf/gltf_data/lv_gltf_data.o ./ThirdParty/lvgl/src/libs/gltf/gltf_data/lv_gltf_data_animations.d ./ThirdParty/lvgl/src/libs/gltf/gltf_data/lv_gltf_data_animations.o ./ThirdParty/lvgl/src/libs/gltf/gltf_data/lv_gltf_data_cache.d ./ThirdParty/lvgl/src/libs/gltf/gltf_data/lv_gltf_data_cache.o ./ThirdParty/lvgl/src/libs/gltf/gltf_data/lv_gltf_data_injest.d ./ThirdParty/lvgl/src/libs/gltf/gltf_data/lv_gltf_data_injest.o ./ThirdParty/lvgl/src/libs/gltf/gltf_data/lv_gltf_data_mesh.d ./ThirdParty/lvgl/src/libs/gltf/gltf_data/lv_gltf_data_mesh.o ./ThirdParty/lvgl/src/libs/gltf/gltf_data/lv_gltf_data_primitive.d ./ThirdParty/lvgl/src/libs/gltf/gltf_data/lv_gltf_data_primitive.o ./ThirdParty/lvgl/src/libs/gltf/gltf_data/lv_gltf_data_shader.d ./ThirdParty/lvgl/src/libs/gltf/gltf_data/lv_gltf_data_shader.o ./ThirdParty/lvgl/src/libs/gltf/gltf_data/lv_gltf_data_skin.d ./ThirdParty/lvgl/src/libs/gltf/gltf_data/lv_gltf_data_skin.o ./ThirdParty/lvgl/src/libs/gltf/gltf_data/lv_gltf_data_texture.d ./ThirdParty/lvgl/src/libs/gltf/gltf_data/lv_gltf_data_texture.o ./ThirdParty/lvgl/src/libs/gltf/gltf_data/lv_gltf_model_loader.d ./ThirdParty/lvgl/src/libs/gltf/gltf_data/lv_gltf_model_loader.o ./ThirdParty/lvgl/src/libs/gltf/gltf_data/lv_gltf_model_node.d ./ThirdParty/lvgl/src/libs/gltf/gltf_data/lv_gltf_model_node.o ./ThirdParty/lvgl/src/libs/gltf/gltf_data/lv_gltf_uniform_locations.d ./ThirdParty/lvgl/src/libs/gltf/gltf_data/lv_gltf_uniform_locations.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-libs-2f-gltf-2f-gltf_data

