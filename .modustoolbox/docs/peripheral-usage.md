# Peripheral Usage Analysis

Peripheral Usage Analysis for: myE84Proj

Scanning for: all peripherals

Found Usage Patterns:
• GPIO Operations:
  - Cy_GPIO_Pin_FastInit() calls: 3 locations
  - Cy_GPIO_Write() calls: 5 locations
  - Pin configurations: P0_3 (LED), P1_2 (UART_TX)

• UART Operations:
  - Cy_SCB_UART_Init() calls: 1 location  
  - UART instances: CYBSP_UART_HW
  - Baud rates configured: 115200

• SPI Operations:
  - Cy_SCB_SPI_Init() calls: 0 locations
  - No SPI usage detected

• I2C Operations:
  - Cy_SCB_I2C_Init() calls: 0 locations
  - No I2C usage detected

Recommendations:
- Consider using HAL APIs for better portability
- Check pin conflicts in design.modus
- Verify interrupt configurations for UART
