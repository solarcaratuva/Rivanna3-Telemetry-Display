################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/tests/src/test_cases/refr/test_refr_api.c \
../ThirdParty/lvgl/tests/src/test_cases/refr/test_refr_clip.c \
../ThirdParty/lvgl/tests/src/test_cases/refr/test_refr_draw_buf.c \
../ThirdParty/lvgl/tests/src/test_cases/refr/test_refr_flush.c \
../ThirdParty/lvgl/tests/src/test_cases/refr/test_refr_invalidate.c \
../ThirdParty/lvgl/tests/src/test_cases/refr/test_refr_layer.c \
../ThirdParty/lvgl/tests/src/test_cases/refr/test_refr_render_mode.c \
../ThirdParty/lvgl/tests/src/test_cases/refr/test_refr_sync.c \
../ThirdParty/lvgl/tests/src/test_cases/refr/test_refr_top_obj.c \
../ThirdParty/lvgl/tests/src/test_cases/refr/test_refr_transform.c 

C_DEPS += \
./ThirdParty/lvgl/tests/src/test_cases/refr/test_refr_api.d \
./ThirdParty/lvgl/tests/src/test_cases/refr/test_refr_clip.d \
./ThirdParty/lvgl/tests/src/test_cases/refr/test_refr_draw_buf.d \
./ThirdParty/lvgl/tests/src/test_cases/refr/test_refr_flush.d \
./ThirdParty/lvgl/tests/src/test_cases/refr/test_refr_invalidate.d \
./ThirdParty/lvgl/tests/src/test_cases/refr/test_refr_layer.d \
./ThirdParty/lvgl/tests/src/test_cases/refr/test_refr_render_mode.d \
./ThirdParty/lvgl/tests/src/test_cases/refr/test_refr_sync.d \
./ThirdParty/lvgl/tests/src/test_cases/refr/test_refr_top_obj.d \
./ThirdParty/lvgl/tests/src/test_cases/refr/test_refr_transform.d 

OBJS += \
./ThirdParty/lvgl/tests/src/test_cases/refr/test_refr_api.o \
./ThirdParty/lvgl/tests/src/test_cases/refr/test_refr_clip.o \
./ThirdParty/lvgl/tests/src/test_cases/refr/test_refr_draw_buf.o \
./ThirdParty/lvgl/tests/src/test_cases/refr/test_refr_flush.o \
./ThirdParty/lvgl/tests/src/test_cases/refr/test_refr_invalidate.o \
./ThirdParty/lvgl/tests/src/test_cases/refr/test_refr_layer.o \
./ThirdParty/lvgl/tests/src/test_cases/refr/test_refr_render_mode.o \
./ThirdParty/lvgl/tests/src/test_cases/refr/test_refr_sync.o \
./ThirdParty/lvgl/tests/src/test_cases/refr/test_refr_top_obj.o \
./ThirdParty/lvgl/tests/src/test_cases/refr/test_refr_transform.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/tests/src/test_cases/refr/%.o: ../ThirdParty/lvgl/tests/src/test_cases/refr/%.c ThirdParty/lvgl/tests/src/test_cases/refr/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-tests-2f-src-2f-test_cases-2f-refr

clean-ThirdParty-2f-lvgl-2f-tests-2f-src-2f-test_cases-2f-refr:
	-$(RM) ./ThirdParty/lvgl/tests/src/test_cases/refr/test_refr_api.d ./ThirdParty/lvgl/tests/src/test_cases/refr/test_refr_api.o ./ThirdParty/lvgl/tests/src/test_cases/refr/test_refr_clip.d ./ThirdParty/lvgl/tests/src/test_cases/refr/test_refr_clip.o ./ThirdParty/lvgl/tests/src/test_cases/refr/test_refr_draw_buf.d ./ThirdParty/lvgl/tests/src/test_cases/refr/test_refr_draw_buf.o ./ThirdParty/lvgl/tests/src/test_cases/refr/test_refr_flush.d ./ThirdParty/lvgl/tests/src/test_cases/refr/test_refr_flush.o ./ThirdParty/lvgl/tests/src/test_cases/refr/test_refr_invalidate.d ./ThirdParty/lvgl/tests/src/test_cases/refr/test_refr_invalidate.o ./ThirdParty/lvgl/tests/src/test_cases/refr/test_refr_layer.d ./ThirdParty/lvgl/tests/src/test_cases/refr/test_refr_layer.o ./ThirdParty/lvgl/tests/src/test_cases/refr/test_refr_render_mode.d ./ThirdParty/lvgl/tests/src/test_cases/refr/test_refr_render_mode.o ./ThirdParty/lvgl/tests/src/test_cases/refr/test_refr_sync.d ./ThirdParty/lvgl/tests/src/test_cases/refr/test_refr_sync.o ./ThirdParty/lvgl/tests/src/test_cases/refr/test_refr_top_obj.d ./ThirdParty/lvgl/tests/src/test_cases/refr/test_refr_top_obj.o ./ThirdParty/lvgl/tests/src/test_cases/refr/test_refr_transform.d ./ThirdParty/lvgl/tests/src/test_cases/refr/test_refr_transform.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-tests-2f-src-2f-test_cases-2f-refr

