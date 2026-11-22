################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/misc/cache/instance/lv_image_cache.c \
../ThirdParty/lvgl/src/misc/cache/instance/lv_image_header_cache.c 

C_DEPS += \
./ThirdParty/lvgl/src/misc/cache/instance/lv_image_cache.d \
./ThirdParty/lvgl/src/misc/cache/instance/lv_image_header_cache.d 

OBJS += \
./ThirdParty/lvgl/src/misc/cache/instance/lv_image_cache.o \
./ThirdParty/lvgl/src/misc/cache/instance/lv_image_header_cache.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/misc/cache/instance/%.o: ../ThirdParty/lvgl/src/misc/cache/instance/%.c ThirdParty/lvgl/src/misc/cache/instance/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-misc-2f-cache-2f-instance

clean-ThirdParty-2f-lvgl-2f-src-2f-misc-2f-cache-2f-instance:
	-$(RM) ./ThirdParty/lvgl/src/misc/cache/instance/lv_image_cache.d ./ThirdParty/lvgl/src/misc/cache/instance/lv_image_cache.o ./ThirdParty/lvgl/src/misc/cache/instance/lv_image_header_cache.d ./ThirdParty/lvgl/src/misc/cache/instance/lv_image_header_cache.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-misc-2f-cache-2f-instance

