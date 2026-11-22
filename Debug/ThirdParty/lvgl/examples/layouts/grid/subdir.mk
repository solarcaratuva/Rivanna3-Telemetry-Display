################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/lvgl/examples/layouts/grid/lv_example_grid_align.c \
../ThirdParty/lvgl/examples/layouts/grid/lv_example_grid_cell_span.c \
../ThirdParty/lvgl/examples/layouts/grid/lv_example_grid_descriptors.c \
../ThirdParty/lvgl/examples/layouts/grid/lv_example_grid_fr.c \
../ThirdParty/lvgl/examples/layouts/grid/lv_example_grid_ignore_layout.c \
../ThirdParty/lvgl/examples/layouts/grid/lv_example_grid_internal_padding.c \
../ThirdParty/lvgl/examples/layouts/grid/lv_example_grid_rtl.c \
../ThirdParty/lvgl/examples/layouts/grid/lv_example_grid_subgrid.c 

C_DEPS += \
./ThirdParty/lvgl/examples/layouts/grid/lv_example_grid_align.d \
./ThirdParty/lvgl/examples/layouts/grid/lv_example_grid_cell_span.d \
./ThirdParty/lvgl/examples/layouts/grid/lv_example_grid_descriptors.d \
./ThirdParty/lvgl/examples/layouts/grid/lv_example_grid_fr.d \
./ThirdParty/lvgl/examples/layouts/grid/lv_example_grid_ignore_layout.d \
./ThirdParty/lvgl/examples/layouts/grid/lv_example_grid_internal_padding.d \
./ThirdParty/lvgl/examples/layouts/grid/lv_example_grid_rtl.d \
./ThirdParty/lvgl/examples/layouts/grid/lv_example_grid_subgrid.d 

OBJS += \
./ThirdParty/lvgl/examples/layouts/grid/lv_example_grid_align.o \
./ThirdParty/lvgl/examples/layouts/grid/lv_example_grid_cell_span.o \
./ThirdParty/lvgl/examples/layouts/grid/lv_example_grid_descriptors.o \
./ThirdParty/lvgl/examples/layouts/grid/lv_example_grid_fr.o \
./ThirdParty/lvgl/examples/layouts/grid/lv_example_grid_ignore_layout.o \
./ThirdParty/lvgl/examples/layouts/grid/lv_example_grid_internal_padding.o \
./ThirdParty/lvgl/examples/layouts/grid/lv_example_grid_rtl.o \
./ThirdParty/lvgl/examples/layouts/grid/lv_example_grid_subgrid.o 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/lvgl/examples/layouts/grid/%.o: ../ThirdParty/lvgl/examples/layouts/grid/%.c ThirdParty/lvgl/examples/layouts/grid/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ThirdParty-2f-lvgl-2f-examples-2f-layouts-2f-grid

clean-ThirdParty-2f-lvgl-2f-examples-2f-layouts-2f-grid:
	-$(RM) ./ThirdParty/lvgl/examples/layouts/grid/lv_example_grid_align.d ./ThirdParty/lvgl/examples/layouts/grid/lv_example_grid_align.o ./ThirdParty/lvgl/examples/layouts/grid/lv_example_grid_cell_span.d ./ThirdParty/lvgl/examples/layouts/grid/lv_example_grid_cell_span.o ./ThirdParty/lvgl/examples/layouts/grid/lv_example_grid_descriptors.d ./ThirdParty/lvgl/examples/layouts/grid/lv_example_grid_descriptors.o ./ThirdParty/lvgl/examples/layouts/grid/lv_example_grid_fr.d ./ThirdParty/lvgl/examples/layouts/grid/lv_example_grid_fr.o ./ThirdParty/lvgl/examples/layouts/grid/lv_example_grid_ignore_layout.d ./ThirdParty/lvgl/examples/layouts/grid/lv_example_grid_ignore_layout.o ./ThirdParty/lvgl/examples/layouts/grid/lv_example_grid_internal_padding.d ./ThirdParty/lvgl/examples/layouts/grid/lv_example_grid_internal_padding.o ./ThirdParty/lvgl/examples/layouts/grid/lv_example_grid_rtl.d ./ThirdParty/lvgl/examples/layouts/grid/lv_example_grid_rtl.o ./ThirdParty/lvgl/examples/layouts/grid/lv_example_grid_subgrid.d ./ThirdParty/lvgl/examples/layouts/grid/lv_example_grid_subgrid.o

.PHONY: clean-ThirdParty-2f-lvgl-2f-examples-2f-layouts-2f-grid

