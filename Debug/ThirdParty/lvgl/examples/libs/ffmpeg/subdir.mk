################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/libs/ffmpeg/lv_example_ffmpeg_1.c \
../ThirdParty/lvgl/examples/libs/ffmpeg/lv_example_ffmpeg_2.c 

C_DEPS += \
./ThirdParty/lvgl/examples/libs/ffmpeg/lv_example_ffmpeg_1.d \
./ThirdParty/lvgl/examples/libs/ffmpeg/lv_example_ffmpeg_2.d 

OBJS += \
./ThirdParty/lvgl/examples/libs/ffmpeg/lv_example_ffmpeg_1.o \
./ThirdParty/lvgl/examples/libs/ffmpeg/lv_example_ffmpeg_2.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/libs/ffmpeg/%.o: ../ThirdParty/lvgl/examples/libs/ffmpeg/%.c ThirdParty/lvgl/examples/libs/ffmpeg/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-libs-2f-ffmpeg

clean-ThirdParty-2f-lvgl-2f-examples-2f-libs-2f-ffmpeg:
	-$(RM) ./ThirdParty/lvgl/examples/libs/ffmpeg/lv_example_ffmpeg_1.d ./ThirdParty/lvgl/examples/libs/ffmpeg/lv_example_ffmpeg_1.o ./ThirdParty/lvgl/examples/libs/ffmpeg/lv_example_ffmpeg_2.d ./ThirdParty/lvgl/examples/libs/ffmpeg/lv_example_ffmpeg_2.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-libs-2f-ffmpeg

