################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/misc/cache/class/lv_cache_lru_ll.c \
../ThirdParty/lvgl/src/misc/cache/class/lv_cache_lru_rb.c \
../ThirdParty/lvgl/src/misc/cache/class/lv_cache_sc_da.c 

C_DEPS += \
./ThirdParty/lvgl/src/misc/cache/class/lv_cache_lru_ll.d \
./ThirdParty/lvgl/src/misc/cache/class/lv_cache_lru_rb.d \
./ThirdParty/lvgl/src/misc/cache/class/lv_cache_sc_da.d 

OBJS += \
./ThirdParty/lvgl/src/misc/cache/class/lv_cache_lru_ll.o \
./ThirdParty/lvgl/src/misc/cache/class/lv_cache_lru_rb.o \
./ThirdParty/lvgl/src/misc/cache/class/lv_cache_sc_da.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/misc/cache/class/%.o: ../ThirdParty/lvgl/src/misc/cache/class/%.c ThirdParty/lvgl/src/misc/cache/class/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-misc-2f-cache-2f-class

clean-ThirdParty-2f-lvgl-2f-src-2f-misc-2f-cache-2f-class:
	-$(RM) ./ThirdParty/lvgl/src/misc/cache/class/lv_cache_lru_ll.d ./ThirdParty/lvgl/src/misc/cache/class/lv_cache_lru_ll.o ./ThirdParty/lvgl/src/misc/cache/class/lv_cache_lru_rb.d ./ThirdParty/lvgl/src/misc/cache/class/lv_cache_lru_rb.o ./ThirdParty/lvgl/src/misc/cache/class/lv_cache_sc_da.d ./ThirdParty/lvgl/src/misc/cache/class/lv_cache_sc_da.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-misc-2f-cache-2f-class

