################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/CMSIS/DSP/Examples/ARM/arm_linear_interp_example/arm_linear_interp_data.c \
../Drivers/CMSIS/DSP/Examples/ARM/arm_linear_interp_example/arm_linear_interp_example_f32.c \
../Drivers/CMSIS/DSP/Examples/ARM/arm_linear_interp_example/math_helper.c 

C_DEPS += \
./Drivers/CMSIS/DSP/Examples/ARM/arm_linear_interp_example/arm_linear_interp_data.d \
./Drivers/CMSIS/DSP/Examples/ARM/arm_linear_interp_example/arm_linear_interp_example_f32.d \
./Drivers/CMSIS/DSP/Examples/ARM/arm_linear_interp_example/math_helper.d 

OBJS += \
./Drivers/CMSIS/DSP/Examples/ARM/arm_linear_interp_example/arm_linear_interp_data.o \
./Drivers/CMSIS/DSP/Examples/ARM/arm_linear_interp_example/arm_linear_interp_example_f32.o \
./Drivers/CMSIS/DSP/Examples/ARM/arm_linear_interp_example/math_helper.o 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/DSP/Examples/ARM/arm_linear_interp_example/%.o Drivers/CMSIS/DSP/Examples/ARM/arm_linear_interp_example/%.su Drivers/CMSIS/DSP/Examples/ARM/arm_linear_interp_example/%.cyclo: ../Drivers/CMSIS/DSP/Examples/ARM/arm_linear_interp_example/%.c Drivers/CMSIS/DSP/Examples/ARM/arm_linear_interp_example/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F051x8 -c -I../../Core/Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../../Drivers/CMSIS/Include -I"C:/Users/thoma/OneDrive/Documents/University Work 2025/EEE3096S/EEE3096S Practicals/EEE3096S_Practicals/Practical1A/Drivers/STM32F0xx_HAL_Driver/Inc" -I"C:/Users/thoma/OneDrive/Documents/University Work 2025/EEE3096S/EEE3096S Practicals/EEE3096S_Practicals/Practical3/Practical_3F0/Drivers/STM32F0xx_HAL_Driver/Inc" -I"C:/Users/thoma/OneDrive/Documents/University Work 2025/EEE3096S/EEE3096S Practicals/EEE3096S_Practicals/Practical3/Practical_3F0/Core/Inc" -I"C:/Users/thoma/OneDrive/Documents/University Work 2025/EEE3096S/EEE3096S Practicals/EEE3096S_Practicals/Practical3/Practical_3F0/Drivers" -I"C:/Users/thoma/OneDrive/Documents/University Work 2025/EEE3096S/EEE3096S Practicals/EEE3096S_Practicals/Practical3/Practical_3F0/Drivers/CMSIS/Device/ST/STM32F0xx/Include" -I"C:/Users/thoma/OneDrive/Documents/University Work 2025/EEE3096S/EEE3096S Practicals/EEE3096S_Practicals/Practical3/Practical_3F0/Drivers/CMSIS/Core/Include" -I"C:/Users/thoma/OneDrive/Documents/University Work 2025/EEE3096S/EEE3096S Practicals/EEE3096S_Practicals/Practical3/Practical_3F0/Drivers/STM32F0xx_HAL_Driver" -I"C:/Users/thoma/OneDrive/Documents/University Work 2025/EEE3096S/EEE3096S Practicals/EEE3096S_Practicals/Practical3/Practical_3F0/Drivers/STM32F0xx_HAL_Driver/Src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Drivers-2f-CMSIS-2f-DSP-2f-Examples-2f-ARM-2f-arm_linear_interp_example

clean-Drivers-2f-CMSIS-2f-DSP-2f-Examples-2f-ARM-2f-arm_linear_interp_example:
	-$(RM) ./Drivers/CMSIS/DSP/Examples/ARM/arm_linear_interp_example/arm_linear_interp_data.cyclo ./Drivers/CMSIS/DSP/Examples/ARM/arm_linear_interp_example/arm_linear_interp_data.d ./Drivers/CMSIS/DSP/Examples/ARM/arm_linear_interp_example/arm_linear_interp_data.o ./Drivers/CMSIS/DSP/Examples/ARM/arm_linear_interp_example/arm_linear_interp_data.su ./Drivers/CMSIS/DSP/Examples/ARM/arm_linear_interp_example/arm_linear_interp_example_f32.cyclo ./Drivers/CMSIS/DSP/Examples/ARM/arm_linear_interp_example/arm_linear_interp_example_f32.d ./Drivers/CMSIS/DSP/Examples/ARM/arm_linear_interp_example/arm_linear_interp_example_f32.o ./Drivers/CMSIS/DSP/Examples/ARM/arm_linear_interp_example/arm_linear_interp_example_f32.su ./Drivers/CMSIS/DSP/Examples/ARM/arm_linear_interp_example/math_helper.cyclo ./Drivers/CMSIS/DSP/Examples/ARM/arm_linear_interp_example/math_helper.d ./Drivers/CMSIS/DSP/Examples/ARM/arm_linear_interp_example/math_helper.o ./Drivers/CMSIS/DSP/Examples/ARM/arm_linear_interp_example/math_helper.su

.PHONY: clean-Drivers-2f-CMSIS-2f-DSP-2f-Examples-2f-ARM-2f-arm_linear_interp_example

