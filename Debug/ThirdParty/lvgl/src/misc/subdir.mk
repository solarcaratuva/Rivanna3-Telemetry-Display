################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/src/misc/lv_anim.c \
../ThirdParty/lvgl/src/misc/lv_anim_timeline.c \
../ThirdParty/lvgl/src/misc/lv_area.c \
../ThirdParty/lvgl/src/misc/lv_array.c \
../ThirdParty/lvgl/src/misc/lv_async.c \
../ThirdParty/lvgl/src/misc/lv_bidi.c \
../ThirdParty/lvgl/src/misc/lv_bidi_common.c \
../ThirdParty/lvgl/src/misc/lv_circle_buf.c \
../ThirdParty/lvgl/src/misc/lv_color.c \
../ThirdParty/lvgl/src/misc/lv_color_op.c \
../ThirdParty/lvgl/src/misc/lv_event.c \
../ThirdParty/lvgl/src/misc/lv_grad.c \
../ThirdParty/lvgl/src/misc/lv_iter.c \
../ThirdParty/lvgl/src/misc/lv_ll.c \
../ThirdParty/lvgl/src/misc/lv_lru.c \
../ThirdParty/lvgl/src/misc/lv_math.c \
../ThirdParty/lvgl/src/misc/lv_matrix.c \
../ThirdParty/lvgl/src/misc/lv_palette.c \
../ThirdParty/lvgl/src/misc/lv_pending.c \
../ThirdParty/lvgl/src/misc/lv_rb.c \
../ThirdParty/lvgl/src/misc/lv_style.c \
../ThirdParty/lvgl/src/misc/lv_style_gen.c \
../ThirdParty/lvgl/src/misc/lv_templ.c \
../ThirdParty/lvgl/src/misc/lv_text.c \
../ThirdParty/lvgl/src/misc/lv_text_ap.c \
../ThirdParty/lvgl/src/misc/lv_timer.c \
../ThirdParty/lvgl/src/misc/lv_tree.c \
../ThirdParty/lvgl/src/misc/lv_utils.c 

C_DEPS += \
./ThirdParty/lvgl/src/misc/lv_anim.d \
./ThirdParty/lvgl/src/misc/lv_anim_timeline.d \
./ThirdParty/lvgl/src/misc/lv_area.d \
./ThirdParty/lvgl/src/misc/lv_array.d \
./ThirdParty/lvgl/src/misc/lv_async.d \
./ThirdParty/lvgl/src/misc/lv_bidi.d \
./ThirdParty/lvgl/src/misc/lv_bidi_common.d \
./ThirdParty/lvgl/src/misc/lv_circle_buf.d \
./ThirdParty/lvgl/src/misc/lv_color.d \
./ThirdParty/lvgl/src/misc/lv_color_op.d \
./ThirdParty/lvgl/src/misc/lv_event.d \
./ThirdParty/lvgl/src/misc/lv_grad.d \
./ThirdParty/lvgl/src/misc/lv_iter.d \
./ThirdParty/lvgl/src/misc/lv_ll.d \
./ThirdParty/lvgl/src/misc/lv_lru.d \
./ThirdParty/lvgl/src/misc/lv_math.d \
./ThirdParty/lvgl/src/misc/lv_matrix.d \
./ThirdParty/lvgl/src/misc/lv_palette.d \
./ThirdParty/lvgl/src/misc/lv_pending.d \
./ThirdParty/lvgl/src/misc/lv_rb.d \
./ThirdParty/lvgl/src/misc/lv_style.d \
./ThirdParty/lvgl/src/misc/lv_style_gen.d \
./ThirdParty/lvgl/src/misc/lv_templ.d \
./ThirdParty/lvgl/src/misc/lv_text.d \
./ThirdParty/lvgl/src/misc/lv_text_ap.d \
./ThirdParty/lvgl/src/misc/lv_timer.d \
./ThirdParty/lvgl/src/misc/lv_tree.d \
./ThirdParty/lvgl/src/misc/lv_utils.d 

