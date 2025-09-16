################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Drivers/CMSIS/NN/NN_Lib_Tests/nn_test/arm_nnexamples_nn_test.cpp 

OBJS += \
./Drivers/CMSIS/NN/NN_Lib_Tests/nn_test/arm_nnexamples_nn_test.o 

CPP_DEPS += \
./Drivers/CMSIS/NN/NN_Lib_Tests/nn_test/arm_nnexamples_nn_test.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/NN/NN_Lib_Tests/nn_test/%.o Drivers/CMSIS/NN/NN_Lib_Tests/nn_test/%.su Drivers/CMSIS/NN/NN_Lib_Tests/nn_test/%.cyclo: ../Drivers/CMSIS/NN/NN_Lib_Tests/nn_test/%.cpp Drivers/CMSIS/NN/NN_Lib_Tests/nn_test/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m0 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F051x8 -c -I../../Core/Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../../Drivers/CMSIS/Include -I"C:/Users/thoma/OneDrive/Documents/University Work 2025/EEE3096S/EEE3096S Practicals/EEE3096S_Practicals/Practical3/Practical_3F0/Drivers/STM32F0xx_HAL_Driver/Inc" -I"C:/Users/thoma/OneDrive/Documents/University Work 2025/EEE3096S/EEE3096S Practicals/EEE3096S_Practicals/Practical3/Practical_3F0/Core/Inc" -I"C:/Users/thoma/OneDrive/Documents/University Work 2025/EEE3096S/EEE3096S Practicals/EEE3096S_Practicals/Practical3/Practical_3F0/Drivers" -I"C:/Users/thoma/OneDrive/Documents/University Work 2025/EEE3096S/EEE3096S Practicals/EEE3096S_Practicals/Practical3/Practical_3F0/Drivers/CMSIS/Device/ST/STM32F0xx/Include" -I"C:/Users/thoma/OneDrive/Documents/University Work 2025/EEE3096S/EEE3096S Practicals/EEE3096S_Practicals/Practical3/Practical_3F0/Drivers/CMSIS/Core/Include" -I"C:/Users/thoma/OneDrive/Documents/University Work 2025/EEE3096S/EEE3096S Practicals/EEE3096S_Practicals/Practical3/Practical_3F0/Drivers/STM32F0xx_HAL_Driver" -I"C:/Users/thoma/OneDrive/Documents/University Work 2025/EEE3096S/EEE3096S Practicals/EEE3096S_Practicals/Practical3/Practical_3F0/Drivers/STM32F0xx_HAL_Driver/Src" -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Drivers-2f-CMSIS-2f-NN-2f-NN_Lib_Tests-2f-nn_test

clean-Drivers-2f-CMSIS-2f-NN-2f-NN_Lib_Tests-2f-nn_test:
	-$(RM) ./Drivers/CMSIS/NN/NN_Lib_Tests/nn_test/arm_nnexamples_nn_test.cyclo ./Drivers/CMSIS/NN/NN_Lib_Tests/nn_test/arm_nnexamples_nn_test.d ./Drivers/CMSIS/NN/NN_Lib_Tests/nn_test/arm_nnexamples_nn_test.o ./Drivers/CMSIS/NN/NN_Lib_Tests/nn_test/arm_nnexamples_nn_test.su

.PHONY: clean-Drivers-2f-CMSIS-2f-NN-2f-NN_Lib_Tests-2f-nn_test

