################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/widgets/table/lv_example_table_cells.c \
../ThirdParty/lvgl/examples/widgets/table/lv_example_table_file_browser.c \
../ThirdParty/lvgl/examples/widgets/table/lv_example_table_merge_cells.c \
../ThirdParty/lvgl/examples/widgets/table/lv_example_table_rows_columns.c \
../ThirdParty/lvgl/examples/widgets/table/lv_example_table_scroll.c \
../ThirdParty/lvgl/examples/widgets/table/lv_example_table_scrollable_list.c \
../ThirdParty/lvgl/examples/widgets/table/lv_example_table_styling.c \
../ThirdParty/lvgl/examples/widgets/table/lv_example_table_width.c 

C_DEPS += \
./ThirdParty/lvgl/examples/widgets/table/lv_example_table_cells.d \
./ThirdParty/lvgl/examples/widgets/table/lv_example_table_file_browser.d \
./ThirdParty/lvgl/examples/widgets/table/lv_example_table_merge_cells.d \
./ThirdParty/lvgl/examples/widgets/table/lv_example_table_rows_columns.d \
./ThirdParty/lvgl/examples/widgets/table/lv_example_table_scroll.d \
./ThirdParty/lvgl/examples/widgets/table/lv_example_table_scrollable_list.d \
./ThirdParty/lvgl/examples/widgets/table/lv_example_table_styling.d \
./ThirdParty/lvgl/examples/widgets/table/lv_example_table_width.d 

OBJS += \
./ThirdParty/lvgl/examples/widgets/table/lv_example_table_cells.o \
./ThirdParty/lvgl/examples/widgets/table/lv_example_table_file_browser.o \
./ThirdParty/lvgl/examples/widgets/table/lv_example_table_merge_cells.o \
./ThirdParty/lvgl/examples/widgets/table/lv_example_table_rows_columns.o \
./ThirdParty/lvgl/examples/widgets/table/lv_example_table_scroll.o \
./ThirdParty/lvgl/examples/widgets/table/lv_example_table_scrollable_list.o \
./ThirdParty/lvgl/examples/widgets/table/lv_example_table_styling.o \
./ThirdParty/lvgl/examples/widgets/table/lv_example_table_width.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/widgets/table/%.o: ../ThirdParty/lvgl/examples/widgets/table/%.c ThirdParty/lvgl/examples/widgets/table/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-table

clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-table:
	-$(RM) ./ThirdParty/lvgl/examples/widgets/table/lv_example_table_cells.d ./ThirdParty/lvgl/examples/widgets/table/lv_example_table_cells.o ./ThirdParty/lvgl/examples/widgets/table/lv_example_table_file_browser.d ./ThirdParty/lvgl/examples/widgets/table/lv_example_table_file_browser.o ./ThirdParty/lvgl/examples/widgets/table/lv_example_table_merge_cells.d ./ThirdParty/lvgl/examples/widgets/table/lv_example_table_merge_cells.o ./ThirdParty/lvgl/examples/widgets/table/lv_example_table_rows_columns.d ./ThirdParty/lvgl/examples/widgets/table/lv_example_table_rows_columns.o ./ThirdParty/lvgl/examples/widgets/table/lv_example_table_scroll.d ./ThirdParty/lvgl/examples/widgets/table/lv_example_table_scroll.o ./ThirdParty/lvgl/examples/widgets/table/lv_example_table_scrollable_list.d ./ThirdParty/lvgl/examples/widgets/table/lv_example_table_scrollable_list.o ./ThirdParty/lvgl/examples/widgets/table/lv_example_table_styling.d ./ThirdParty/lvgl/examples/widgets/table/lv_example_table_styling.o ./ThirdParty/lvgl/examples/widgets/table/lv_example_table_width.d ./ThirdParty/lvgl/examples/widgets/table/lv_example_table_width.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-widgets-2f-table