OBJS += \
./ThirdParty/lvgl/src/misc/lv_anim.o \
./ThirdParty/lvgl/src/misc/lv_anim_timeline.o \
./ThirdParty/lvgl/src/misc/lv_area.o \
./ThirdParty/lvgl/src/misc/lv_array.o \
./ThirdParty/lvgl/src/misc/lv_async.o \
./ThirdParty/lvgl/src/misc/lv_bidi.o \
./ThirdParty/lvgl/src/misc/lv_bidi_common.o \
./ThirdParty/lvgl/src/misc/lv_circle_buf.o \
./ThirdParty/lvgl/src/misc/lv_color.o \
./ThirdParty/lvgl/src/misc/lv_color_op.o \
./ThirdParty/lvgl/src/misc/lv_event.o \
./ThirdParty/lvgl/src/misc/lv_grad.o \
./ThirdParty/lvgl/src/misc/lv_iter.o \
./ThirdParty/lvgl/src/misc/lv_ll.o \
./ThirdParty/lvgl/src/misc/lv_lru.o \
./ThirdParty/lvgl/src/misc/lv_math.o \
./ThirdParty/lvgl/src/misc/lv_matrix.o \
./ThirdParty/lvgl/src/misc/lv_palette.o \
./ThirdParty/lvgl/src/misc/lv_pending.o \
./ThirdParty/lvgl/src/misc/lv_rb.o \
./ThirdParty/lvgl/src/misc/lv_style.o \
./ThirdParty/lvgl/src/misc/lv_style_gen.o \
./ThirdParty/lvgl/src/misc/lv_templ.o \
./ThirdParty/lvgl/src/misc/lv_text.o \
./ThirdParty/lvgl/src/misc/lv_text_ap.o \
./ThirdParty/lvgl/src/misc/lv_timer.o \
./ThirdParty/lvgl/src/misc/lv_tree.o \
./ThirdParty/lvgl/src/misc/lv_utils.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/src/misc/%.o: ../ThirdParty/lvgl/src/misc/%.c ThirdParty/lvgl/src/misc/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-src-2f-misc

clean-ThirdParty-2f-lvgl-2f-src-2f-misc:
	-$(RM) ./ThirdParty/lvgl/src/misc/lv_anim.d ./ThirdParty/lvgl/src/misc/lv_anim.o ./ThirdParty/lvgl/src/misc/lv_anim_timeline.d ./ThirdParty/lvgl/src/misc/lv_anim_timeline.o ./ThirdParty/lvgl/src/misc/lv_area.d ./ThirdParty/lvgl/src/misc/lv_area.o ./ThirdParty/lvgl/src/misc/lv_array.d ./ThirdParty/lvgl/src/misc/lv_array.o ./ThirdParty/lvgl/src/misc/lv_async.d ./ThirdParty/lvgl/src/misc/lv_async.o ./ThirdParty/lvgl/src/misc/lv_bidi.d ./ThirdParty/lvgl/src/misc/lv_bidi.o ./ThirdParty/lvgl/src/misc/lv_bidi_common.d ./ThirdParty/lvgl/src/misc/lv_bidi_common.o ./ThirdParty/lvgl/src/misc/lv_circle_buf.d ./ThirdParty/lvgl/src/misc/lv_circle_buf.o ./ThirdParty/lvgl/src/misc/lv_color.d ./ThirdParty/lvgl/src/misc/lv_color.o ./ThirdParty/lvgl/src/misc/lv_color_op.d ./ThirdParty/lvgl/src/misc/lv_color_op.o ./ThirdParty/lvgl/src/misc/lv_event.d ./ThirdParty/lvgl/src/misc/lv_event.o ./ThirdParty/lvgl/src/misc/lv_grad.d ./ThirdParty/lvgl/src/misc/lv_grad.o ./ThirdParty/lvgl/src/misc/lv_iter.d ./ThirdParty/lvgl/src/misc/lv_iter.o ./ThirdParty/lvgl/src/misc/lv_ll.d ./ThirdParty/lvgl/src/misc/lv_ll.o ./ThirdParty/lvgl/src/misc/lv_lru.d ./ThirdParty/lvgl/src/misc/lv_lru.o ./ThirdParty/lvgl/src/misc/lv_math.d ./ThirdParty/lvgl/src/misc/lv_math.o ./ThirdParty/lvgl/src/misc/lv_matrix.d ./ThirdParty/lvgl/src/misc/lv_matrix.o ./ThirdParty/lvgl/src/misc/lv_palette.d ./ThirdParty/lvgl/src/misc/lv_palette.o ./ThirdParty/lvgl/src/misc/lv_pending.d ./ThirdParty/lvgl/src/misc/lv_pending.o ./ThirdParty/lvgl/src/misc/lv_rb.d ./ThirdParty/lvgl/src/misc/lv_rb.o ./ThirdParty/lvgl/src/misc/lv_style.d ./ThirdParty/lvgl/src/misc/lv_style.o ./ThirdParty/lvgl/src/misc/lv_style_gen.d ./ThirdParty/lvgl/src/misc/lv_style_gen.o ./ThirdParty/lvgl/src/misc/lv_templ.d ./ThirdParty/lvgl/src/misc/lv_templ.o ./ThirdParty/lvgl/src/misc/lv_text.d ./ThirdParty/lvgl/src/misc/lv_text.o ./ThirdParty/lvgl/src/misc/lv_text_ap.d ./ThirdParty/lvgl/src/misc/lv_text_ap.o ./ThirdParty/lvgl/src/misc/lv_timer.d ./ThirdParty/lvgl/src/misc/lv_timer.o ./ThirdParty/lvgl/src/misc/lv_tree.d ./ThirdParty/lvgl/src/misc/lv_tree.o ./ThirdParty/lvgl/src/misc/lv_utils.d ./ThirdParty/lvgl/src/misc/lv_utils.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-src-2f-misc

