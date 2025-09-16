################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Drivers/CMSIS/NN/Examples/ARM/arm_nn_examples/cifar10/arm_nnexamples_cifar10.cpp 

OBJS += \
./Drivers/CMSIS/NN/Examples/ARM/arm_nn_examples/cifar10/arm_nnexamples_cifar10.o 

CPP_DEPS += \
./Drivers/CMSIS/NN/Examples/ARM/arm_nn_examples/cifar10/arm_nnexamples_cifar10.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/NN/Examples/ARM/arm_nn_examples/cifar10/%.o Drivers/CMSIS/NN/Examples/ARM/arm_nn_examples/cifar10/%.su Drivers/CMSIS/NN/Examples/ARM/arm_nn_examples/cifar10/%.cyclo: ../Drivers/CMSIS/NN/Examples/ARM/arm_nn_examples/cifar10/%.cpp Drivers/CMSIS/NN/Examples/ARM/arm_nn_examples/cifar10/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m0 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F051x8 -c -I../../Core/Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../../Drivers/CMSIS/Include -I"C:/Users/thoma/OneDrive/Documents/University Work 2025/EEE3096S/EEE3096S Practicals/EEE3096S_Practicals/Practical3/Practical_3F0/Drivers/STM32F0xx_HAL_Driver/Inc" -I"C:/Users/thoma/OneDrive/Documents/University Work 2025/EEE3096S/EEE3096S Practicals/EEE3096S_Practicals/Practical3/Practical_3F0/Core/Inc" -I"C:/Users/thoma/OneDrive/Documents/University Work 2025/EEE3096S/EEE3096S Practicals/EEE3096S_Practicals/Practical3/Practical_3F0/Drivers" -I"C:/Users/thoma/OneDrive/Documents/University Work 2025/EEE3096S/EEE3096S Practicals/EEE3096S_Practicals/Practical3/Practical_3F0/Drivers/CMSIS/Device/ST/STM32F0xx/Include" -I"C:/Users/thoma/OneDrive/Documents/University Work 2025/EEE3096S/EEE3096S Practicals/EEE3096S_Practicals/Practical3/Practical_3F0/Drivers/CMSIS/Core/Include" -I"C:/Users/thoma/OneDrive/Documents/University Work 2025/EEE3096S/EEE3096S Practicals/EEE3096S_Practicals/Practical3/Practical_3F0/Drivers/STM32F0xx_HAL_Driver" -I"C:/Users/thoma/OneDrive/Documents/University Work 2025/EEE3096S/EEE3096S Practicals/EEE3096S_Practicals/Practical3/Practical_3F0/Drivers/STM32F0xx_HAL_Driver/Src" -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Drivers-2f-CMSIS-2f-NN-2f-Examples-2f-ARM-2f-arm_nn_examples-2f-cifar10

clean-Drivers-2f-CMSIS-2f-NN-2f-Examples-2f-ARM-2f-arm_nn_examples-2f-cifar10:
	-$(RM) ./Drivers/CMSIS/NN/Examples/ARM/arm_nn_examples/cifar10/arm_nnexamples_cifar10.cyclo ./Drivers/CMSIS/NN/Examples/ARM/arm_nn_examples/cifar10/arm_nnexamples_cifar10.d ./Drivers/CMSIS/NN/Examples/ARM/arm_nn_examples/cifar10/arm_nnexamples_cifar10.o ./Drivers/CMSIS/NN/Examples/ARM/arm_nn_examples/cifar10/arm_nnexamples_cifar10.su

.PHONY: clean-Drivers-2f-CMSIS-2f-NN-2f-Examples-2f-ARM-2f-arm_nn_examples-2f-cifar10

