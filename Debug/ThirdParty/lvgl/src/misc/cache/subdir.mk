################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/misc/cache/lv_cache.c \
../ThirdParty/lvgl/src/misc/cache/lv_cache_entry.c 

C_DEPS += \
./ThirdParty/lvgl/src/misc/cache/lv_cache.d \
./ThirdParty/lvgl/src/misc/cache/lv_cache_entry.d 

OBJS += \
./ThirdParty/lvgl/src/misc/cache/lv_cache.o \
./ThirdParty/lvgl/src/misc/cache/lv_cache_entry.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/misc/cache/%.o: ../ThirdParty/lvgl/src/misc/cache/%.c ThirdParty/lvgl/src/misc/cache/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-misc-2f-cache

clean-ThirdParty-2f-lvgl-2f-src-2f-misc-2f-cache:
	-$(RM) ./ThirdParty/lvgl/src/misc/cache/lv_cache.d ./ThirdParty/lvgl/src/misc/cache/lv_cache.o ./ThirdParty/lvgl/src/misc/cache/lv_cache_entry.d ./ThirdParty/lvgl/src/misc/cache/lv_cache_entry.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-misc-2f-cache

