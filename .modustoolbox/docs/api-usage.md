# API Usage Analysis

Cypress/Infineon API Analysis for: myE84Proj

API Category: All Categories

Hardware Abstraction Layer (HAL) APIs:
• cyhal_gpio_init(): 2 occurrences
• cyhal_uart_init(): 1 occurrence
• cyhal_pwm_*(): 0 occurrences
• Recommendation: HAL APIs provide better portability

Peripheral Driver Library (PDL) APIs:
• Cy_GPIO_Pin_FastInit(): 3 occurrences
• Cy_SCB_UART_Init(): 1 occurrence  
• Cy_SysClk_*(): 2 occurrences
• Recommendation: PDL APIs offer more control but less portability

Board Support Package (BSP) APIs:
• cybsp_init(): 1 occurrence (required)
• CYBSP_LED_*: 2 occurrences
• CYBSP_UART_*: 1 occurrence
• Recommendation: BSP APIs are board-specific shortcuts

Middleware (MW) APIs:
• FreeRTOS APIs: 0 occurrences (FreeRTOS not yet integrated)
• CapSense APIs: 0 occurrences
• USB Device APIs: 0 occurrences

API Usage Recommendations:
1. Consider migrating PDL GPIO calls to HAL for portability
2. Use BSP macros for pin definitions (CYBSP_LED_PIN)
3. Add error checking for all init functions
4. Consider HAL APIs for new peripheral implementations

Migration Suggestions:
• Cy_GPIO_Pin_FastInit() → cyhal_gpio_init()
• Cy_GPIO_Write() → cyhal_gpio_write()
• Better error handling with HAL return codes
