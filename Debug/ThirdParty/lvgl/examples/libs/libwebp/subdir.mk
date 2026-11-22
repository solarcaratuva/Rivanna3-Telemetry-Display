################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/libs/libwebp/lv_example_libwebp_1.c 

C_DEPS += \
./ThirdParty/lvgl/examples/libs/libwebp/lv_example_libwebp_1.d 

OBJS += \
./ThirdParty/lvgl/examples/libs/libwebp/lv_example_libwebp_1.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/libs/libwebp/%.o: ../ThirdParty/lvgl/examples/libs/libwebp/%.c ThirdParty/lvgl/examples/libs/libwebp/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-libs-2f-libwebp

clean-ThirdParty-2f-lvgl-2f-examples-2f-libs-2f-libwebp:
	-$(RM) ./ThirdParty/lvgl/examples/libs/libwebp/lv_example_libwebp_1.d ./ThirdParty/lvgl/examples/libs/libwebp/lv_example_libwebp_1.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-libs-2f-libwebp

