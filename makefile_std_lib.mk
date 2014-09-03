# STD Defines
DDEFS += -DSTM32F40_41xxx -DHSE_VALUE=8000000 -DUSE_STDPERIPH_DRIVER

# Source directories
STM32F4_CORE_DIR 	= ./CMSIS/Include
STM32F4_DEV_DIR		= ./CMSIS/Device/ST/STM32F4xx
STM32F4_STD_LIB		= ./STM32F4xx_StdPeriph_Driver
STM32F4_SRC_DIR		= ./$(STM32F4_STD_LIB)/src
STM32F4_INC_DIR		= ./$(STM32F4_STD_LIB)/inc

ASM_SRC += ./$(STM32F4_DEV_DIR)/Source/Templates/gcc_ride7/startup_stm32f40xx.s

# CMSIS
SRC += ./$(STM32F4_DEV_DIR)/Source/Templates/system_stm32f4xx.c

# STM-Library sources
SRC += $(STM32F4_SRC_DIR)/stm32f4xx_gpio.c
SRC += $(STM32F4_SRC_DIR)/stm32f4xx_rcc.c
SRC += $(STM32F4_SRC_DIR)/stm32f4xx_usart.c
SRC += $(STM32F4_SRC_DIR)/misc.c

# Include directories
INCDIRS += $(STM32F4_CORE_DIR)
INCDIRS += $(STM32F4_DEV_DIR)/Include
INCDIRS += $(STM32F4_INC_DIR)
INCDIRS += $(STM32F4_STD_LIB)
