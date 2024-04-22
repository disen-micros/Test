################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../source/Test.c \
../source/semihost_hardfault.c 

OBJS += \
./source/Test.o \
./source/semihost_hardfault.o 

C_DEPS += \
./source/Test.d \
./source/semihost_hardfault.d 


# Each subdirectory must supply rules for building sources it contributes
source/%.o: ../source/%.c source/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DCPU_MK64FN1M0VLL12 -DCPU_MK64FN1M0VLL12_cm4 -DSDK_OS_BAREMETAL -DSDK_DEBUGCONSOLE=1 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -DSERIAL_PORT_TYPE_UART=1 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"C:\DM_TAE\SDK\Test\board" -I"C:\DM_TAE\SDK\Test\source" -I"C:\DM_TAE\SDK\Test\drivers" -I"C:\DM_TAE\SDK\Test\utilities" -I"C:\DM_TAE\SDK\Test\component\serial_manager" -I"C:\DM_TAE\SDK\Test\component\uart" -I"C:\DM_TAE\SDK\Test\component\lists" -I"C:\DM_TAE\SDK\Test\CMSIS" -I"C:\DM_TAE\SDK\Test\device" -O0 -fno-common -g3 -Wall -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


