LIBRARY_STM32F4XX += $(LIBRARY_DIR)/L0_Platform/stm32f4xx/startup.cpp
LIBRARY_STM32F4XX += $(LIBRARY_DIR)/L0_Platform/arm_cortex/m4/ARM_CM4F/port.c
LIBRARY_STM32F4XX += $(LIBRARY_DIR)/L0_Platform/arm_cortex/exceptions.cpp

OPENOCD_CONFIG = $(LIBRARY_DIR)/L0_Platform/stm32f4xx/stm32f4xx.cfg

$(eval $(call BUILD_LIBRARY,libstm32f4xx,LIBRARY_STM32F4XX))

include $(LIBRARY_DIR)/L0_Platform/arm_cortex/m4/m4.mk

$(eval $(call DEFAULT_PLATFORM_FLASH))
