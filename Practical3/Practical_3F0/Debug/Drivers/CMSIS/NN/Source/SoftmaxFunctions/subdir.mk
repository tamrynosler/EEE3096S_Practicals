################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q15.c \
../Drivers/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q7.c 

C_DEPS += \
./Drivers/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q15.d \
./Drivers/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q7.d 

OBJS += \
./Drivers/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q15.o \
./Drivers/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q7.o 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/NN/Source/SoftmaxFunctions/%.o Drivers/CMSIS/NN/Source/SoftmaxFunctions/%.su Drivers/CMSIS/NN/Source/SoftmaxFunctions/%.cyclo: ../Drivers/CMSIS/NN/Source/SoftmaxFunctions/%.c Drivers/CMSIS/NN/Source/SoftmaxFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F051x8 -c -I../../Core/Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../../Drivers/CMSIS/Include -I"C:/Users/thoma/OneDrive/Documents/University Work 2025/EEE3096S/EEE3096S Practicals/EEE3096S_Practicals/Practical1A/Drivers/STM32F0xx_HAL_Driver/Inc" -I"C:/Users/thoma/OneDrive/Documents/University Work 2025/EEE3096S/EEE3096S Practicals/EEE3096S_Practicals/Practical3/Practical_3F0/Drivers/STM32F0xx_HAL_Driver/Inc" -I"C:/Users/thoma/OneDrive/Documents/University Work 2025/EEE3096S/EEE3096S Practicals/EEE3096S_Practicals/Practical3/Practical_3F0/Core/Inc" -I"C:/Users/thoma/OneDrive/Documents/University Work 2025/EEE3096S/EEE3096S Practicals/EEE3096S_Practicals/Practical3/Practical_3F0/Drivers" -I"C:/Users/thoma/OneDrive/Documents/University Work 2025/EEE3096S/EEE3096S Practicals/EEE3096S_Practicals/Practical3/Practical_3F0/Drivers/CMSIS/Device/ST/STM32F0xx/Include" -I"C:/Users/thoma/OneDrive/Documents/University Work 2025/EEE3096S/EEE3096S Practicals/EEE3096S_Practicals/Practical3/Practical_3F0/Drivers/CMSIS/Core/Include" -I"C:/Users/thoma/OneDrive/Documents/University Work 2025/EEE3096S/EEE3096S Practicals/EEE3096S_Practicals/Practical3/Practical_3F0/Drivers/STM32F0xx_HAL_Driver" -I"C:/Users/thoma/OneDrive/Documents/University Work 2025/EEE3096S/EEE3096S Practicals/EEE3096S_Practicals/Practical3/Practical_3F0/Drivers/STM32F0xx_HAL_Driver/Src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Drivers-2f-CMSIS-2f-NN-2f-Source-2f-SoftmaxFunctions

clean-Drivers-2f-CMSIS-2f-NN-2f-Source-2f-SoftmaxFunctions:
	-$(RM) ./Drivers/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q15.cyclo ./Drivers/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q15.d ./Drivers/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q15.o ./Drivers/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q15.su ./Drivers/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q7.cyclo ./Drivers/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q7.d ./Drivers/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q7.o ./Drivers/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q7.su

.PHONY: clean-Drivers-2f-CMSIS-2f-NN-2f-Source-2f-SoftmaxFunctions

