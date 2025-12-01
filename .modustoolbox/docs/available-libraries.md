# Available Firmware Libraries for APP_KIT_PSE84_EVAL_EPC2

This is a list of available firmware libraries for the current ModusToolbox workspace and board.
These libraries have been provided by Cypress/Infineon and the ModusToolbox ecosystem to facilitate
development with various middleware components and functionalities. It may also include libraries provided
by third-party vendors or the open-source community. The table below lists these libraries along with their details.

## Adding/Removing Libraries

Libraries in this workspace are managed using the **ModusToolbox Library Manager**.

To modify libraries:
1. In VSCode, Open Command Palette (Cmd+Shift+P)
2. Run: **ModusToolbox: Library Manager** or run **make library-manager** from command line at workspace root
3. Select libraries to add/remove/select-version. Additional libraries are available under **"Add Library"** button
4. Click "Update" to apply changes

## Library Usage in workspace across all projects

```json
{
  "total_available": 8,
  "total_used": 5,
  "available_by_category": {
    "Bluetooth®": 11,
    "Core": 11,
    "Ethernet": 3,
    "Graphics": 10,
    "Middleware": 57,
    "Peripheral": 35,
    "Utilities": 6,
    "Wi-Fi": 7
  },
  "used_by_category": {
    "Bluetooth®": 1,
    "Core": 7,
    "Middleware": 4,
    "Peripheral": 1,
    "Utilities": 2
  },
  "notes": "Use `list_available_libraries` MCP tool for complete catalog of available libraries and their summaries"
}
```
## Library Categories

## BSP KIT_PSE84_EVAL_EPC2: Middleware/Firmware Libraries

Libraries available for this MCU/board. The projects column lists the projects using the middleware. If the Local URI is empty, the middleware is not yet downloaded/used.

| Middleware ID|Category|Projects |Versions|Remote URI<br>Local URI |
|:-------------|:-------|:--------|-------:|:-----------------------|
|SHIELD_XENSIV_A|Peripheral||0.5.0 release|https://github.com/Infineon/SHIELD_XENSIV_A<br>|
|abstraction-rtos|Utilities|proj_cm33_ns|1.12.0 release<br>1.11.0 release<br>1.10.0 release<br>(and 19 more)|https://github.com/cypresssemiconductorco/abstraction-rtos<br>../mtb_shared/abstraction-rtos/release-v1.12.0|
|airoc-hci-transport|Bluetooth®||1.2.1 release<br>1.2.0 release<br>1.1.0 release<br>1.0.0 release|https://github.com/Infineon/airoc-hci-transport<br>|
|async-transfer|Middleware|proj_cm33_s<br>proj_cm33_ns<br>proj_cm55|1.1.0 release<br>1.0.0 release|https://github.com/Infineon/async-transfer<br>../mtb_shared/async-transfer/release-v1.1.0|
|audio-codec-ak4954a|Peripheral||1.0.2 release<br>1.0.1 release<br>1.0.0 release|https://github.com/cypresssemiconductorco/audio-codec-ak4954a<br>|
|audio-codec-tlv320dac3100|Middleware||1.0.0 release|https://github.com/Infineon/audio-codec-tlv320dac3100<br>|
|audio-codec-wm8960|Peripheral||1.0.0 release|https://github.com/Infineon/audio-codec-wm8960<br>|
|audio-front-end|Middleware||1.0.1 release<br>1.0.2 release|https://github.com/Infineon/audio-front-end<br>|
|audio-sw-codecs|Middleware||1.0.1 release<br>1.0.2 release|https://github.com/Infineon/audio-sw-codecs<br>|
|audio-voice-core|Middleware||1.0.1 release|https://github.com/Infineon/audio-voice-core<br>|
|avnet-iotc-mtb-sdk|Middleware||release-v8.0.0<br>release-v7.0.3<br>release-v7.0.2<br>(and 4 more)|https://github.com/avnet-iotconnect/avnet-iotc-mtb-sdk<br>|
|aws-iot-device-sdk-embedded-C|Middleware||202103.00<br>202011.00<br>v4_beta release|https://github.com/aws/aws-iot-device-sdk-embedded-C<br>|
|aws-iot-device-sdk-port|Middleware||2.7.0 release<br>2.6.0 release<br>2.5.0 release<br>(and 11 more)|https://github.com/cypresssemiconductorco/aws-iot-device-sdk-port<br>|
|azure-c-sdk-port|Middleware||1.6.0 release<br>1.5.0 release<br>1.4.0 release<br>(and 4 more)|https://github.com/cypresssemiconductorco/azure-c-sdk-port<br>|
|ble-mesh|Bluetooth®||4.0.0 release<br>3.1.0 release|https://github.com/Infineon/ble-mesh<br>|
|block-storage|Middleware||1.3.2 release<br>1.3.1 release<br>1.3.0 release<br>(and 3 more)|https://github.com/Infineon/block-storage<br>|
|bmi160|Peripheral||3.9.1 release<br>3.8.1 release|https://github.com/BoschSensortec/BMI160_driver<br>|
|bmi270|Peripheral||2.86.1 release|https://github.com/BoschSensortec/BMI270_SensorAPI<br>|
|bmm150|Peripheral||2.0.0 release|https://github.com/BoschSensortec/BMM150-Sensor-API<br>|
|bmm350|Peripheral||1.4.0 release|https://github.com/BoschSensortec/BMM350_SensorAPI<br>|
|bt-audio-profiles|Bluetooth®||2.0.0 release<br>1.0.0 release|https://github.com/Infineon/bt-audio-profiles<br>|
|bt-fw-ifx-cyw55500a1|Bluetooth®|proj_cm33_s<br>proj_cm33_ns<br>proj_cm55|3.1.0 release<br>2.1.0 release<br>2.2.0 release<br>1.2.0 release<br>1.1.0 release|https://github.com/Infineon/bt-fw-ifx-cyw55500a1<br>../mtb_shared/bt-fw-ifx-cyw55500a1/release-v2.2.0|
|bt-fw-mur-cyw55513|Bluetooth®||1.0.0 release|https://github.com/Infineon/bt-fw-mur-cyw55513<br>|
|btsdk-audio|Bluetooth®||4.9.4 release<br>4.9.1 release<br>4.8.0 release<br>(and 12 more)|https://github.com/cypresssemiconductorco/btsdk-audio<br>|
|btsdk-common|Bluetooth®||4.7.0 release<br>4.5.0 release<br>4.2.1 release<br>(and 5 more)|https://github.com/cypresssemiconductorco/btsdk-common<br>|
|btsdk-drivers|Peripheral||4.8.0 release<br>4.5.1 release<br>4.5.0 release<br>(and 5 more)|https://github.com/cypresssemiconductorco/btsdk-drivers<br>|
|btsdk-host-apps-bt-ble|Utilities||4.9.3 release<br>4.6.3 release<br>4.6.2 release<br>(and 10 more)|https://github.com/cypresssemiconductorco/btsdk-host-apps-bt-ble<br>|
|btsdk-include|Bluetooth®||4.9.3 release<br>4.6.2 release<br>4.5.0 release<br>(and 11 more)|https://github.com/cypresssemiconductorco/btsdk-include<br>|
|btstack|Bluetooth®||4.1.5 release<br>4.1.4 release<br>4.1.3 release<br>(and 23 more)|https://github.com/cypresssemiconductorco/btstack<br>|
|btstack-integration|Bluetooth®||6.2.1 release<br>6.2.0 release<br>6.1.1 release<br>(and 14 more)|https://github.com/Infineon/btstack-integration<br>|
|buffer-pool-manager|Middleware||1.0.1 release|https://github.com/Infineon/buffer-pool-manager<br>|
|cJSON|Utilities||v1.7.15|https://github.com/DaveGamble/cJSON<br>|
|camera-dvp-ov7675|Peripheral||0.5.1 release<br>0.5.0 release|https://github.com/Infineon/camera-dvp-ov7675<br>|
|capsense|Middleware||8.10.0 release<br>8.0.0 release<br>7.0.0 release<br>(and 4 more)|https://github.com/cypresssemiconductorco/capsense<br>|
|clib-support|Utilities|proj_cm33_ns|1.8.0 release<br>1.7.0 release<br>1.6.0 release<br>(and 7 more)|https://github.com/cypresssemiconductorco/clib-support<br>../mtb_shared/clib-support/release-v1.8.0|
|cmsis|Core|proj_cm33_s<br>proj_cm33_ns<br>proj_cm55|6.1.0 release<br>5.8.2 release<br>5.8.1 release<br>5.8.0 release|https://github.com/Infineon/cmsis<br>../mtb_shared/cmsis/release-v6.1.0|
|command-console|Middleware||6.3.0 release<br>6.2.1 release<br>6.2.0 release<br>(and 15 more)|https://github.com/cypresssemiconductorco/command-console<br>|
|connectivity-utilities|Utilities||4.5.2 release<br>4.5.1 release<br>4.5.0 release<br>(and 15 more)|https://github.com/cypresssemiconductorco/connectivity-utilities<br>|
|core-lib|Core|proj_cm33_s<br>proj_cm33_ns<br>proj_cm55|1.6.0 release<br>1.5.0 release<br>1.4.4 release<br>(and 14 more)|https://github.com/cypresssemiconductorco/core-lib<br>../mtb_shared/core-lib/release-v1.6.0|
|core-make|Core|proj_cm33_s<br>proj_cm33_ns<br>proj_cm55|3.7.0 release<br>3.6.2 release<br>3.6.1 release<br>(and 22 more)|https://github.com/cypresssemiconductorco/core-make<br>../mtb_shared/core-make/release-v3.7.0|
|csdadc|Middleware||2.10.0 release<br>2.0.0 release|https://github.com/cypresssemiconductorco/csdadc<br>|
|csdidac|Middleware||2.10.0 release<br>2.0.0 release|https://github.com/cypresssemiconductorco/csdidac<br>|
|cy-mbedtls-acceleration|Core||v3.0.0 Release<br>v2.7.0 Release<br>v2.6.0 Release<br>(and 10 more)|https://github.com/cypresssemiconductorco/cy-mbedtls-acceleration<br>|
|device-db|Core|proj_cm33_s<br>proj_cm33_ns<br>proj_cm55|4.33.0 release<br>4.31.0 release<br>4.29.0 release<br>(and 24 more)|https://github.com/Infineon/device-db<br>/Users/hdm/.modustoolbox/global/device-db/release-v4.31.0|
|dfu|Middleware||6.1.0 release<br>6.0.0 release<br>5.2.0 release<br>(and 4 more)|https://github.com/cypresssemiconductorco/dfu<br>|
|display-amoled-co5300|Graphics||1.0.0 release<br>1.0.1 release|https://github.com/Infineon/display-amoled-co5300<br>|
|display-dsi-waveshare-4-3-lcd|Graphics||1.0.0 release|https://github.com/Infineon/display-dsi-waveshare-4-3-lcd<br>|
|display-dsi-waveshare-7-0-lcd-c|Graphics||1.0.0 release|https://github.com/Infineon/display-dsi-waveshare-7-0-lcd-c<br>|
|display-eink-e2271cs021|Peripheral||1.1.0 release<br>1.0.1 release<br>1.0.0 release|https://github.com/cypresssemiconductorco/display-eink-e2271cs021<br>|
|display-oled-ssd1306|Peripheral||1.0.3 release<br>1.0.2 release<br>1.0.1 release<br>1.0.0 release|https://github.com/cypresssemiconductorco/display-oled-ssd1306<br>|
|display-tft-ek79007ad3|Graphics||1.0.0 release|https://github.com/Infineon/display-tft-ek79007ad3<br>|
|display-tft-st7735s|Peripheral||0.5.0 release|https://github.com/Infineon/display-tft-st7735s<br>|
|display-tft-st7789v|Peripheral||1.0.1 release<br>1.0.0 release|https://github.com/cypresssemiconductorco/display-tft-st7789v<br>|
|emeeprom|Middleware||2.70.0 release<br>2.60.0 release<br>2.50.0 release<br>(and 4 more)|https://github.com/cypresssemiconductorco/emeeprom<br>|
|emfile|Middleware||3.0.0 release<br>2.0.0 release<br>1.0.0 release|https://github.com/cypresssemiconductorco/emfile<br>|
|emusb-device|Middleware||2.1.0 release<br>1.4.0 release<br>1.3.0 release<br>(and 2 more)|https://github.com/Infineon/emusb-device<br>|
|emusb-host|Middleware||2.1.0 release<br>1.3.0 release<br>1.2.1 release<br>(and 2 more)|https://github.com/Infineon/emusb-host<br>|
|enterprise-security|Middleware||3.3.0 release<br>3.2.0 release<br>3.1.0 release<br>(and 3 more)|https://github.com/cypresssemiconductorco/enterprise-security<br>|
|ethernet-connection-manager|Ethernet||2.2.0 release<br>2.1.1 release<br>2.1.0 release<br>(and 2 more)|https://github.com/Infineon/ethernet-connection-manager<br>|
|ethernet-core-freertos-lwip-mbedtls|Ethernet||3.0.0 release<br>2.3.1 release<br>2.3.0 release<br>(and 3 more)|https://github.com/Infineon/ethernet-core-freertos-lwip-mbedtls<br>|
|ethernet-phy-driver|Ethernet||1.2.0 release<br>1.1.0 release<br>1.0.0 release|https://github.com/Infineon/ethernet-phy-driver<br>|
|freertos|Core|proj_cm33_ns|10.6.201 release<br>10.6.2 release<br>10.5.004 release<br>(and 12 more)|https://github.com/cypresssemiconductorco/freertos<br>../mtb_shared/freertos/release-v10.6.201|
|freertos-posix|Core|proj_cm33_ns|1.0.1 release<br>1.0.0 release|https://github.com/Infineon/freertos-posix<br>../mtb_shared/freertos-posix/release-v1.0.1|
|fw-cyw20829b1|Bluetooth®||1.0.0 release|https://github.com/Infineon/fw-cyw20829b1<br>|
|http-client|Middleware||1.8.1 release<br>1.8.0 release<br>1.7.0 release<br>(and 9 more)|https://github.com/cypresssemiconductorco/http-client<br>|
|http-server|Middleware||3.3.0 release<br>3.2.0 release<br>3.1.0 release<br>(and 12 more)|https://github.com/cypresssemiconductorco/http-server<br>|
|ifx-mbedtls|Middleware||3.6.400 release<br>3.6.300 release<br>3.6.100 release<br>3.5.102 release|https://github.com/Infineon/ifx-mbedtls<br>|
|ifx-mcuboot-pse84|Middleware||1.1.0 release<br>1.0.0 release|https://github.com/Infineon/ifx-mcuboot-pse84<br>|
|ifx-tf-m-ns|Middleware||2.1.400 release<br>2.1.300 release|https://github.com/Infineon/ifx-tf-m-ns<br>|
|ifx-tf-m-pse84epc2|Middleware||2.1.400 release<br>2.1.300 release|https://github.com/Infineon/ifx-tf-m-pse84epc2<br>|
|ifx-tf-m-pse84epc4|Middleware||2.1.400 release<br>2.1.300 release|https://github.com/Infineon/ifx-tf-m-pse84epc4<br>|
|kv-store|Utilities||2.2.0 release<br>2.1.0 release<br>2.0.0 release<br>(and 3 more)|https://github.com/cypresssemiconductorco/kv-store<br>|
|littlefs|Middleware||2.4.0 Release|https://github.com/littlefs-project/littlefs<br>|
|lpa|Middleware||5.8.1 release<br>5.8.0 release<br>5.7.1 release<br>(and 13 more)|https://github.com/cypresssemiconductorco/lpa<br>|
|lvgl|Graphics||9.2.0 Release<br>8.3.5 Release|https://github.com/lvgl/lvgl<br>|
|lwip|Core||Stable 2.1.2 release|https://github.com/lwip-tcpip/lwip<br>|
|lwip-freertos-integration|Middleware||1.2.0 release<br>1.1.0 release<br>1.0.0 release|https://github.com/Infineon/lwip-freertos-integration<br>|
|lwip-network-interface-integration|Middleware||1.7.0 release<br>1.6.0 release<br>1.5.0 release<br>(and 8 more)|https://github.com/Infineon/lwip-network-interface-integration<br>|
|mbedtls|Core||Stable 3.0.0 release|https://github.com/ARMmbed/mbedtls<br>|
|ml-middleware|Middleware||3.1.0 Release<br>3.0.1 Release<br>2.0.1 Release<br>2.0.0 Release<br>1.0.0 Release|https://github.com/Infineon/ml-middleware<br>|
|ml-tflite-micro|Middleware||3.1.0 Release<br>3.0.1 Release<br>2.0.0 Release<br>2.0.1 Release|https://github.com/Infineon/ml-tflite-micro<br>|
|motor-ctrl-lib|Middleware||3.0.0 release<br>2.0.0 release<br>1.9.0 release<br>1.8.0 release|https://github.com/Infineon/motor-ctrl-lib<br>|
|mqtt|Middleware||4.7.0 release<br>4.6.1 release<br>4.6.0 release<br>(and 18 more)|https://github.com/cypresssemiconductorco/mqtt<br>|
|mtb-dsl-pse8xxgp|Core|proj_cm33_s<br>proj_cm33_ns<br>proj_cm55|1.1.1 release<br>1.1.0 release<br>1.0.0 release|https://github.com/Infineon/mtb-dsl-pse8xxgp<br>../mtb_shared/mtb-dsl-pse8xxgp/release-v1.1.0|
|mtb-ipc|Middleware|proj_cm33_s<br>proj_cm33_ns<br>proj_cm55|1.1.0 release<br>1.0.0 release|https://github.com/Infineon/mtb-ipc<br>../mtb_shared/mtb-ipc/release-v1.1.0|
|mtb-littlefs|Middleware||3.0.0 release<br>2.1.0 release<br>2.0.1 release<br>2.0.0 release<br>1.0.0 release|https://github.com/cypresssemiconductorco/mtb-littlefs<br>|
|mtb-pmbus|Middleware||1.0.0 release|https://github.com/Infineon/mtb-pmbus<br>|
|mtb-srf|Middleware|proj_cm33_s<br>proj_cm33_ns<br>proj_cm55|1.1.0 release<br>1.0.0 release|https://github.com/Infineon/mtb-srf<br>../mtb_shared/mtb-srf/release-v1.1.0|
|mtb-stl|Middleware||3.3.1 release<br>3.3.0 release<br>3.2.1 release<br>(and 5 more)|https://github.com/Infineon/mtb-stl<br>|
|mtb-template-pse8xxgp|Core||1.1.0 release<br>1.0.0 release|https://github.com/Infineon/mtb-template-pse8xxgp<br>|
|multi-half-bridge|Peripheral||5.0.1 release<br>5.0.0 release|https://github.com/Infineon/multi-half-bridge<br>|
|netxduo-network-interface-integration|Middleware||1.5.1 release<br>1.5.0 release<br>1.4.0 release<br>(and 4 more)|https://github.com/Infineon/netxduo-network-interface-integration<br>|
|nonrtos-lwip-mbedtls|Middleware||1.0.1 release<br>1.0.0 release|https://github.com/Infineon/nonrtos-lwip-mbedtls<br>|
|optiga-nbt-lib-c-mtb|Peripheral||1.1.3 release<br>1.1.2 release<br>1.1.1 release|https://github.com/Infineon/optiga-nbt-lib-c-mtb<br>|
|optiga-trust-m|Peripheral||5.3.0 release<br>4.1.0 release<br>3.1.2 release<br>3.1.3 release<br>3.1.4 release|https://github.com/Infineon/optiga-trust-m<br>|
|ota-bootloader-abstraction|Middleware||1.8.0 release<br>1.7.0 release<br>1.6.0 release<br>(and 8 more)|https://github.com/Infineon/ota-bootloader-abstraction<br>|
|ota-update|Middleware||4.5.1 release<br>4.5.0 release<br>4.4.0 release<br>(and 11 more)|https://github.com/Infineon/ota-update<br>|
|retarget-io|Peripheral|proj_cm33_ns|1.8.1 release<br>1.8.0 release<br>1.7.0 release<br>(and 7 more)|https://github.com/cypresssemiconductorco/retarget-io<br>../mtb_shared/retarget-io/release-v1.8.1|
|rgb-led|Peripheral||1.2.1 release<br>1.2.0 release<br>1.1.1 release<br>1.1.0 release<br>1.0.0 release|https://github.com/cypresssemiconductorco/rgb-led<br>|
|rtlabs-soem-lib|Peripheral||0.X release<br>0.6.0 release|https://github.com/rtlabs-com/mtb-mw-soem<br>|
|rtlabs-uphy-lib|Peripheral||0.X release<br>0.7.2 release<br>0.7.1 release<br>0.7.0 release<br>0.6.1 release|https://github.com/rtlabs-com/mtb-mw-uphy<br>|
|se-rt-services-utils|Middleware|proj_cm33_s<br>proj_cm33_ns<br>proj_cm55|1.2.0 release|https://github.com/Infineon/se-rt-services-utils<br>../mtb_shared/se-rt-services-utils/release-v1.2.0|
|secure-sockets|Middleware||3.12.0 release<br>3.11.0 release<br>3.10.0 release<br>(and 20 more)|https://github.com/cypresssemiconductorco/secure-sockets<br>|
|sensor-humidity-sht3x|Peripheral||0.5.0 release|https://github.com/Infineon/sensor-humidity-sht3x<br>|
|sensor-humidity-sht4x|Peripheral||1.1.0 release<br>1.0.0 release|https://github.com/Infineon/sensor-humidity-sht4x<br>|
|sensor-light|Peripheral||1.1.0 release<br>1.0.1 release<br>1.0.0 release|https://github.com/cypresssemiconductorco/sensor-light<br>|
|sensor-motion-bmi160|Peripheral||1.1.2 release<br>1.1.1 release<br>1.1.0 release<br>1.0.1 release<br>1.0.0 release|https://github.com/cypresssemiconductorco/sensor-motion-bmi160<br>|
|sensor-motion-bmi270|Peripheral||1.0.0 release<br>0.5.1 release<br>0.5.0 release|https://github.com/Infineon/sensor-motion-bmi270<br>|
|sensor-orientation-bmm350|Peripheral||1.0.1 release<br>1.0.0 release<br>0.5.2 release<br>0.5.1 release<br>0.5.0 release|https://github.com/Infineon/sensor-orientation-bmm350<br>|
|sensor-orientation-bmx160|Peripheral||1.0.2 release<br>1.0.1 release<br>1.0.0 release|https://github.com/Infineon/sensor-orientation-bmx160<br>|
|sensor-xensiv-bgt60trxx|Peripheral||2.0.0 release<br>1.1.0 release<br>1.0.0 release|https://github.com/Infineon/sensor-xensiv-bgt60trxx<br>|
|sensor-xensiv-dps3xx|Peripheral||2.0.0 release|https://github.com/Infineon/sensor-xensiv-dps3xx<br>|
|sensor-xensiv-pasco2|Peripheral||2.0.0 release<br>1.1.0 release<br>1.0.0 release|https://github.com/cypresssemiconductorco/sensor-xensiv-pasco2<br>|
|serial-flash|Peripheral||1.4.3 release<br>1.4.2 release<br>1.3.0 release<br>(and 4 more)|https://github.com/cypresssemiconductorco/serial-flash<br>|
|serial-memory|Peripheral||3.1.0 release<br>3.0.0 release<br>2.0.0 release|https://github.com/Infineon/serial-memory<br>|
|sht3x|Peripheral||2.0.0 release|https://github.com/Sensirion/embedded-i2c-sht3x<br>|
|sht4x|Peripheral||1.1.0 release|https://github.com/Sensirion/embedded-i2c-sht4x<br>|
|speech-onset-detection|Middleware||1.0.1 release|https://github.com/Infineon/speech-onset-detection<br>|
|staged-voice-control|Middleware||1.0.1 release|https://github.com/Infineon/staged-voice-control<br>|
|syspm-callbacks-psc3|Middleware||1.0.0 release|https://github.com/Infineon/syspm-callbacks-psc3<br>|
|syspm-callbacks-t2gc2d6m|Middleware||1.0.0 release|https://github.com/Infineon/syspm-callbacks-t2gc2d6m<br>|
|syspm-callbacks-xmc72|Middleware||1.0.0 release|https://github.com/Infineon/syspm-callbacks-xmc72<br>|
|thermistor|Peripheral||2.1.0 release<br>2.0.0 release<br>1.0.0 release|https://github.com/cypresssemiconductorco/thermistor<br>|
|touch-ctp-ft3268|Graphics||1.0.0 release<br>1.0.1 release|https://github.com/Infineon/touch-ctp-ft3268<br>|
|touch-ctp-ft5406|Graphics||1.0.0 release|https://github.com/Infineon/touch-ctp-ft5406<br>|
|touch-ctp-ft6146-m00|Graphics||1.0.0 release<br>1.0.1 release|https://github.com/Infineon/touch-ctp-ft6146-m00<br>|
|touch-ctp-gt911|Graphics||1.0.0 release|https://github.com/Infineon/touch-ctp-gt911<br>|
|touch-ctp-ili2511|Graphics||1.0.0 release|https://github.com/Infineon/touch-ctp-ili2511<br>|
|usbdev|Middleware||2.10.0 release<br>2.0.0 release|https://github.com/cypresssemiconductorco/usbdev<br>|
|usbfxstack|Middleware||1.3.1 release<br>1.3.0 release<br>1.2.1 release<br>(and 2 more)|https://github.com/Infineon/usbfxstack<br>|
|virtual-connectivity-manager|Middleware||1.0.4 release<br>1.0.3 release<br>1.0.2 release<br>1.0.1 release<br>1.0.0 release|https://github.com/Infineon/virtual-connectivity-manager<br>|
|voice-assistant|Middleware||1.0.0 release|https://github.com/Infineon/voice-assistant<br>|
|whd-bsp-integration|Wi-Fi||2.5.0 release<br>2.4.0 release<br>2.3.1 release<br>(and 11 more)|https://github.com/cypresssemiconductorco/whd-bsp-integration<br>|
|wifi-connection-manager|Middleware||4.0.1 release<br>4.0.0 release<br>3.7.0 release<br>(and 21 more)|https://github.com/cypresssemiconductorco/wifi-connection-manager<br>|
|wifi-core-freertos-lwip-mbedtls|Wi-Fi||3.1.0 release<br>3.0.0 release<br>2.2.1 release<br>(and 5 more)|https://github.com/Infineon/wifi-core-freertos-lwip-mbedtls<br>|
|wifi-host-driver|Wi-Fi||5.0.7 release<br>5.0.6 release<br>4.3.1 release<br>(and 25 more)|https://github.com/cypresssemiconductorco/wifi-host-driver<br>|
|wifi-mw-core|Wi-Fi||3.4.0 release<br>3.3.0 release<br>3.2.0 release<br>(and 5 more)|https://github.com/cypresssemiconductorco/wifi-mw-core<br>|
|wifi-ncp_hm|Wi-Fi||1.2.2 release|https://github.com/Infineon/wifi-ncp_hm<br>|
|wifi-resources|Wi-Fi||3.0.0 release<br>2.0.4 release<br>2.0.0 release<br>1.0.0 release|https://github.com/Infineon/wifi-resources<br>|
|wpa3-external-supplicant|Wi-Fi||1.3.0 release<br>1.2.3 release<br>1.2.2 release<br>(and 3 more)|https://github.com/Infineon/wpa3-external-supplicant<br>|

## Middleware Library Descriptions
### Library **`SHIELD_XENSIV_A`** summary:
<html>
  <body>
This library provides functions for interfacing the components present on the SHIELD_XENSIV_A.
  </body>
</html>

### Library **`abstraction-rtos`** summary:
<html>
  <body>
The RTOS Abstraction Library provides a generic API that allows ModusToolbox&#8482; middleware to be written in an RTOS agnostic manner. It also contains implementations of the Abstraction Layer for FreeRTOS, CMSIS RTOS, and ThreadX.
    <br><br><b>Note:</b>
    This library has specific requirements on the underlying RTOS configuration. See the Readme.md file for details.
  </body>
</html>

### Library **`airoc-hci-transport`** summary:
<html>
  <body>
The airoc-hci-transport is a utility library, offering a comprehensive solution for extracting deubg traces and facilitating communication with external host application.
  </body>
</html>

### Library **`async-transfer`** summary:
<html>
  <body>
Async Transfer Utility Library provides an implementation of data transfer functions in which the user
    initiates the data transfer on the desired communication peripheral and then the data transfer happens in the
    background without the user involvement
  </body>
</html>

### Library **`audio-codec-ak4954a`** summary:
<html>
  <body>
This library provides functions to support use of the AK4954A audio codec found on the CY8CKIT-028-TFT shield.
  </body>
</html>

### Library **`audio-codec-tlv320dac3100`** summary:
<html>
  <body>
This library provides functions to support use of the TLV320DAC3100 audio codec.
  </body>
</html>

### Library **`audio-codec-wm8960`** summary:
<html>
  <body>
This library provides functions to support use of the WM8960 audio codec available on the CY8CKIT-028-SENSE shield.
  </body>
</html>

### Library **`audio-front-end`** summary:
<html>
  <body>
AFE is an agnostic audio processing technology that allows a more accurate recognition of voice commands (far-field or close field) by removing the inference sound captured from the microphone. It extracts user's voice and cancels out an unintended sound to provide the clear speech recognition and better wake word detection.
  </body>
</html>

### Library **`audio-sw-codecs`** summary:
<html>
  <body>
Audio software codec middleware implements an abstraction layer to a audio software codec. This middleware abstracts multiple audio codec that helps applications to have an unified interface across the various software codec.
  </body>
</html>

### Library **`audio-voice-core`** summary:
<html>
  <body>
Audio voice core middleware consist of core audio algorithm implementation. It contains core algorithm implementation for speech-onset-detection, low-power wake word detection, and audio front-end.
  </body>
</html>

### Library **`avnet-iotc-mtb-sdk`** summary:
<html>
  <body>
This SDK is used for Connecting to Avnet /IOTCONNECT platform.
  </body>
</html>

### Library **`aws-iot-device-sdk-embedded-C`** summary:
<html>
  <body>
The AWS IoT Device SDK for Embedded C is a collection of C99 source files that allow applications to securely connect to the AWS IoT platform. It includes an MQTT 3.1.1 client, as well as libraries specific to AWS IoT, such as Thing Shadows. It is distributed in source form and may be built into firmware along with application code. This library supersedes both the AWS IoT Device SDK Embedded C and the libraries provided with FreeRTOS.
        <br/>
        <div class="category">Additional Information:</div>
        <ul>
          <li><a href="https://github.com/aws/aws-iot-device-sdk-embedded-C">AWS IoT Device SDK for Embedded C Library Information</a></li>
        </ul>
  </body>
</html>

### Library **`aws-iot-device-sdk-port`** summary:
<html>
  <body>
This library contains the port layer implementation for the MQTT and HTTP Client libraries to work with the AWS-IoT-Device-SDK-Embedded-C library on PSOC&#8482; 6 MCU based platforms with network connectivity. This library APIs are not expected to be called by application directly. See the MQTT and HTTP Client library documentation for more details. Using this library in a project will cause AWS-IoT-Device-SDK-Embedded-C library to be downloaded on your computer. It is your responsibility to understand and accept the AWS-IoT-Device-SDK-Embedded-C license.
        <br/>
        <div class="category">Additional Information:</div>
        <ul>
          <li><a href="https://github.com/Infineon/aws-iot-device-sdk-port/blob/master/README.md">AWS IoT Device SDK Port Library README.md</a></li>
          <li><a href="https://github.com/Infineon/aws-iot-device-sdk-port/blob/master/RELEASE.md">AWS IoT Device SDK Port Library RELEASE.md</a></li>
          <li><a href="https://infineon.github.io/aws-iot-device-sdk-port/api_reference_manual/html/index.html">AWS IoT Device SDK Port Library API reference guide</a></li>
        </ul>
  </body>
</html>

### Library **`azure-c-sdk-port`** summary:
<html>
  <body>
This library implements the port layer for the Azure SDK for Embedded C to work on PSOC&#8482; 6 MCU based platforms with network connectivity. This library automatically pulls the Azure SDK for Embedded C library; the port layer functions implemented by this library are used by the Azure SDK for Embedded C library. If application needs Azure SDK for Embedded C library with MQTT client functionality, it needs to explicitly import MQTT library. Refer README.md located in ./sample_app/README.md for additional information.
        <br/>
        <div class="category">Additional Information:</div>
        <ul>
          <li><a href="https://github.com/Infineon/azure-c-sdk-port/blob/master/README.md">Azure C SDK Port Library README.md</a></li>
          <li><a href="https://github.com/Infineon/azure-c-sdk-port/blob/master/RELEASE.md">Azure C SDK Port Library RELEASE.md</a></li>
          <li><a href="https://infineon.github.io/azure-c-sdk-port/api_reference_manual/html/index.html">Azure C SDK Port Library API reference guide</a></li>
        </ul>
  </body>
</html>

### Library **`ble-mesh`** summary:
<html>
  <body>
The Bluetooth&#174; LE Mesh middleware libraries and included adaptation code allows user to create LE Mesh applications for PSOC&#8482; 6 + 43012 Bluetooth&#174;, CYW920829M2 chips.
    Components included are binaries for Mesh Core, Mesh Models and Mesh Provisioner libraries and adaptation code to create mesh applications.
    <div class="category">Additional Information:</div>
    <ul>
      <li><a href="https://github.com/Infineon/ble-mesh/blob/master/README.md">Bluetooth&#174; LE Mesh library README.md</a></li>
      <li><a href="https://github.com/Infineon/ble-mesh/blob/master/RELEASE.md">Bluetooth&#174; LE Mesh library RELEASE.md</a></li>
      <li><a href="https://infineon.github.io/ble-mesh/api_reference_manual/html/index.html">Bluetooth&#174; LE Mesh library API reference guide </a></li>
    </ul>
  </body>
</html>

### Library **`block-storage`** summary:
<html>
  <body>
The block-storage library abstracts NVMs. This allows upper layer libraries to be developed independently
    of the underlying memory architecture and making them more portable.<br>
  </body>
</html>

### Library **`bmi160`** summary:
<html>
  <body>
Bosch BMI-160 Sensor Driver.
  </body>
</html>

### Library **`bmi270`** summary:
<html>
  <body>
Bosch BMI-270 Sensor Driver.
  </body>
</html>

### Library **`bmm150`** summary:
<html>
  <body>
Bosch BMM-150 Sensor Driver.
  </body>
</html>

### Library **`bmm350`** summary:
<html>
  <body>
Bosch BMM-350 Sensor Driver.
  </body>
</html>

### Library **`bt-audio-profiles`** summary:
<html>
  <body>
The bt-audio-profiles middleware library provides Bluetooth&#174; Classic Profiles - A2DP, AVRCP, HFP, and SPP.
  </body>
</html>

### Library **`bt-fw-ifx-cyw55500a1`** summary:
<html>
  <body>
The bt-fw-ifx-cyw55500a1 middleware library provides firmware patches for the CYW555xx AIROC&#8482; Wi-Fi & Bluetooth&#174; combo devices.
  </body>
</html>

### Library **`bt-fw-mur-cyw55513`** summary:
<html>
  <body>
The bt-fw-mur-cyw55513 middleware library provides firmware patches for the CYW55513 AIROC&#8482; Wi-Fi & Bluetooth&#174; combo devices.
  </body>
</html>

### Library **`btsdk-audio`** summary:
<html>
<body>
<p>This repo contains a collection of AIROC&#8482; audio-related libraries.  It is downloaded automatically as a dependency of BTSDK applications that require one or more of the libraries.</p>
<p>Each library is found under a COMPONENT_(folder_name) folder in the btsdk-audio repo, see the library list below for the folder names for each library.  To use the libraries in an application, add the folder name to the COMPONENTS variable in the application makefile.  For example, to use the Hands-free Profile library, add the following to the application makefile:<br><code>COMPONENTS+=handsfree_profile</code></p>
To browse the repo, see:<br>
<a href="https://github.com/Infineon/btsdk-audio">https://github.com/Infineon/btsdk-audio</a><br>
To see an application using these libraries:<br>
<a href="https://github.com/Infineon/mtb-example-btsdk-audio-watch">https://github.com/Infineon/mtb-example-btsdk-audio-watch</a><br>
For API documentation, see:<br>
<a href="https://infineon.github.io/btsdk-docs/BT-SDK/index.html">https://infineon.github.io/btsdk-docs/BT-SDK/index.html</a>
</body>
</html>
### Library **`btsdk-common`** summary:
<html>
<body>
<p>This repo contains a collection of common utility functions usable by all AIROC&#8482; applications.  It is downloaded automatically as a dependency of every board's associated Chip Support Package.</p>
To browse the repo, see:<br>
<a href="https://github.com/Infineon/btsdk-common">https://github.com/Infineon/btsdk-common</a>
</body>
</html>
### Library **`btsdk-drivers`** summary:
<html>
<body>
<p>This repo contains a collection of AIROC&#8482; Driver support libraries.  It is downloaded automatically as a dependency of BTSDK applications that require one or more of the libraries.</p>
<p>Each library is found under a COMPONENT_(folder_name) folder in the btsdk-drivers repo, see the library list below for the folder names for each library.  To use the libraries in an application, add the folder name to the COMPONENTS variable in the application makefile.  For example, to use the Ambient Light Sensor library, add the following to the application makefile:<br><code>COMPONENTS+=ambient_light_sensor_lib</code></p>
  <h5>Libraries included:</h5>
  <ul>
    <li>Library to convert HSL Color to RGB Color values (hsl_rgb_lib)</li>
    <li>Library providing API implementation for NCP15XV103E03RC thermistor (thermistor_ncp15xv103_lib)</li>
    <li>Library providing API implementation for NCU15WF104F60RC thermistor (thermistor_ncu15wf104_lib)</li>
    <li>ALS (Ambient Light Sensor) library for MAX44009 ALS (ambient_light_sensor_lib)</li>
    <li>PIR (Passive Infrared Motion Sensor) library for e93196 motion sensor (pir_motion_sensor_lib)</li>
    <li>Button Management Support (button_manager)</li>
    <li>LED Management Support (led_manager)</li>
    <li>NVRAM Emulation in RAM Support (nvram_emulation)</li>
  </ul>
To browse the repo, see:<br>
<a href="https://github.com/Infineon/btsdk-rfcomm">https://github.com/Infineon/btsdk-rfcomm</a><br>
To see an application using these libraries:<br>
HSL to RGB:<br>
<a href="https://github.com/Infineon/mtb-example-btsdk-mesh-demo-color-light">https://github.com/Infineon/mtb-example-btsdk-mesh-demo-color-light</a><br>
Thermistors:<br>
<a href="https://github.com/Infineon/mtb-example-btsdk-mesh-demo-sensor-temperature">https://github.com/Infineon/mtb-example-btsdk-mesh-demo-sensor-temperature</a><br>
ALS:<br>
<a href="https://github.com/Infineon/mtb-example-btsdk-hal-i2c-master">https://github.com/Infineon/mtb-example-btsdk-hal-i2c-master</a><br>
PIR:<br>
<a href="https://github.com/Infineon/mtb-example-btsdk-mesh-demo-sensor-motion">https://github.com/Infineon/mtb-example-btsdk-mesh-demo-sensor-motion</a><br>
Button and LED Management:<br>
<a href="https://github.com/Infineon/mtb-example-btsdk-audio-headset-speaker">https://github.com/Infineon/mtb-example-btsdk-audio-headset-speaker</a><br>
NVRAM Emulation:<br>
<a href="https://github.com/Infineon/mtb-example-btsdk-ble-hello-sensor">https://github.com/Infineon/mtb-example-btsdk-ble-hello-sensor</a><br>
For API documentation, see:<br>
<a href="https://infineon.github.io/btsdk-docs/BT-SDK/index.html">https://infineon.github.io/btsdk-docs/BT-SDK/index.html</a>
</body>
</html>
### Library **`btsdk-host-apps-bt-ble`** summary:
<html>
<body>
  <p>This repo contains the ClientControl app for Bluetooth&#174; LE and BR/EDR embedded apps, and demonstrates use of the AIROC&#8482; HCI protocol to control embedded apps. Binaries and source code are included.</p>
  <h5>The following BTSDK apps use ClientControl:</h5>
  <ul>
    <li>Audio: watch, audio_gateway</li>
    <li>HID: ble_mouse, ble_keyboard, ble_remote</li>
    <li>LE: anc, ans, hrc, hrs, bac, bas, le_coc</li>
    <li>RFCOMM: pbap_client, map_client, opp_server</li>
  </ul>
Any embedded app that configures traces over AIROC&#8482;  HCI would also need to use the ClientControl app to view traces in the BTSpy utility.<br><br>
Supported OS: Windows, Linux, and Android.<br><br>
To browse the repo, see:<br>
<a href="https://github.com/Infineon/btsdk-host-apps-bt-ble">https://github.com/Infineon/btsdk-host-apps-bt-ble</a>
</body>
</html>
### Library **`btsdk-include`** summary:
<html>
<body>
This is a collection of BTSDK common header files used by all AIROC&#8482; applications.  It is downloaded automatically as a dependency of all AIROC&#8482; Chip Support Package (CSP) libraries.<br><br>
To browse the repo, see:<br>
<a href="https://github.com/Infineon/btsdk-include">https://github.com/Infineon/btsdk-include</a><br>
For API documentation, see:<br>
<a href="https://infineon.github.io/btsdk-docs/BT-SDK/index.html">https://infineon.github.io/btsdk-docs/BT-SDK/index.html</a>
</body>
</html>
### Library **`btstack`** summary:
<html>
  <body>
BTSTACK is our Bluetooth&#174; Host Protocol Stack implementation. The stack is optimized to work on our Bluetooth&#174; controllers. The BTSTACK supports Bluetooth&#174; BR/EDR and Bluetooth&#174; LE core protocols. The stack is available as libraries built for Arm&#174; Cortex&#174;-M3 and Cortex&#174;-M4 cores using Arm&#174;, GCC and IAR toolchains. Further there are two build variants of stack libraries, LE only and Dual-mode. Applications that use LE can take advantage of reduced size of LE only library and build LE peripheral or even central applications. Dual-mode library supports both LE and BR/EDR protocols.
    <div class="category">Additional Information:</div>
        <ul>
          <li><a href="https://github.com/Infineon/btstack/blob/master/RELEASE.md">BTSTACK release notes</a></li>
          <li><a href="https://infineon.github.io/btstack/ble/api_reference_manual/html/index.html">BTSTACK API reference manual</a></li>
        </ul>
  </body>
</html>

### Library **`btstack-integration`** summary:
<html>
  <body>
The btstack-integration middleware library provides Bluetooth&#174; porting layer component for PSOC&#8482; 6 targets.
  </body>
</html>

### Library **`buffer-pool-manager`** summary:
<html>
  <body>
Buffer pool manager middleware library provides APIs to create pool of fixed size buffers, receive the available buffer and free it back to the pool after the use.
  </body>
</html>

### Library **`cJSON`** summary:
<html>
  <body>
<a href="https://github.com/DaveGamble/cJSON">cJSON</a> is an
ultra-lightweight JSON parser in ANSI C
  </body>
</html>

### Library **`camera-dvp-ov7675`** summary:
<html>
  <body>
This library provides functions for interfacing with the OV7675 DVP Camera module with on PSOC&#8482; Edge E84 device.
  </body>
</html>

### Library **`capsense`** summary:
<html>
  <body>
Capacitive sensing solution (CAPSENSE&#8482;) enables a variety of applications such as touch, gesture and proximity detection
     for home appliances, automotive, IoT, industrial applications, and more. A CAPSENSE&#8482; supports multiple interfaces
     (widgets) using both Self-Capacitance (CSD) and Mutual-Capacitance (CSX) sensing methods.<br>
    <div class="category">Additional Information:</div>
        <ul>
          <li><a href="https://github.com/Infineon/capsense/blob/master/README.md">CAPSENSE&#8482; Middleware Library README.md</a></li>
          <li><a href="https://github.com/Infineon/capsense/blob/master/RELEASE.md">CAPSENSE&#8482; Middleware Library RELEASE.md</a></li>
          <li><a href="https://infineon.github.io/capsense/capsense_api_reference_manual/html/modules.html">CAPSENSE&#8482; Middleware Library API reference guide</a></li>
        </ul>
  </body>
</html>

### Library **`clib-support`** summary:
<html>
  <body>
The CLib Support Library provides the necessary hooks to make C library functions such as malloc and free thread safe. This implementation is specific to FreeRTOS.
    <br><br><b>Note:</b>
    FREERTOS flags configUSE_MUTEXES, configUSE_RECURSIVE_MUTEXES, and configSUPPORT_STATIC_ALLOCATION must be enabled
  </body>
</html>

### Library **`cmsis`** summary:
<html>
  <body>
CMSIS for PDL: The Common Microcontroller Software Interface Standard (CMSIS) is a vendor-independent abstraction layer for microcontrollers that are based on Arm&#174; Cortex&#174; processors.
    CMSIS defines generic tool interfaces and enables consistent device support. The CMSIS software interfaces simplify software reuse, reduce the learning curve for microcontroller developers, and improve time to market for new devices.
    CMSIS provides interfaces to processor and peripherals, real-time operating systems, and middleware components.
    CMSIS includes a delivery mechanism for devices, boards, and software, and enables the combination of software components from multiple vendors.
  </body>
</html>

### Library **`command-console`** summary:
<html>
  <body>
This library provides a framework to add command console support to the application (or) product usecases. Wi-Fi, iPerf and Bluetooth&#174; Low Energy command support are bundled with this library.
        <br/>
        <div class="category">Additional Information:</div>
        <ul>
          <li><a href="https://github.com/Infineon/command-console/blob/master/README.md">Command Console Library README.md</a></li>
          <li><a href="https://github.com/Infineon/command-console/blob/master/RELEASE.md">Command Console Library RELEASE.md</a></li>
          <li><a href="https://infineon.github.io/command-console/api_reference_manual/html/index.html">Command Console Library API reference guide</a></li>
        </ul>
  </body>
</html>

### Library **`connectivity-utilities`** summary:
<html>
  <body>
The connectivity utilities library is a collection of general purpose middleware utilities. Several connectivity middleware libraries shall depend on this utilities library. Currently, the following utilities are included: JSON parser, linked list, string utilities, network helpers and logging functions, and connectivity middleware error codes.
        <br/>
        <div class="category">Additional Information :</div>
        <ul>
          <li><a href="https://github.com/Infineon/connectivity-utilities/blob/master/README.md">Connectivity Utilities Library README.md</a></li>
          <li><a href="https://github.com/Infineon/connectivity-utilities/blob/master/RELEASE.md">Connectivity Utilities Library RELEASE.md</a></li>
          <li><a href="https://infineon.github.io/connectivity-utilities/api_reference_manual/html/index.html">Connectivity Utilities Library API reference guide</a></li>
        </ul>
  </body>
</html>

### Library **`core-lib`** summary:
<html>
  <body>
The Core Library provides device agnostic utilities that all middleware can rely on. This includes a generic result type and some common utility functions.
  </body>
</html>

### Library **`core-make`** summary:
<html>
  <body>
Core Make build system provides the make build files and scripts for building and programming ModusToolbox&#8482; applications.
         Builds can be run either through a command-line interface (CLI) or through ModusToolbox&#8482; Integrated Development Environment (IDE).<br>
        <div class="category">Additional Information:</div>
        <ul>
          <li><a href="https://github.com/Infineon/core-make/blob/master/README.md">Core Make build system README.md</a></li>
          <li><a href="https://github.com/Infineon/core-make/blob/master/RELEASE.md">Core Make build system RELEASE.md</a></li>
        </ul>
  </body>
</html>

### Library **`csdadc`** summary:
<html>
  <body>
ADC, implemented in the CSD hardware block, for voltage measurements.
  </body>
</html>

### Library **`csdidac`** summary:
<html>
  <body>
IDAC, implemented in the CSD hardware block, to provide regulated current source.
  </body>
</html>

### Library **`cy-mbedtls-acceleration`** summary:
<html>
  <body>
CAT1A, CAT1B and CAT1C MCUs acceleration for mbedTLS library.
  </body>
</html>

### Library **`device-db`** summary:
<html>
  <body>
Device database provides device information for project-creator, configurators,
        and other ModusToolbox&#8482; tools. The device database is tied to the PDL
        (Peripheral Driver Library) packages available for different device categories.
        <br/>
        Update the device-db to the latest version to see the list of the currently
        supported part numbers in the BSP Assistant tool.
  </body>
</html>

### Library **`dfu`** summary:
<html>
  <body>
The Device Firmware Update (DFU) Middleware Library provides a low-level API for the implementation of firmware loader and
     firmware loadable applications using a number of transport interfaces, e.g. UART, I2C, SPI, and USB.<br>
    <div class="category">Additional Information:</div>
        <ul>
          <li><a href="https://github.com/Infineon/dfu/blob/master/README.md">DFU Middleware Library README.md</a></li>
          <li><a href="https://github.com/Infineon/dfu/blob/master/RELEASE.md">DFU Middleware Library RELEASE.md</a></li>
          <li><a href="https://infineon.github.io/dfu/html/modules.html">DFU Middleware Library API reference guide</a></li>
        </ul>
  </body>
</html>

### Library **`display-amoled-co5300`** summary:
<html>
  <body>
This is the driver library for CO5300 display controller driving 1.43-inch 466x466 MIPI DSI AMOLED display connected to the PSOC&#8482; Edge E84 Evaluation Kit.
        <br/>
        <div class="category">Additional Information:</div>
        <ul>
          <li><a href="https://admin.osptek.com/uploads/CO_5300_Datasheet_V0_00_20230328_07edb82936.pdf">CO5300 display controller</a></li>
        </ul>
  </body>
</html>

### Library **`display-dsi-waveshare-4-3-lcd`** summary:
<html>
  <body>
This is the display driver library for Waveshare 4.3-inch 800x480 Raspberry Pi DSI LCD display connected to the PSOC&#8482; Edge E8 MCU Kits.
        <br/>
        <div class="category">Additional Information:</div>
        <ul>
          <li><a href="https://www.waveshare.com/4.3inch-dsi-lcd.htm">Waveshare 4.3-inch DSI Capacitive Touch Display</a></li>
        </ul>
  </body>
</html>

### Library **`display-dsi-waveshare-7-0-lcd-c`** summary:
<html>
  <body>
This is the display driver library for Waveshare 7-inch 1024x600 Raspberry Pi DSI LCD (C) display connected to the PSOC&#8482; Edge E84 Evaluation Kit.
        <br/>
        <div class="category">Additional Information:</div>
        <ul>
          <li><a href="https://www.waveshare.com/7inch-dsi-lcd-c.htm">Waveshare 7-inch Raspberry Pi DSI LCD (C) 1024x600 Display</a></li>
        </ul>
  </body>
</html>

### Library **`display-eink-e2271cs021`** summary:
<html>
  <body>
This library provides functions for supporting the 2.7" EPD Display (E2271CS021). This is the same display as used on the CY8CKIT-028-EPD shield.
  </body>
</html>

### Library **`display-oled-ssd1306`** summary:
<html>
  <body>
This library provides functions to support the 128x64 pixel dot matrix OLED display driven by SSD1306 controller. This is the same display as used on the CY8CKIT-032 shield.
  </body>
</html>

### Library **`display-tft-ek79007ad3`** summary:
<html>
  <body>
This is the driver library for EK79007AD3 display controller driving Winstar 10.1-inch 1024x600 DSI LCD (WF101JTYAHMNB0) display connected to the PSOC&#8482; Edge E84 Evaluation Kit.
        <br/>
        <div class="category">Additional Information:</div>
        <ul>
          <li><a href="https://www.winstar.com.tw/products/tft-lcd/ips-tft/ips-touch.html">Winstar 10.1-inch 1024x600 TFT LCD</a></li>
        </ul>
  </body>
</html>

### Library **`display-tft-st7735s`** summary:
<html>
  <body>
This library provides functions for supporting a 0.96 inch TFT LCD driven by an ST7735S controller. This is the same display as used on the SHIELD_XENSIV_A shield.
  </body>
</html>

### Library **`display-tft-st7789v`** summary:
<html>
  <body>
This library provides functions for supporting a 2.4 inch TFT LCD driven by an ST7789V controller. This is the same display as used on the CY8CKIT-028-TFT shield.
  </body>
</html>

### Library **`emeeprom`** summary:
<html>
  <body>
The Emulated EEPROM middleware emulates an EEPROM device in the PSOC&#8482 & XMC&#8482 7xxx; device flash memory.
     This allows you to store nonvolatile data with support for wear leveling and redundant copy features.<br>
    <div class="category">Additional Information:</div>
        <ul>
          <li><a href="https://github.com/Infineon/emeeprom/blob/master/README.md">Em_EEPROM Middleware Library README.md</a></li>
          <li><a href="https://github.com/Infineon/emeeprom/blob/master/RELEASE.md">Em_EEPROM Middleware Library RELEASE.md</a></li>
          <li><a href="https://infineon.github.io/emeeprom/html/index.html ">Em_EEPROM Middleware Library API reference guide</a></li>
        </ul>
  </body>
</html>

### Library **`emfile`** summary:
<html>
  <body>
SEGGER emFile - A FAT16/32 filesystem for embedded systems supporting SPI NOR flash and SD card.
  </body>
</html>

### Library **`emusb-device`** summary:
<html>
  <body>
emUSB-Device has been designed to work on any embedded system with a USB client controller.
    It can be used with USB 1.1 or USB 2.0 devices.<br>
    <div class="category">Additional Information:</div>
        <ul>
          <li><a href="https://www.segger.com/products/connectivity/emusb-device/">emUSB-Device home page</a></li>
          <li><a href="https://www.segger.com/doc/UM09001_emUSBD.html">emUSB-Device User Guide & Reference Manual</a></li>
        </ul>
  </body>
</html>

### Library **`emusb-host`** summary:
<html>
  <body>
emUSB-Host is a CPU-independent USB Host stack. emUSB-Host is a high-performance
    library that has been optimized for speed, versatility and small memory footprint.<br>
    <div class="category">Additional Information:</div>
        <ul>
          <li><a href="https://www.segger.com/products/connectivity/emusb-host/">emUSB-Host home page</a></li>
          <li><a href="https://www.segger.com/doc/UM10001_emUSBH.html">emUSB-Host User Guide & Reference Manual</a></li>
        </ul>
  </body>
</html>

### Library **`enterprise-security`** summary:
<html>
  <body>
This library provides the capability for best in class Wi-Fi enabled PSOC&#8482; 6 devices to connect to enterprise Wi-Fi networks. This library implements a collection of the most commonly used Extensible Authentication Protocols (EAP) that are used in enterprise networks.
        <br/>
        <div class="category">Additional Information:</div>
        <ul>
          <li><a href="https://github.com/Infineon/enterprise-security/blob/master/README.md">Enterprise Security Library README.md</a></li>
          <li><a href="https://github.com/Infineon/enterprise-security/blob/master/RELEASE.md">Enterprise Security Library RELEASE.md</a></li>
          <li><a href="https://infineon.github.io/enterprise-security/api_reference_manual/html/index.html">Enterprise Security Library API reference guide</a></li>
        </ul>
  </body>
</html>

### Library **`ethernet-connection-manager`** summary:
<html>
  <body>
This library provides a set of APIs that can be used to establish and monitor Ethernet connections on Infineon platforms that support Ethernet connectivity.
        <br/>
        <div class="category">Additional Information:</div>
        <ul>
          <li><a href="https://github.com/Infineon/ethernet-connection-manager/blob/master/README.md">Ethernet connection manager library README.md</a></li>
          <li><a href="https://github.com/Infineon/ethernet-connection-manager/blob/master/RELEASE.md">Ethernet connection manager library RELEASE.md</a></li>
        </ul>
  </body>
</html>

### Library **`ethernet-core-freertos-lwip-mbedtls`** summary:
<html>
  <body>
Ethernet core freertos lwip mbedtls bundle library comprises core components needed for Ethernet connectivity support. The library bundles FreeRTOS, lwIP TCP/IP stack, and mbed TLS for security, Ethernet connection manager, Secure Sockets interface, and configuration files.
        <br/>
        <div class="category">Additional Information:</div>
        <ul>
          <li><a href="https://github.com/Infineon/ethernet-core-freertos-lwip-mbedtls/blob/master/README.md">Ethernet core freertos lwip mbedtls bundle library README.md</a></li>
          <li><a href="https://github.com/Infineon/ethernet-core-freertos-lwip-mbedtls/blob/master/RELEASE.md">Ethernet core freertos lwip mbedtls bundle library RELEASE.md</a></li>
        </ul>
  </body>
</html>

### Library **`ethernet-phy-driver`** summary:
<html>
  <body>
This library provides a set of Ethernet PHY related APIs implementation for different Ethernet PHY chips.
        <br/>
        <div class="category">Additional Information:</div>
        <ul>
          <li><a href="https://github.com/Infineon/ethernet-phy-driver/blob/master/README.md">Ethernet PHY Driver library README.md</a></li>
          <li><a href="https://github.com/Infineon/ethernet-phy-driver/blob/master/RELEASE.md">Ethernet PHY Driver library RELEASE.md</a></li>
        </ul>
  </body>
</html>

### Library **`freertos`** summary:
<html>
  <body>
A FreeRTOS is a small operating system for microcontrollers. A FreeRTOS kernel is distributed as standard C source files
     with configuration header file.<br>
    <br><b>License Disclaimer:</b><br>
    Adding this library will download and add FreeRTOS to your project. It is your responsibility to understand and accept the FreeRTOS license.<br>
    <div class="category">Additional Information:</div>
        <ul>
          <li><a href="https://github.com/Infineon/freertos/blob/master/README.md">FreeRTOS kernel README.md</a></li>
          <li><a href="https://github.com/Infineon/freertos/blob/master/RELEASE.md">FreeRTOS kernel RELEASE.md</a></li>
          <li><a href="https://www.freertos.org/index.html">FreeRTOS home page</a></li>
        </ul>
  </body>
</html>

### Library **`freertos-posix`** summary:
<html>
  <body>
POSIX implementation for FreeRTOS
  </body>
</html>

### Library **`fw-cyw20829b1`** summary:
<html>
  <body>
This repo contains the required Bluetooth&#174; firmware patch for Infineon AIROC&#8482; CYW20829B1 device.
  </body>
</html>

### Library **`http-client`** summary:
<html>
  <body>
This library provides the HTTP Client implementation that can work on the PSOC&#8482; 6 MCU based platforms with network connectivity. This library supports RESTful methods such as GET, PUT, POST, and HEAD to communicate with the HTTP Server.
        <br/>
        <div class="category">Additional Information:</div>
        <ul>
          <li><a href="https://github.com/Infineon/http-client/blob/master/README.md">HTTP Client Library README.md</a></li>
          <li><a href="https://github.com/Infineon/http-client/blob/master/RELEASE.md">HTTP Client Library RELEASE.md</a></li>
          <li><a href="https://infineon.github.io/http-client/api_reference_manual/html/index.html">HTTP Client Library API reference guide</a></li>
        </ul>
  </body>
</html>

### Library **`http-server`** summary:
<html>
  <body>
This library provides the HTTP Server implementation that can work on the PSOC&#8482; 6 MCU based platforms with network connectivity. It supports RESTful methods such as GET, PUT, and POST for the client to communicate with this HTTP Server library.
        <br/>
        <div class="category">Additional Information:</div>
        <ul>
          <li><a href="https://github.com/Infineon/http-server/blob/master/README.md">HTTP Server Library README.md</a></li>
          <li><a href="https://github.com/Infineon/http-server/blob/master/RELEASE.md">HTTP Server Library RELEASE.md</a></li>
          <li><a href="https://infineon.github.io/http-server/api_reference_manual/html/index.html">HTTP Server Library API reference guide</a></li>
        </ul>
  </body>
</html>

### Library **`ifx-mbedtls`** summary:
<html>
  <body>
ifx-mbedtls is a port of Arm&#174; mbedTLS library for Infineon devices.
        mbedTLS is an open-source cryptographic library designed for embedded systems and IoT devices. It provides secure communication protocols, encryption algorithms, and certificate management, offering lightweight and efficient solutions for implementing secure communication and data protection in constrained environments.
        This Infineon port contains support of crypto accelerations provided by Infineon hardware blocks
  </body>
</html>

### Library **`ifx-mcuboot-pse84`** summary:
<html>
  <body>
ifx-mcuboot-pse84 is a port of MCUboot library for PSE84 Infineon devices.
        MCUBoot is an open-source, secure bootloader for 32-bit microcontrollers. It is designed to provide a flexible and reliable mechanism for securely updating firmware images on embedded devices. MCUBoot supports features such as image authentication (using cryptographic signatures), rollback protection, and multiple image slots for safe firmware upgrades. It is widely used in IoT and embedded systems to ensure that only trusted firmware is executed on the device.
  </body>
</html>

### Library **`ifx-tf-m-ns`** summary:
<html>
  <body>
Trusted Firmware-M (TF-M) Non-secure Client Extension (NSCE) library.
  </body>
</html>

### Library **`ifx-tf-m-pse84epc2`** summary:
<html>
  <body>
Trusted Firmware-M (TF-M) implements the Secure Processing Environment (SPE) that aligns with the guidelines outlined by Platform Security Architecture (PSA) for secure devices. TF-M provides a set of secure services conforming to the PSA functional API. The secure sevices provided include PSA Crypto, PSA Secure Storage, and PSA Attestation.
  </body>
</html>

### Library **`ifx-tf-m-pse84epc4`** summary:
<html>
  <body>
Trusted Firmware-M (TF-M) implements the Secure Processing Environment (SPE) that aligns with the guidelines outlined by Platform Security Architecture (PSA) for secure devices. TF-M provides a set of secure services conforming to the PSA functional API. The secure sevices provided include PSA Crypto, PSA Secure Storage, and PSA Attestation.
  </body>
</html>

### Library **`kv-store`** summary:
<html>
  <body>
This library provides a convenient way to store information as key-value pairs in non-volatile storage.
  </body>
</html>

### Library **`littlefs`** summary:
<html>
  <body>
A little fail-safe filesystem designed for microcontrollers.
     Choose the mtb-littlefs under PSOC&#8482; 6 Middleware that will also download this library.
     The mtb-littlefs implements the block device drivers necessary for using a littelfs on the Infineon MCUs.
     A littlefs is hosted in a GitHub repository external to the Infineon organization on GitHub.
    <br><br><b>License Disclaimer:</b><br>
    Adding this library will download and add littlefs to your project. It is your responsibility to understand and accept the littlefs license.<br>
    <div class="category">Additional Information:</div>
        <ul>
          <li><a href="https://github.com/littlefs-project/littlefs">littlefs home page</a></li>
        </ul>
  </body>
</html>

### Library **`lpa`** summary:
<html>
  <body>
LPA is Low power assistant middleware library which provides easy way to configure and use low power features of Infineon devices PSOC&#8482; 6 MCU + Wi-Fi & Bluetooth&#174; combo chip. Please see current documentation for currently supported devices.
        <br/>
        <div class="category">Additional Information:</div>
        <ul>
          <li><a href="https://github.com/Infineon/lpa/blob/master/README.md">LPA README.md</a></li>
          <li><a href="https://github.com/Infineon/lpa/blob/master/RELEASE.md">LPA RELEASE.md</a></li>
          <li><a href="https://infineon.github.io/lpa/api_reference_manual/html/index.html">LPA API reference guide</a></li>
        </ul>
  </body>
</html>

### Library **`lvgl`** summary:
<html>
  <body>
Light and Versatile Graphics Library (LVGL) is the most popular free and open source embedded graphics library to create beautiful UIs for any MCU, MPU and display type.
    It has all the features to create modern and beautiful GUIs: 30+ built-in widgets, a powerful style system, web inspired layout managers, and a typography system supporting many languages.<br>
    <div class="category">Additional Information:</div>
        <ul>
          <li><a href="https://lvgl.io">LVGL home page</a></li>
          <li><a href="https://docs.lvgl.io/">Documentation of LVGL</a></li>
        </ul>
  </body>
</html>

### Library **`lwip`** summary:
<html>
  <body>
lwIP is a small independent open source implementation of the TCP/IP protocol suite. Using this library in a project will cause lwIP to be downloaded on your computer. It is your responsibility to understand and accept the lwIP license.
        <br/>
        <div class="category">Additional Information:</div>
        <ul>
          <li><a href="https://savannah.nongnu.org/projects/lwip">lwIP Library Information</a></li>
          <li><a href="https://git.savannah.nongnu.org/cgit/lwip.git">lwIP Repo Information</a></li>
        </ul>
  </body>
</html>

### Library **`lwip-freertos-integration`** summary:
<html>
  <body>
lwIP FreeRTOS integration library contains the FreeRTOS dependancies needed by the Lightweight open-source TCP/IP stack, version: 2.1.2 to execute.
        <br/>
        <div class="category">Additional Information:</div>
        <ul>
          <li><a href="https://github.com/Infineon/lwip-freertos-integration/blob/master/README.md">lwIP FreeRTOS integration library README.md</a></li>
          <li><a href="https://github.com/Infineon/lwip-freertos-integration/blob/master/RELEASE.md">lwIP FreeRTOS integration library RELEASE.md</a></li>
        </ul>
  </body>
</html>

### Library **`lwip-network-interface-integration`** summary:
<html>
  <body>
lwIP network interface integration library is an integration layer which links lwIP network stack with underlying Wi-Fi Host Driver(WHD) and Ethernet driver. This library interacts with FreeRTOS, lwIP TCP/IP stack, and mbed TLS for security, Wi-Fi host driver (WHD) and Ethernet Driver.
        <br/>
        <div class="category">Additional Information:</div>
        <ul>
          <li><a href="https://github.com/Infineon/lwip-network-interface-integration/blob/master/README.md">lwIP network interface integration library README.md</a></li>
          <li><a href="https://github.com/Infineon/lwip-network-interface-integration/blob/master/RELEASE.md">lwIP network interface integration library RELEASE.md</a></li>
          <li><a href="https://infineon.github.io/lwip-network-interface-integration/api_reference_manual/html/index.html">lwIP network interface integration library API reference guide</a></li>
        </ul>
  </body>
</html>

### Library **`mbedtls`** summary:
<html>
  <body>
Arm&#174; mbedTLS library is an implementation of the TLS and SSL protocols and the respective cryptographic algorithms. mbedTLS is an open source TLS/SSL library which has cryptographic capabilities. Using this library in a project will cause mbedTLS to be downloaded on your computer. It is your responsibility to understand and accept the mbedTLS license and regional use restrictions (including abiding by all applicable export control laws).
        <br/>
        <div class="category">Additional Information:</div>
        <ul>
          <li><a href="https://github.com/ARMmbed/mbedtls">Mbed TLS Library Information</a></li>
        </ul>
  </body>
</html>

### Library **`ml-middleware`** summary:
<html>
  <body>
The ModusToolbox™ ML Middleware library provides helper
      functions to simplify integration of ML models. The library also includes
      functionality to support streaming validation data on the embedded target.
  </body>
</html>

### Library **`ml-tflite-micro`** summary:
<html>
  <body>
The ml-tflite-micro library is a pre-configured TensorFlow tflite-micro runtime library for the Infineon PSoC6™ platform.
  </body>
</html>

### Library **`motor-ctrl-lib`** summary:
<html>
  <body>
Motor control library provides the motor control driver interface in along with implementation of motor control algorithm to various control methods,
    control types and different motors<br>
  </body>
</html>

### Library **`mqtt`** summary:
<html>
  <body>
This MQTT client library works with the family of PSOC&#8482; 6 MCU based connectivity platforms. This library uses the AWS IoT Device SDK MQTT Client library and implements the glue layer that is required for the library to work with PSOC&#8482; 6 MCU based platforms with network connectivity.
        <br/>
        <div class="category">Additional Information:</div>
        <ul>
          <li><a href="https://github.com/Infineon/mqtt/blob/master/README.md">MQTT Client Library README.md</a></li>
          <li><a href="https://github.com/Infineon/mqtt/blob/master/RELEASE.md">MQTT Client Library RELEASE.md</a></li>
          <li><a href="https://infineon.github.io/mqtt/api_reference_manual/html/index.html">MQTT Client Library API reference guide</a></li>
        </ul>
  </body>
</html>

### Library **`mtb-dsl-pse8xxgp`** summary:
<html>
  <body>
Device support library for Explorer PSE8XXGP devices.
  </body>
</html>

### Library **`mtb-ipc`** summary:
<html>
  <body>
The IPC driver allows communication between multiple CPUs or between multiple tasks
    operating in different domains within a single CPU. It supports binary semaphores
    and message queues, similar to how they are used for task interactions in an RTOS envrionment.
  </body>
</html>

### Library **`mtb-littlefs`** summary:
<html>
  <body>
The Block Device drivers for use with a littlefs filesystem.
    <br><b>License Disclaimer:</b><br>
    Adding this library will also download and add littlefs to your project. It is your responsibility to understand and accept the littlefs license.
  </body>
</html>

### Library **`mtb-pmbus`** summary:
<html>
  <body>
ModusToolbox&trade; The purpose of the PMBus middleware library is to
    provide a solution for implementing SMBus/PMBus target devices in
    embedded systems. PMBus (Power Management Bus) is an open standard
    digital power management protocol that enables communication with power
    conversion and management devices. <br>
  </body>
</html>

### Library **`mtb-srf`** summary:
<html>
  <body>
The Secure Request Framework (SRF) exists to provide a reusable infastructure for implementing
    multiple secure operations via a single non-secure-callable entry point.  This framework is
    designed to be generic with no dependency on or knowledge of any particular hardware operation.
  </body>
</html>

### Library **`mtb-stl`** summary:
<html>
  <body>
STL (Safety Test Library) provides functional safety APIs to implement overall safety of a system that depends on automatic protection suitable for using in industrial environments and home appliances.
    STL created in compliance with IEC 60730 Class B and IEC 61508 SIL 2 standards and scalable to different MCUs.<br>
  </body>
</html>

### Library **`mtb-template-pse8xxgp`** summary:
<html>
  <body>
PSE8XXGP BSP template files for the BSP Assistant Tool.
  </body>
</html>

### Library **`multi-half-bridge`** summary:
<html>
  <body>
This C++ library provides APIs for interacting with Infineon's <a href="https://www.infineon.com/cms/en/product/power/motor-control-ics/brushed-dc-motor-driver-ics/multi-half-bridge-ics/">Multi Half-Bridge ICs</a>. This family of devices is designed for DC motor control applications.<br>
          Find more information in the library <a href="https://github.com/Infineon/multi-half-bridge">repository</a>.
  </body>
</html>

### Library **`netxduo-network-interface-integration`** summary:
<html>
  <body>
NetXDuo network interface integration library is an integration layer that links Azure RTOS NetX Duo network stack with underlying Wi-Fi Host Driver(WHD). This library interacts with ThreadX, Azure RTOS NetX Duo TCP/IP stack, and Wi-Fi host driver (WHD).
        <br/>
        <div class="category">Additional Information:</div>
        <ul>
          <li><a href="https://github.com/Infineon/netxduo-network-interface-integration/blob/master/README.md">NetXDuo network interface integration library README.md</a></li>
          <li><a href="https://github.com/Infineon/netxduo-network-interface-integration/blob/master/RELEASE.md">NetXDuo network interface integration library RELEASE.md</a></li>
          <li><a href="https://infineon.github.io/netxduo-network-interface-integration/api_reference_manual/html/index.html">NetXDuo network interface integration library API reference guide</a></li>
        </ul>
  </body>
</html>

### Library **`nonrtos-lwip-mbedtls`** summary:
<html>
  <body>
Non-RTOS lwip mbedtls bundle library comprises core components needed for connectivity without RTOS. The library bundles lwIP TCP/IP stack, and mbed TLS for security, and configuration files.
        <br/>
        <div class="category">Additional Information:</div>
        <ul>
          <li><a href="https://github.com/Infineon/nonrtos-lwip-mbedtls/blob/master/README.md">Non-RTOS lwip mbedtls bundle library README.md</a></li>
          <li><a href="https://github.com/Infineon/nonrtos-lwip-mbedtls/blob/master/RELEASE.md">Non-RTOS lwip mbedtls bundle library RELEASE.md</a></li>
        </ul>
  </body>
</html>

### Library **`optiga-nbt-lib-c-mtb`** summary:
<html>
  <body>
This is the OPTIGA&#8482; Authenticate NBT Host Library for ModusToolbox&#8482; which
	supports the utilization of the OPTIGA&#8482; Authenticate NBT in embedded ModusToolbox&#8482; applications.
  </body>
</html>

### Library **`optiga-trust-m`** summary:
<html>
  <body>
Software Framework for the OPTIGA™ Trust M security solution
  </body>
</html>

### Library **`ota-bootloader-abstraction`** summary:
<html>
  <body>
The OTA bootloader abstraction library provides Bootloader specific storage APIs to handle MCUBootloader based OTA upgrade images of the application code running on a PSOC&#8482; 6 MCU with AIROC&#8482; CYW4343W or CYW43012 Wi-Fi & Bluetooth&#174; combo chip. Please see current documentation for currently supported devices.
        <br/>
        <div class="category">Additional Information:</div>
        <ul>
          <li><a href="https://github.com/Infineon/ota-bootloader-abstraction/blob/master/README.md">OTA Bootloader Abstraction README.md</a></li>
          <li><a href="https://infineon.github.io/ota-bootloader-abstraction/api_reference_manual/html/index.html">OTA Bootloader Abstraction API reference guide</a></li>
          <li><a href="https://github.com/JuulLabs-OSS/mcuboot/blob/cypress/docs/design.md">MCUboot documentation</a></li>
        </ul>
  </body>
</html>

### Library **`ota-update`** summary:
<html>
  <body>
The OTA library provides support for Over-The-Air update of the application code running on a PSOC&#8482; 6 MCU with AIROC&#8482; CYW4343W or CYW43012 Wi-Fi & Bluetooth&#174; combo chip, using Wi-Fi or Bluetooth&#174;. Please see current documentation for currently supported devices. OTA requires the use of mcuboot.
        <br/>
        <div class="category">Additional Information:</div>
        <ul>
          <li><a href="https://github.com/Infineon/ota-update/blob/master/README.md">OTA API README.md</a></li>
          <li><a href="https://infineon.github.io/ota-update/api_reference_manual/html/index.html">OTA API reference guide</a></li>
          <li><a href="https://github.com/JuulLabs-OSS/mcuboot/blob/cypress/docs/design.md">MCUboot documentation</a></li>
        </ul>
  </body>
</html>

### Library **`retarget-io`** summary:
<html>
  <body>
The Retarget IO library provides APIs for transmitting messages to or from the board via standard printf/scanf functions using a UART connection which is generally connected to a host machine.
  </body>
</html>

### Library **`rgb-led`** summary:
<html>
  <body>
The RGB LED library provides APIs for controlling the color and intensity the RGB LED on our kits.
  </body>
</html>

### Library **`rtlabs-soem-lib`** summary:
<html>
  <body>
RT-Labs SOEM EtherCAT Master Library
  </body>
</html>

### Library **`rtlabs-uphy-lib`** summary:
<html>
  <body>
RT-Labs UPHY libraries
  </body>
</html>

### Library **`se-rt-services-utils`** summary:
<html>
  <body>
Secure Enclave Runtime Services Utils library provides implementation of service calls to Secure Enclave Runtime Services and provides functionality like PSA Crypto (including side channel protected algorithms), Attestation, Protection and Anti-rollback Counters APIs.<br>
  </body>
</html>

### Library **`secure-sockets`** summary:
<html>
  <body>
Secure Sockets library provides APIs to create software that can send and/or receive data over the network using sockets. This library supports both secure and non-secure sockets, and abstracts the complexity involved in directly using network stack and security stack APIs. This library supports both IPv4 and IPv6 addressing modes for UDP and TCP sockets.
        <br/>
        <div class="category">Additional Information:</div>
        <ul>
          <li><a href="https://github.com/Infineon/secure-sockets/blob/master/README.md">Secure Sockets Library README.md</a></li>
          <li><a href="https://github.com/Infineon/secure-sockets/blob/master/RELEASE.md">Secure Sockets Library RELEASE.md</a></li>
          <li><a href="https://infineon.github.io/secure-sockets/api_reference_manual/html/index.html">Secure Sockets Library API reference guide</a></li>
        </ul>
  </body>
</html>

### Library **`sensor-humidity-sht3x`** summary:
<html>
  <body>
This library provides functions for interfacing with the SHT35 I2C Humidity and Temperature sensor as used on the SHIELD_XENSIV_A.
  </body>
</html>

### Library **`sensor-humidity-sht4x`** summary:
<html>
  <body>
This library provides functions for interfacing with the I2C-based SHT40 Humidity and Temperature sensor from Sensirion on PSOC&trade; Edge device.
  </body>
</html>

### Library **`sensor-light`** summary:
<html>
  <body>
This library provides functions to support use of a phototransistor ambient light sensor such as the TEMT6000 as used on the CY8CKIT-028-TFT shield.
  </body>
</html>

### Library **`sensor-motion-bmi160`** summary:
<html>
  <body>
This library provides functions for interfacing with the BMI-160 I2C/SPI 16-bit Inertial Measurement Unit with three axis accelerometer and three axis gyroscope as used on the CY8CKIT-028-TFT and CY8CKIT-028-TFT shields.
  </body>
</html>

### Library **`sensor-motion-bmi270`** summary:
<html>
  <body>
This library provides functions for interfacing with the BMI270 I2C 16-bit Inertial Measurement Unit with three axis accelerometer and three axis gyroscope as used on the CY8CKIT-062S2-AI and SHIELD_XENSIV_A.
  </body>
</html>

### Library **`sensor-orientation-bmm350`** summary:
<html>
  <body>
This library provides functions for interfacing with the BMM350 three axis magnetometer.
  </body>
</html>

### Library **`sensor-orientation-bmx160`** summary:
<html>
  <body>
This library provides functions for interfacing with the BMX-160 I2C/SPI 16-bit Absolute Orientation Sensor with three axis accelerometer, three axis gyroscope, and three axis magnetometer as used on the CY8CKIT-028-SENSE shield.
  </body>
</html>

### Library **`sensor-xensiv-bgt60trxx`** summary:
<html>
  <body>
This library provides functions for interfacing with the XENSIV™ BGT60TRxx 60GHz FMCW radar sensors.
  </body>
</html>

### Library **`sensor-xensiv-dps3xx`** summary:
<html>
  <body>
This library provides functions for interfacing with the XENSIV DPS-310/368 Barometric Pressure Sensors. These are miniaturized digital barometric air pressure sensors with ultra-high precision (±2 cm) and a low current consumption, capable of measuring both pressure and temperature. The pressure sensor element is based on a capacitive sensing principle which guarantees high precision during temperature changes. This library can be setup to use the ModusToolbox™ HAL interface, or using user provided communication functions.
  </body>
</html>

### Library **`sensor-xensiv-pasco2`** summary:
<html>
  <body>
This library provides functions for interfacing with the XENSIV™ PAS CO2 Sensors. By leveraging photoacoustic spectroscopy (PAS), XENSIV™ PAS CO2 overcomes the size, performance and assembly challenges of existing CO2 sensor solutions. This library can be setup to use the ModusToolbox™ HAL interface, or using user provided communication functions.
  </body>
</html>

### Library **`serial-flash`** summary:
<html>
  <body>
The Serial Flash library provides APIs for interacting with an external flash connected to the SPI or QSPI interface.
  </body>
</html>

### Library **`serial-memory`** summary:
<html>
  <body>
The Serial Memory library provides APIs for interacting with an external flash connected to the SPI or QSPI interface.
  </body>
</html>

### Library **`sht3x`** summary:
<html>
  <body>
Sensirion SHT3X Library
  </body>
</html>

### Library **`sht4x`** summary:
<html>
  <body>
Sensirion SHT4X Library
  </body>
</html>

### Library **`speech-onset-detection`** summary:
<html>
  <body>
The purpose of a speech onset detector (SOD) is to detect the beginning of a spoken word or utterance. For the target application, the SOD is the first stage of a low power multi-stage wake-up phrase solution. The device is placed in a very low power stand-by mode, but may be woken by the utterance of wake-up phrase.
  </body>
</html>

### Library **`staged-voice-control`** summary:
<html>
  <body>
Staged voice control middleware has in-built support for the wake word models (Ok Infineon, Hey Google, Alexa). User can choose one of the wake word model.Staged voice control middleware provides configuration to enable components in the audio pipeline based on the use case (e.g., it allows to enable SOD, LPWWD, HPWWD, ASR component in the system).
  </body>
</html>

### Library **`syspm-callbacks-psc3`** summary:
<html>
  <body>
Syspm callback Utility Library provides a set of callbacks that can be registered by the
    application to handle deep-sleep entry/exit of select peripherals.
  </body>
</html>

### Library **`syspm-callbacks-t2gc2d6m`** summary:
<html>
  <body>
Syspm callback Utility Library provides a set of callbacks that can be registered by the
    application to handle deep-sleep entry/exit of select peripherals.
  </body>
</html>

### Library **`syspm-callbacks-xmc72`** summary:
<html>
  <body>
Syspm callback Utility Library provides a set of callbacks that can be registered by the
    application to handle deep-sleep entry/exit of select peripherals.
  </body>
</html>

### Library **`thermistor`** summary:
<html>
  <body>
This library provides functions for reading an NTC GPIO based thermistor temperature sensor as used on some shields.
  </body>
</html>

### Library **`touch-ctp-ft3268`** summary:
<html>
  <body>
This is the driver library for FT3268 touch controller enabling capacitive touch functionality for the Microtech 1.43-inch 466x466 MIPI DSI circular AMOLED display connected to the PSOC&#8482; Edge E84 Evaluation Kit.
  </body>
</html>

### Library **`touch-ctp-ft5406`** summary:
<html>
  <body>
This is the driver library for FT5406 touch controller, designed to support the capacitive touch panel of Waveshare Raspberry Pi displays connected to the PSOC&#8482; Edge E8 MCU Kits.
        <br/>
        <div class="category">Additional Information:</div>
        <ul>
          <li><a href="https://www.displayfuture.com/Display/datasheet/controller/FT5x06.pdf">FT5x06 True Multi-Touch Capacitive Touch Panel Controller</a></li>
        </ul>
  </body>
</html>

### Library **`touch-ctp-ft6146-m00`** summary:
<html>
  <body>
This is the driver library for FT6146-M00 touch controller enabling capacitive touch functionality for the Dastek 1.43-inch 466x466 MIPI DSI circular AMOLED display connected to the PSOC&#8482; Edge E84 Evaluation Kit.
  </body>
</html>

### Library **`touch-ctp-gt911`** summary:
<html>
  <body>
This is the driver library for GT911 touch controller enabling capacitive touch functionality for the Waveshare 7-inch 1024x600 Raspberry Pi DSI LCD (C) display connected to the PSOC&#8482; Edge E84 Evaluation Kit.
        <br/>
        <div class="category">Additional Information:</div>
        <ul>
          <li><a href="https://www.crystalfontz.com/controllers/datasheet-viewer.php?id=464">GT911 5-Point Capacitive Touch Controller</a></li>
          <li><a href="https://www.waveshare.com/7inch-dsi-lcd-c.htm">Waveshare 7-inch Raspberry Pi DSI LCD (C) 1024x600 Display</a></li>
        </ul>
  </body>
</html>

### Library **`touch-ctp-ili2511`** summary:
<html>
  <body>
This is the driver library for ILI2511 touch controller enabling capacitive touch functionality for the Winstar 10.1-inch 1024x600 DSI LCD (WF101JTYAHMNB0) display connected to the PSOC&#8482; Edge E84 Evaluation Kit.
        <br/>
        <div class="category">Additional Information:</div>
        <ul>
          <li><a href="https://www.crystalfontz.com/controllers/datasheet-viewer.php?id=487">ILI2511 Single Chip Capacitive Touch Sensor Controller</a></li>
          <li><a href="https://www.winstar.com.tw/products/tft-lcd/ips-tft/ips-touch.html">Winstar 10.1-inch 1024x600 TFT LCD</a></li>
        </ul>
  </body>
</html>

### Library **`usbdev`** summary:
<html>
  <body>
USB Device library for a full-speed USB 2.0 compliant device framework.
  </body>
</html>

### Library **`usbfxstack`** summary:
<html>
  <body>
The USBFXStack Middleware Library provides a powerful and versatile solution
    designed to support the EZ-USB&#8482; FX device family with a variety of integrated modules.
    This library includes essential drivers, utilities, and an operating system to help
    developers efficiently manage and optimize their applications.<br>
  </body>
</html>

### Library **`virtual-connectivity-manager`** summary:
<html>
  <body>
Virtual-Connectivity-Manager (VCM) is a library that enables connectivity libraries to add multi-core support through virtualization. Virtualization allows access of connectivity stack running on one core from another core using Inter Process Communication (IPC).
        <br/>
        <div class="category">Additional Information:</div>
        <ul>
          <li><a href="https://github.com/Infineon/virtual-connectivity-manager/blob/master/README.md">Virtual Connectivity Manager library README.md</a></li>
        </ul>
  </body>
</html>

### Library **`voice-assistant`** summary:
<html>
  <body>
The DEEPCRAFT&#8482; voice assistant is a Edge AI software product used to create and deploy voice assistants (Wake Word Detection + Natural Language Understanding) into an embedded environment. it works in combination with the DEEPCRAFT&#8482; Voice Assistant cloud tool, which is used to define the wake word and commands to be detected.
  </body>
</html>

### Library **`whd-bsp-integration`** summary:
<html>
  <body>
The WHD + BSP Integration library provides some convenience functions for connecting the WiFi Host Driver (WHD) library to a Board Support Package (BSP) that includes a WLAN chip.
  </body>
</html>

### Library **`wifi-connection-manager`** summary:
<html>
  <body>
Wi-Fi Connection Manager (WCM) library helps application developers to manage Wi-Fi Connectivity. The library provides a set of APIs that can be used to establish and monitor Wi-Fi connections on PSOC&#8482; 6 MCU based platforms with connectivity. The library APIs are thread-safe. The library monitors the Wi-Fi connection and can notifies connection state changes through an event notification mechanism. The library also provides APIs to connect to a Wi-Fi network using Wi-Fi Protected Setup (WPS) methods.
        <br/>
        <div class="category">Additional Information:</div>
        <ul>
          <li><a href="https://github.com/Infineon/wifi-connection-manager/blob/master/README.md">Wi-Fi Connection Manager Library README.md</a></li>
          <li><a href="https://github.com/Infineon/wifi-connection-manager/blob/master/RELEASE.md">Wi-Fi Connection Manager Library RELEASE.md</a></li>
          <li><a href="https://infineon.github.io/wifi-connection-manager/api_reference_manual/html/index.html">Wi-Fi Connection Manager Library API reference guide</a></li>
        </ul>
  </body>
</html>

### Library **`wifi-core-freertos-lwip-mbedtls`** summary:
<html>
  <body>
Wi-Fi core freertos lwip mbedtls bundle library comprises core components needed for Wi-Fi connectivity support. The library bundles FreeRTOS, lwIP TCP/IP stack, and mbed TLS for security, Wi-Fi Host Driver (WHD), Wi-Fi connection manager, Secure Sockets interface, and configuration files.
        <br/>
        <div class="category">Additional Information:</div>
        <ul>
          <li><a href="https://github.com/Infineon/wifi-core-freertos-lwip-mbedtls/blob/master/README.md">Wi-Fi core freertos lwip mbedtls bundle library README.md</a></li>
          <li><a href="https://github.com/Infineon/wifi-core-freertos-lwip-mbedtls/blob/master/RELEASE.md">Wi-Fi core freertos lwip mbedtls bundle library RELEASE.md</a></li>
        </ul>
  </body>
</html>

### Library **`wifi-host-driver`** summary:
<html>
  <body>
Wi-Fi Host Driver (WHD) is an independent, embedded Wi-Fi Host Driver that provides a set of APIs to interact with Infineon WLAN chips. It is the low level driver required for any library or application that uses WiFi connectivity.
       <br/>
       <div class="category">Additional Information:</div>
       <ul>
         <li><a href="https://github.com/Infineon/wifi-host-driver/blob/master/README.md">WiFi Host Driver README.md</a></li>
         <li><a href="https://github.com/Infineon/wifi-host-driver/blob/master/RELEASE.md">WiFi Host Driver RELEASE.md</a></li>
         <li><a href="https://infineon.github.io/wifi-host-driver/html/index.html">Wi-Fi Host Driver API Reference Manual and Porting Guide</a></li>
       </ul>
  </body>
</html>

### Library **`wifi-mw-core`** summary:
<html>
  <body>
Wi-Fi Middleware Core library comprises core components needed for Wi-Fi connectivity support. The library bundles FreeRTOS, lwIP TCP/IP stack, and mbed TLS for security, Wi-Fi Host Driver (WHD), Secure Sockets interface, configuration files, and associated code to bind these components together.
        <br/>
        <div class="category">Additional Information:</div>
        <ul>
          <li><a href="https://github.com/Infineon/wifi-mw-core/blob/master/README.md">Wi-Fi Middleware Core Library README.md</a></li>
          <li><a href="https://github.com/Infineon/wifi-mw-core/blob/master/RELEASE.md">Wi-Fi Middleware Core Library RELEASE.md</a></li>
          <li><a href="https://infineon.github.io/wifi-mw-core/api_reference_manual/html/index.html">Wi-Fi Middleware Core Library API reference guide</a></li>
        </ul>
  </body>
</html>

### Library **`wifi-ncp_hm`** summary:
<html>
  <body>
wifi-resources is usage for resource from WHD which contains clm files and nvram for supported radio board.
        <br/>
        <div class="category">Additional Information:</div>
        <ul>
          <li><a href="https://savannah.nongnu.org/projects/lwip">lwIP Library Information</a></li>
          <li><a href="https://git.savannah.nongnu.org/cgit/lwip.git">lwIP Repo Information</a></li>
        </ul>
  </body>
</html>

### Library **`wifi-resources`** summary:
<html>
  <body>
wifi-resources is usage for resource from WHD which contains clm files and nvram for supported radio board.
        <br/>
        <div class="category">Additional Information:</div>
        <ul>
          <li><a href="https://github.com/Infineon/wifi-resources/blob/main/RELEASE.md">WiFi resources README.md</a></li>
        </ul>
  </body>
</html>

### Library **`wpa3-external-supplicant`** summary:
<html>
  <body>
The WPA3 External Supplicant supports WPA3 SAE authentication using HnP (Hunting and Pecking Method) using RFC https://datatracker.ietf.org/doc/html/rfc7664 and H2E ( Hash to Element Method)  using RFC https://datatracker.ietf.org/doc/html/draft-irtf-cfrg-hash-to-curve-10 and following 802.11 spec 2016.
        <br/>
        <div class="category">Additional Information:</div>
        <ul>
          <li><a href="https://github.com/Infineon/wpa3-external-supplicant/blob/master/README.md">WPA3 External Supplicant Library README.md</a></li>
          <li><a href="https://github.com/Infineon/wpa3-external-supplicant/blob/master/RELEASE.md">WPA3 External Supplicant RELEASE.md</a></li>
        </ul>
  </body>
</html>



## Available Libraries (structured JSON)
```json
{
  "middleware_by_category": {
    "Bluetooth®": [
      {
        "middleware_id": "airoc-hci-transport",
        "category": "Bluetooth®",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/airoc-hci-transport",
        "uri": "",
        "description": "The airoc-hci-transport is a utility library, offering a comprehensive solution for extracting deubg traces and facilitating communication with external host application."
      },
      {
        "middleware_id": "ble-mesh",
        "category": "Bluetooth®",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/ble-mesh",
        "uri": "",
        "description": "\n    The Bluetooth&#174; LE Mesh middleware libraries and included adaptation code allows user to create LE Mesh applications for PSOC&#8482; 6 + 43012 Bluetooth&#174;, CYW920829M2 chips.\n    Components included are binaries for Mesh Core, Mesh Models and Mesh Provisioner libraries and adaptation code to create mesh applications.\n    <div class=\"category\">Additional Information:</div>\n    <ul>\n      <li><a href=\"https://github.com/Infineon/ble-mesh/blob/master/README.md\">Bluetooth&#174; LE Mesh library README.md</a></li>\n      <li><a href=\"https://github.com/Infineon/ble-mesh/blob/master/RELEASE.md\">Bluetooth&#174; LE Mesh library RELEASE.md</a></li>\n      <li><a href=\"https://infineon.github.io/ble-mesh/api_reference_manual/html/index.html\">Bluetooth&#174; LE Mesh library API reference guide </a></li>\n    </ul>\n    "
      },
      {
        "middleware_id": "bt-audio-profiles",
        "category": "Bluetooth®",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/bt-audio-profiles",
        "uri": "",
        "description": "\n    The bt-audio-profiles middleware library provides Bluetooth&#174; Classic Profiles - A2DP, AVRCP, HFP, and SPP.\n    "
      },
      {
        "middleware_id": "bt-fw-ifx-cyw55500a1",
        "category": "Bluetooth®",
        "used_by_projects": [
          "proj_cm33_s",
          "proj_cm33_ns",
          "proj_cm55"
        ],
        "remote_uri": "https://github.com/Infineon/bt-fw-ifx-cyw55500a1",
        "uri": "../mtb_shared/bt-fw-ifx-cyw55500a1/release-v2.2.0",
        "description": "\n    The bt-fw-ifx-cyw55500a1 middleware library provides firmware patches for the CYW555xx AIROC&#8482; Wi-Fi & Bluetooth&#174; combo devices.\n    "
      },
      {
        "middleware_id": "bt-fw-mur-cyw55513",
        "category": "Bluetooth®",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/bt-fw-mur-cyw55513",
        "uri": "",
        "description": "\n    The bt-fw-mur-cyw55513 middleware library provides firmware patches for the CYW55513 AIROC&#8482; Wi-Fi & Bluetooth&#174; combo devices.\n    "
      },
      {
        "middleware_id": "btsdk-audio",
        "category": "Bluetooth®",
        "used_by_projects": null,
        "remote_uri": "https://github.com/cypresssemiconductorco/btsdk-audio",
        "uri": "",
        "description": "\n<html>\n<body>\n<p>This repo contains a collection of AIROC&#8482; audio-related libraries.  It is downloaded automatically as a dependency of BTSDK applications that require one or more of the libraries.</p>\n<p>Each library is found under a COMPONENT_(folder_name) folder in the btsdk-audio repo, see the library list below for the folder names for each library.  To use the libraries in an application, add the folder name to the COMPONENTS variable in the application makefile.  For example, to use the Hands-free Profile library, add the following to the application makefile:<br><code>COMPONENTS+=handsfree_profile</code></p>\nTo browse the repo, see:<br>\n<a href=\"https://github.com/Infineon/btsdk-audio\">https://github.com/Infineon/btsdk-audio</a><br>\nTo see an application using these libraries:<br>\n<a href=\"https://github.com/Infineon/mtb-example-btsdk-audio-watch\">https://github.com/Infineon/mtb-example-btsdk-audio-watch</a><br>\nFor API documentation, see:<br>\n<a href=\"https://infineon.github.io/btsdk-docs/BT-SDK/index.html\">https://infineon.github.io/btsdk-docs/BT-SDK/index.html</a>\n</body>\n</html>\n    "
      },
      {
        "middleware_id": "btsdk-common",
        "category": "Bluetooth®",
        "used_by_projects": null,
        "remote_uri": "https://github.com/cypresssemiconductorco/btsdk-common",
        "uri": "",
        "description": "\n<html>\n<body>\n<p>This repo contains a collection of common utility functions usable by all AIROC&#8482; applications.  It is downloaded automatically as a dependency of every board's associated Chip Support Package.</p>\nTo browse the repo, see:<br>\n<a href=\"https://github.com/Infineon/btsdk-common\">https://github.com/Infineon/btsdk-common</a>\n</body>\n</html>\n    "
      },
      {
        "middleware_id": "btsdk-include",
        "category": "Bluetooth®",
        "used_by_projects": null,
        "remote_uri": "https://github.com/cypresssemiconductorco/btsdk-include",
        "uri": "",
        "description": "\n<html>\n<body>\nThis is a collection of BTSDK common header files used by all AIROC&#8482; applications.  It is downloaded automatically as a dependency of all AIROC&#8482; Chip Support Package (CSP) libraries.<br><br>\nTo browse the repo, see:<br>\n<a href=\"https://github.com/Infineon/btsdk-include\">https://github.com/Infineon/btsdk-include</a><br>\nFor API documentation, see:<br>\n<a href=\"https://infineon.github.io/btsdk-docs/BT-SDK/index.html\">https://infineon.github.io/btsdk-docs/BT-SDK/index.html</a>\n</body>\n</html>\n    "
      },
      {
        "middleware_id": "btstack",
        "category": "Bluetooth®",
        "used_by_projects": null,
        "remote_uri": "https://github.com/cypresssemiconductorco/btstack",
        "uri": "",
        "description": "BTSTACK is our Bluetooth&#174; Host Protocol Stack implementation. The stack is optimized to work on our Bluetooth&#174; controllers. The BTSTACK supports Bluetooth&#174; BR/EDR and Bluetooth&#174; LE core protocols. The stack is available as libraries built for Arm&#174; Cortex&#174;-M3 and Cortex&#174;-M4 cores using Arm&#174;, GCC and IAR toolchains. Further there are two build variants of stack libraries, LE only and Dual-mode. Applications that use LE can take advantage of reduced size of LE only library and build LE peripheral or even central applications. Dual-mode library supports both LE and BR/EDR protocols.\n    <div class=\"category\">Additional Information:</div>\n        <ul>\n          <li><a href=\"https://github.com/Infineon/btstack/blob/master/RELEASE.md\">BTSTACK release notes</a></li>\n          <li><a href=\"https://infineon.github.io/btstack/ble/api_reference_manual/html/index.html\">BTSTACK API reference manual</a></li>\n        </ul>\n    "
      },
      {
        "middleware_id": "btstack-integration",
        "category": "Bluetooth®",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/btstack-integration",
        "uri": "",
        "description": "\n    The btstack-integration middleware library provides Bluetooth&#174; porting layer component for PSOC&#8482; 6 targets.\n    "
      },
      {
        "middleware_id": "fw-cyw20829b1",
        "category": "Bluetooth®",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/fw-cyw20829b1",
        "uri": "",
        "description": "\n    This repo contains the required Bluetooth&#174; firmware patch for Infineon AIROC&#8482; CYW20829B1 device.\n    "
      }
    ],
    "Core": [
      {
        "middleware_id": "cmsis",
        "category": "Core",
        "used_by_projects": [
          "proj_cm33_s",
          "proj_cm33_ns",
          "proj_cm55"
        ],
        "remote_uri": "https://github.com/Infineon/cmsis",
        "uri": "../mtb_shared/cmsis/release-v6.1.0",
        "description": "\n    CMSIS for PDL: The Common Microcontroller Software Interface Standard (CMSIS) is a vendor-independent abstraction layer for microcontrollers that are based on Arm&#174; Cortex&#174; processors.\n    CMSIS defines generic tool interfaces and enables consistent device support. The CMSIS software interfaces simplify software reuse, reduce the learning curve for microcontroller developers, and improve time to market for new devices.\n    CMSIS provides interfaces to processor and peripherals, real-time operating systems, and middleware components.\n    CMSIS includes a delivery mechanism for devices, boards, and software, and enables the combination of software components from multiple vendors.\n    "
      },
      {
        "middleware_id": "core-lib",
        "category": "Core",
        "used_by_projects": [
          "proj_cm33_s",
          "proj_cm33_ns",
          "proj_cm55"
        ],
        "remote_uri": "https://github.com/cypresssemiconductorco/core-lib",
        "uri": "../mtb_shared/core-lib/release-v1.6.0",
        "description": "The Core Library provides device agnostic utilities that all middleware can rely on. This includes a generic result type and some common utility functions."
      },
      {
        "middleware_id": "core-make",
        "category": "Core",
        "used_by_projects": [
          "proj_cm33_s",
          "proj_cm33_ns",
          "proj_cm55"
        ],
        "remote_uri": "https://github.com/cypresssemiconductorco/core-make",
        "uri": "../mtb_shared/core-make/release-v3.7.0",
        "description": "\n        Core Make build system provides the make build files and scripts for building and programming ModusToolbox&#8482; applications.\n         Builds can be run either through a command-line interface (CLI) or through ModusToolbox&#8482; Integrated Development Environment (IDE).<br>\n        <div class=\"category\">Additional Information:</div>\n        <ul>\n          <li><a href=\"https://github.com/Infineon/core-make/blob/master/README.md\">Core Make build system README.md</a></li>\n          <li><a href=\"https://github.com/Infineon/core-make/blob/master/RELEASE.md\">Core Make build system RELEASE.md</a></li>\n        </ul>\n    "
      },
      {
        "middleware_id": "cy-mbedtls-acceleration",
        "category": "Core",
        "used_by_projects": null,
        "remote_uri": "https://github.com/cypresssemiconductorco/cy-mbedtls-acceleration",
        "uri": "",
        "description": "CAT1A, CAT1B and CAT1C MCUs acceleration for mbedTLS library."
      },
      {
        "middleware_id": "device-db",
        "category": "Core",
        "used_by_projects": [
          "proj_cm33_s",
          "proj_cm33_ns",
          "proj_cm55"
        ],
        "remote_uri": "https://github.com/Infineon/device-db",
        "uri": "/Users/hdm/.modustoolbox/global/device-db/release-v4.31.0",
        "description": "\n        Device database provides device information for project-creator, configurators,\n        and other ModusToolbox&#8482; tools. The device database is tied to the PDL\n        (Peripheral Driver Library) packages available for different device categories.\n        <br/>\n        Update the device-db to the latest version to see the list of the currently\n        supported part numbers in the BSP Assistant tool.\n    "
      },
      {
        "middleware_id": "freertos",
        "category": "Core",
        "used_by_projects": [
          "proj_cm33_ns"
        ],
        "remote_uri": "https://github.com/cypresssemiconductorco/freertos",
        "uri": "../mtb_shared/freertos/release-v10.6.201",
        "description": "\n    A FreeRTOS is a small operating system for microcontrollers. A FreeRTOS kernel is distributed as standard C source files\n     with configuration header file.<br>\n    <br><b>License Disclaimer:</b><br>\n    Adding this library will download and add FreeRTOS to your project. It is your responsibility to understand and accept the FreeRTOS license.<br>\n    <div class=\"category\">Additional Information:</div>\n        <ul>\n          <li><a href=\"https://github.com/Infineon/freertos/blob/master/README.md\">FreeRTOS kernel README.md</a></li>\n          <li><a href=\"https://github.com/Infineon/freertos/blob/master/RELEASE.md\">FreeRTOS kernel RELEASE.md</a></li>\n          <li><a href=\"https://www.freertos.org/index.html\">FreeRTOS home page</a></li>\n        </ul>\n    "
      },
      {
        "middleware_id": "freertos-posix",
        "category": "Core",
        "used_by_projects": [
          "proj_cm33_ns"
        ],
        "remote_uri": "https://github.com/Infineon/freertos-posix",
        "uri": "../mtb_shared/freertos-posix/release-v1.0.1",
        "description": "POSIX implementation for FreeRTOS"
      },
      {
        "middleware_id": "lwip",
        "category": "Core",
        "used_by_projects": null,
        "remote_uri": "https://github.com/lwip-tcpip/lwip",
        "uri": "",
        "description": "\n        lwIP is a small independent open source implementation of the TCP/IP protocol suite. Using this library in a project will cause lwIP to be downloaded on your computer. It is your responsibility to understand and accept the lwIP license.\n        <br/>\n        <div class=\"category\">Additional Information:</div>\n        <ul>\n          <li><a href=\"https://savannah.nongnu.org/projects/lwip\">lwIP Library Information</a></li>\n          <li><a href=\"https://git.savannah.nongnu.org/cgit/lwip.git\">lwIP Repo Information</a></li>\n        </ul>\n    "
      },
      {
        "middleware_id": "mbedtls",
        "category": "Core",
        "used_by_projects": null,
        "remote_uri": "https://github.com/ARMmbed/mbedtls",
        "uri": "",
        "description": "\n        Arm&#174; mbedTLS library is an implementation of the TLS and SSL protocols and the respective cryptographic algorithms. mbedTLS is an open source TLS/SSL library which has cryptographic capabilities. Using this library in a project will cause mbedTLS to be downloaded on your computer. It is your responsibility to understand and accept the mbedTLS license and regional use restrictions (including abiding by all applicable export control laws).\n        <br/>\n        <div class=\"category\">Additional Information:</div>\n        <ul>\n          <li><a href=\"https://github.com/ARMmbed/mbedtls\">Mbed TLS Library Information</a></li>\n        </ul>\n    "
      },
      {
        "middleware_id": "mtb-dsl-pse8xxgp",
        "category": "Core",
        "used_by_projects": [
          "proj_cm33_s",
          "proj_cm33_ns",
          "proj_cm55"
        ],
        "remote_uri": "https://github.com/Infineon/mtb-dsl-pse8xxgp",
        "uri": "../mtb_shared/mtb-dsl-pse8xxgp/release-v1.1.0",
        "description": "Device support library for Explorer PSE8XXGP devices."
      },
      {
        "middleware_id": "mtb-template-pse8xxgp",
        "category": "Core",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/mtb-template-pse8xxgp",
        "uri": "",
        "description": "PSE8XXGP BSP template files for the BSP Assistant Tool."
      }
    ],
    "Ethernet": [
      {
        "middleware_id": "ethernet-connection-manager",
        "category": "Ethernet",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/ethernet-connection-manager",
        "uri": "",
        "description": "\n        This library provides a set of APIs that can be used to establish and monitor Ethernet connections on Infineon platforms that support Ethernet connectivity.\n        <br/>\n        <div class=\"category\">Additional Information:</div>\n        <ul>\n          <li><a href=\"https://github.com/Infineon/ethernet-connection-manager/blob/master/README.md\">Ethernet connection manager library README.md</a></li>\n          <li><a href=\"https://github.com/Infineon/ethernet-connection-manager/blob/master/RELEASE.md\">Ethernet connection manager library RELEASE.md</a></li>\n        </ul>\n    "
      },
      {
        "middleware_id": "ethernet-core-freertos-lwip-mbedtls",
        "category": "Ethernet",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/ethernet-core-freertos-lwip-mbedtls",
        "uri": "",
        "description": "\n        Ethernet core freertos lwip mbedtls bundle library comprises core components needed for Ethernet connectivity support. The library bundles FreeRTOS, lwIP TCP/IP stack, and mbed TLS for security, Ethernet connection manager, Secure Sockets interface, and configuration files.\n        <br/>\n        <div class=\"category\">Additional Information:</div>\n        <ul>\n          <li><a href=\"https://github.com/Infineon/ethernet-core-freertos-lwip-mbedtls/blob/master/README.md\">Ethernet core freertos lwip mbedtls bundle library README.md</a></li>\n          <li><a href=\"https://github.com/Infineon/ethernet-core-freertos-lwip-mbedtls/blob/master/RELEASE.md\">Ethernet core freertos lwip mbedtls bundle library RELEASE.md</a></li>\n        </ul>\n    "
      },
      {
        "middleware_id": "ethernet-phy-driver",
        "category": "Ethernet",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/ethernet-phy-driver",
        "uri": "",
        "description": "\n        This library provides a set of Ethernet PHY related APIs implementation for different Ethernet PHY chips.\n        <br/>\n        <div class=\"category\">Additional Information:</div>\n        <ul>\n          <li><a href=\"https://github.com/Infineon/ethernet-phy-driver/blob/master/README.md\">Ethernet PHY Driver library README.md</a></li>\n          <li><a href=\"https://github.com/Infineon/ethernet-phy-driver/blob/master/RELEASE.md\">Ethernet PHY Driver library RELEASE.md</a></li>\n        </ul>\n    "
      }
    ],
    "Graphics": [
      {
        "middleware_id": "display-amoled-co5300",
        "category": "Graphics",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/display-amoled-co5300",
        "uri": "",
        "description": "\n        This is the driver library for CO5300 display controller driving 1.43-inch 466x466 MIPI DSI AMOLED display connected to the PSOC&#8482; Edge E84 Evaluation Kit.\n        <br/>\n        <div class=\"category\">Additional Information:</div>\n        <ul>\n          <li><a href=\"https://admin.osptek.com/uploads/CO_5300_Datasheet_V0_00_20230328_07edb82936.pdf\">CO5300 display controller</a></li>\n        </ul>\n    "
      },
      {
        "middleware_id": "display-dsi-waveshare-4-3-lcd",
        "category": "Graphics",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/display-dsi-waveshare-4-3-lcd",
        "uri": "",
        "description": "\n        This is the display driver library for Waveshare 4.3-inch 800x480 Raspberry Pi DSI LCD display connected to the PSOC&#8482; Edge E8 MCU Kits.\n        <br/>\n        <div class=\"category\">Additional Information:</div>\n        <ul>\n          <li><a href=\"https://www.waveshare.com/4.3inch-dsi-lcd.htm\">Waveshare 4.3-inch DSI Capacitive Touch Display</a></li>\n        </ul>\n    "
      },
      {
        "middleware_id": "display-dsi-waveshare-7-0-lcd-c",
        "category": "Graphics",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/display-dsi-waveshare-7-0-lcd-c",
        "uri": "",
        "description": "\n        This is the display driver library for Waveshare 7-inch 1024x600 Raspberry Pi DSI LCD (C) display connected to the PSOC&#8482; Edge E84 Evaluation Kit.\n        <br/>\n        <div class=\"category\">Additional Information:</div>\n        <ul>\n          <li><a href=\"https://www.waveshare.com/7inch-dsi-lcd-c.htm\">Waveshare 7-inch Raspberry Pi DSI LCD (C) 1024x600 Display</a></li>\n        </ul>\n    "
      },
      {
        "middleware_id": "display-tft-ek79007ad3",
        "category": "Graphics",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/display-tft-ek79007ad3",
        "uri": "",
        "description": "\n        This is the driver library for EK79007AD3 display controller driving Winstar 10.1-inch 1024x600 DSI LCD (WF101JTYAHMNB0) display connected to the PSOC&#8482; Edge E84 Evaluation Kit.\n        <br/>\n        <div class=\"category\">Additional Information:</div>\n        <ul>\n          <li><a href=\"https://www.winstar.com.tw/products/tft-lcd/ips-tft/ips-touch.html\">Winstar 10.1-inch 1024x600 TFT LCD</a></li>\n        </ul>\n    "
      },
      {
        "middleware_id": "lvgl",
        "category": "Graphics",
        "used_by_projects": null,
        "remote_uri": "https://github.com/lvgl/lvgl",
        "uri": "",
        "description": "\n    Light and Versatile Graphics Library (LVGL) is the most popular free and open source embedded graphics library to create beautiful UIs for any MCU, MPU and display type.\n    It has all the features to create modern and beautiful GUIs: 30+ built-in widgets, a powerful style system, web inspired layout managers, and a typography system supporting many languages.<br>\n    <div class=\"category\">Additional Information:</div>\n        <ul>\n          <li><a href=\"https://lvgl.io\">LVGL home page</a></li>\n          <li><a href=\"https://docs.lvgl.io/\">Documentation of LVGL</a></li>\n        </ul>\n    "
      },
      {
        "middleware_id": "touch-ctp-ft3268",
        "category": "Graphics",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/touch-ctp-ft3268",
        "uri": "",
        "description": "\n        This is the driver library for FT3268 touch controller enabling capacitive touch functionality for the Microtech 1.43-inch 466x466 MIPI DSI circular AMOLED display connected to the PSOC&#8482; Edge E84 Evaluation Kit.\n    "
      },
      {
        "middleware_id": "touch-ctp-ft5406",
        "category": "Graphics",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/touch-ctp-ft5406",
        "uri": "",
        "description": "\n        This is the driver library for FT5406 touch controller, designed to support the capacitive touch panel of Waveshare Raspberry Pi displays connected to the PSOC&#8482; Edge E8 MCU Kits.\n        <br/>\n        <div class=\"category\">Additional Information:</div>\n        <ul>\n          <li><a href=\"https://www.displayfuture.com/Display/datasheet/controller/FT5x06.pdf\">FT5x06 True Multi-Touch Capacitive Touch Panel Controller</a></li>\n        </ul>\n    "
      },
      {
        "middleware_id": "touch-ctp-ft6146-m00",
        "category": "Graphics",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/touch-ctp-ft6146-m00",
        "uri": "",
        "description": "\n        This is the driver library for FT6146-M00 touch controller enabling capacitive touch functionality for the Dastek 1.43-inch 466x466 MIPI DSI circular AMOLED display connected to the PSOC&#8482; Edge E84 Evaluation Kit.\n    "
      },
      {
        "middleware_id": "touch-ctp-gt911",
        "category": "Graphics",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/touch-ctp-gt911",
        "uri": "",
        "description": "\n        This is the driver library for GT911 touch controller enabling capacitive touch functionality for the Waveshare 7-inch 1024x600 Raspberry Pi DSI LCD (C) display connected to the PSOC&#8482; Edge E84 Evaluation Kit.\n        <br/>\n        <div class=\"category\">Additional Information:</div>\n        <ul>\n          <li><a href=\"https://www.crystalfontz.com/controllers/datasheet-viewer.php?id=464\">GT911 5-Point Capacitive Touch Controller</a></li>\n          <li><a href=\"https://www.waveshare.com/7inch-dsi-lcd-c.htm\">Waveshare 7-inch Raspberry Pi DSI LCD (C) 1024x600 Display</a></li>\n        </ul>\n    "
      },
      {
        "middleware_id": "touch-ctp-ili2511",
        "category": "Graphics",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/touch-ctp-ili2511",
        "uri": "",
        "description": "\n        This is the driver library for ILI2511 touch controller enabling capacitive touch functionality for the Winstar 10.1-inch 1024x600 DSI LCD (WF101JTYAHMNB0) display connected to the PSOC&#8482; Edge E84 Evaluation Kit.\n        <br/>\n        <div class=\"category\">Additional Information:</div>\n        <ul>\n          <li><a href=\"https://www.crystalfontz.com/controllers/datasheet-viewer.php?id=487\">ILI2511 Single Chip Capacitive Touch Sensor Controller</a></li>\n          <li><a href=\"https://www.winstar.com.tw/products/tft-lcd/ips-tft/ips-touch.html\">Winstar 10.1-inch 1024x600 TFT LCD</a></li>\n        </ul>\n    "
      }
    ],
    "Middleware": [
      {
        "middleware_id": "async-transfer",
        "category": "Middleware",
        "used_by_projects": [
          "proj_cm33_s",
          "proj_cm33_ns",
          "proj_cm55"
        ],
        "remote_uri": "https://github.com/Infineon/async-transfer",
        "uri": "../mtb_shared/async-transfer/release-v1.1.0",
        "description": "\n    Async Transfer Utility Library provides an implementation of data transfer functions in which the user\n    initiates the data transfer on the desired communication peripheral and then the data transfer happens in the\n    background without the user involvement\n    "
      },
      {
        "middleware_id": "audio-codec-tlv320dac3100",
        "category": "Middleware",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/audio-codec-tlv320dac3100",
        "uri": "",
        "description": "This library provides functions to support use of the TLV320DAC3100 audio codec.\n    "
      },
      {
        "middleware_id": "audio-front-end",
        "category": "Middleware",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/audio-front-end",
        "uri": "",
        "description": "\n    AFE is an agnostic audio processing technology that allows a more accurate recognition of voice commands (far-field or close field) by removing the inference sound captured from the microphone. It extracts user's voice and cancels out an unintended sound to provide the clear speech recognition and better wake word detection.\n    "
      },
      {
        "middleware_id": "audio-sw-codecs",
        "category": "Middleware",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/audio-sw-codecs",
        "uri": "",
        "description": "\n    Audio software codec middleware implements an abstraction layer to a audio software codec. This middleware abstracts multiple audio codec that helps applications to have an unified interface across the various software codec.\n    "
      },
      {
        "middleware_id": "audio-voice-core",
        "category": "Middleware",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/audio-voice-core",
        "uri": "",
        "description": "\n    Audio voice core middleware consist of core audio algorithm implementation. It contains core algorithm implementation for speech-onset-detection, low-power wake word detection, and audio front-end.\n    "
      },
      {
        "middleware_id": "avnet-iotc-mtb-sdk",
        "category": "Middleware",
        "used_by_projects": null,
        "remote_uri": "https://github.com/avnet-iotconnect/avnet-iotc-mtb-sdk",
        "uri": "",
        "description": "This SDK is used for Connecting to Avnet /IOTCONNECT platform."
      },
      {
        "middleware_id": "aws-iot-device-sdk-embedded-C",
        "category": "Middleware",
        "used_by_projects": null,
        "remote_uri": "https://github.com/aws/aws-iot-device-sdk-embedded-C",
        "uri": "",
        "description": "\n         The AWS IoT Device SDK for Embedded C is a collection of C99 source files that allow applications to securely connect to the AWS IoT platform. It includes an MQTT 3.1.1 client, as well as libraries specific to AWS IoT, such as Thing Shadows. It is distributed in source form and may be built into firmware along with application code. This library supersedes both the AWS IoT Device SDK Embedded C and the libraries provided with FreeRTOS.\n        <br/>\n        <div class=\"category\">Additional Information:</div>\n        <ul>\n          <li><a href=\"https://github.com/aws/aws-iot-device-sdk-embedded-C\">AWS IoT Device SDK for Embedded C Library Information</a></li>\n        </ul>\n    "
      },
      {
        "middleware_id": "aws-iot-device-sdk-port",
        "category": "Middleware",
        "used_by_projects": null,
        "remote_uri": "https://github.com/cypresssemiconductorco/aws-iot-device-sdk-port",
        "uri": "",
        "description": "\n        This library contains the port layer implementation for the MQTT and HTTP Client libraries to work with the AWS-IoT-Device-SDK-Embedded-C library on PSOC&#8482; 6 MCU based platforms with network connectivity. This library APIs are not expected to be called by application directly. See the MQTT and HTTP Client library documentation for more details. Using this library in a project will cause AWS-IoT-Device-SDK-Embedded-C library to be downloaded on your computer. It is your responsibility to understand and accept the AWS-IoT-Device-SDK-Embedded-C license.\n        <br/>\n        <div class=\"category\">Additional Information:</div>\n        <ul>\n          <li><a href=\"https://github.com/Infineon/aws-iot-device-sdk-port/blob/master/README.md\">AWS IoT Device SDK Port Library README.md</a></li>\n          <li><a href=\"https://github.com/Infineon/aws-iot-device-sdk-port/blob/master/RELEASE.md\">AWS IoT Device SDK Port Library RELEASE.md</a></li>\n          <li><a href=\"https://infineon.github.io/aws-iot-device-sdk-port/api_reference_manual/html/index.html\">AWS IoT Device SDK Port Library API reference guide</a></li>\n        </ul>\n    "
      },
      {
        "middleware_id": "azure-c-sdk-port",
        "category": "Middleware",
        "used_by_projects": null,
        "remote_uri": "https://github.com/cypresssemiconductorco/azure-c-sdk-port",
        "uri": "",
        "description": "\n        This library implements the port layer for the Azure SDK for Embedded C to work on PSOC&#8482; 6 MCU based platforms with network connectivity. This library automatically pulls the Azure SDK for Embedded C library; the port layer functions implemented by this library are used by the Azure SDK for Embedded C library. If application needs Azure SDK for Embedded C library with MQTT client functionality, it needs to explicitly import MQTT library. Refer README.md located in ./sample_app/README.md for additional information.\n        <br/>\n        <div class=\"category\">Additional Information:</div>\n        <ul>\n          <li><a href=\"https://github.com/Infineon/azure-c-sdk-port/blob/master/README.md\">Azure C SDK Port Library README.md</a></li>\n          <li><a href=\"https://github.com/Infineon/azure-c-sdk-port/blob/master/RELEASE.md\">Azure C SDK Port Library RELEASE.md</a></li>\n          <li><a href=\"https://infineon.github.io/azure-c-sdk-port/api_reference_manual/html/index.html\">Azure C SDK Port Library API reference guide</a></li>\n        </ul>\n    "
      },
      {
        "middleware_id": "block-storage",
        "category": "Middleware",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/block-storage",
        "uri": "",
        "description": "\n    The block-storage library abstracts NVMs. This allows upper layer libraries to be developed independently\n    of the underlying memory architecture and making them more portable.<br>\n    "
      },
      {
        "middleware_id": "buffer-pool-manager",
        "category": "Middleware",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/buffer-pool-manager",
        "uri": "",
        "description": "\n    Buffer pool manager middleware library provides APIs to create pool of fixed size buffers, receive the available buffer and free it back to the pool after the use.\n    "
      },
      {
        "middleware_id": "capsense",
        "category": "Middleware",
        "used_by_projects": null,
        "remote_uri": "https://github.com/cypresssemiconductorco/capsense",
        "uri": "",
        "description": "\n    Capacitive sensing solution (CAPSENSE&#8482;) enables a variety of applications such as touch, gesture and proximity detection\n     for home appliances, automotive, IoT, industrial applications, and more. A CAPSENSE&#8482; supports multiple interfaces\n     (widgets) using both Self-Capacitance (CSD) and Mutual-Capacitance (CSX) sensing methods.<br>\n    <div class=\"category\">Additional Information:</div>\n        <ul>\n          <li><a href=\"https://github.com/Infineon/capsense/blob/master/README.md\">CAPSENSE&#8482; Middleware Library README.md</a></li>\n          <li><a href=\"https://github.com/Infineon/capsense/blob/master/RELEASE.md\">CAPSENSE&#8482; Middleware Library RELEASE.md</a></li>\n          <li><a href=\"https://infineon.github.io/capsense/capsense_api_reference_manual/html/modules.html\">CAPSENSE&#8482; Middleware Library API reference guide</a></li>\n        </ul>\n    "
      },
      {
        "middleware_id": "command-console",
        "category": "Middleware",
        "used_by_projects": null,
        "remote_uri": "https://github.com/cypresssemiconductorco/command-console",
        "uri": "",
        "description": "\n        This library provides a framework to add command console support to the application (or) product usecases. Wi-Fi, iPerf and Bluetooth&#174; Low Energy command support are bundled with this library.\n        <br/>\n        <div class=\"category\">Additional Information:</div>\n        <ul>\n          <li><a href=\"https://github.com/Infineon/command-console/blob/master/README.md\">Command Console Library README.md</a></li>\n          <li><a href=\"https://github.com/Infineon/command-console/blob/master/RELEASE.md\">Command Console Library RELEASE.md</a></li>\n          <li><a href=\"https://infineon.github.io/command-console/api_reference_manual/html/index.html\">Command Console Library API reference guide</a></li>\n        </ul>\n    "
      },
      {
        "middleware_id": "csdadc",
        "category": "Middleware",
        "used_by_projects": null,
        "remote_uri": "https://github.com/cypresssemiconductorco/csdadc",
        "uri": "",
        "description": "ADC, implemented in the CSD hardware block, for voltage measurements."
      },
      {
        "middleware_id": "csdidac",
        "category": "Middleware",
        "used_by_projects": null,
        "remote_uri": "https://github.com/cypresssemiconductorco/csdidac",
        "uri": "",
        "description": "IDAC, implemented in the CSD hardware block, to provide regulated current source."
      },
      {
        "middleware_id": "dfu",
        "category": "Middleware",
        "used_by_projects": null,
        "remote_uri": "https://github.com/cypresssemiconductorco/dfu",
        "uri": "",
        "description": "\n    The Device Firmware Update (DFU) Middleware Library provides a low-level API for the implementation of firmware loader and\n     firmware loadable applications using a number of transport interfaces, e.g. UART, I2C, SPI, and USB.<br>\n    <div class=\"category\">Additional Information:</div>\n        <ul>\n          <li><a href=\"https://github.com/Infineon/dfu/blob/master/README.md\">DFU Middleware Library README.md</a></li>\n          <li><a href=\"https://github.com/Infineon/dfu/blob/master/RELEASE.md\">DFU Middleware Library RELEASE.md</a></li>\n          <li><a href=\"https://infineon.github.io/dfu/html/modules.html\">DFU Middleware Library API reference guide</a></li>\n        </ul>\n    "
      },
      {
        "middleware_id": "emeeprom",
        "category": "Middleware",
        "used_by_projects": null,
        "remote_uri": "https://github.com/cypresssemiconductorco/emeeprom",
        "uri": "",
        "description": "\n    The Emulated EEPROM middleware emulates an EEPROM device in the PSOC&#8482 & XMC&#8482 7xxx; device flash memory.\n     This allows you to store nonvolatile data with support for wear leveling and redundant copy features.<br>\n    <div class=\"category\">Additional Information:</div>\n        <ul>\n          <li><a href=\"https://github.com/Infineon/emeeprom/blob/master/README.md\">Em_EEPROM Middleware Library README.md</a></li>\n          <li><a href=\"https://github.com/Infineon/emeeprom/blob/master/RELEASE.md\">Em_EEPROM Middleware Library RELEASE.md</a></li>\n          <li><a href=\"https://infineon.github.io/emeeprom/html/index.html \">Em_EEPROM Middleware Library API reference guide</a></li>\n        </ul>\n    "
      },
      {
        "middleware_id": "emfile",
        "category": "Middleware",
        "used_by_projects": null,
        "remote_uri": "https://github.com/cypresssemiconductorco/emfile",
        "uri": "",
        "description": "SEGGER emFile - A FAT16/32 filesystem for embedded systems supporting SPI NOR flash and SD card."
      },
      {
        "middleware_id": "emusb-device",
        "category": "Middleware",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/emusb-device",
        "uri": "",
        "description": "\n    emUSB-Device has been designed to work on any embedded system with a USB client controller.\n    It can be used with USB 1.1 or USB 2.0 devices.<br>\n    <div class=\"category\">Additional Information:</div>\n        <ul>\n          <li><a href=\"https://www.segger.com/products/connectivity/emusb-device/\">emUSB-Device home page</a></li>\n          <li><a href=\"https://www.segger.com/doc/UM09001_emUSBD.html\">emUSB-Device User Guide & Reference Manual</a></li>\n        </ul>\n    "
      },
      {
        "middleware_id": "emusb-host",
        "category": "Middleware",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/emusb-host",
        "uri": "",
        "description": "\n    emUSB-Host is a CPU-independent USB Host stack. emUSB-Host is a high-performance\n    library that has been optimized for speed, versatility and small memory footprint.<br>\n    <div class=\"category\">Additional Information:</div>\n        <ul>\n          <li><a href=\"https://www.segger.com/products/connectivity/emusb-host/\">emUSB-Host home page</a></li>\n          <li><a href=\"https://www.segger.com/doc/UM10001_emUSBH.html\">emUSB-Host User Guide & Reference Manual</a></li>\n        </ul>\n    "
      },
      {
        "middleware_id": "enterprise-security",
        "category": "Middleware",
        "used_by_projects": null,
        "remote_uri": "https://github.com/cypresssemiconductorco/enterprise-security",
        "uri": "",
        "description": "\n        This library provides the capability for best in class Wi-Fi enabled PSOC&#8482; 6 devices to connect to enterprise Wi-Fi networks. This library implements a collection of the most commonly used Extensible Authentication Protocols (EAP) that are used in enterprise networks.\n        <br/>\n        <div class=\"category\">Additional Information:</div>\n        <ul>\n          <li><a href=\"https://github.com/Infineon/enterprise-security/blob/master/README.md\">Enterprise Security Library README.md</a></li>\n          <li><a href=\"https://github.com/Infineon/enterprise-security/blob/master/RELEASE.md\">Enterprise Security Library RELEASE.md</a></li>\n          <li><a href=\"https://infineon.github.io/enterprise-security/api_reference_manual/html/index.html\">Enterprise Security Library API reference guide</a></li>\n        </ul>\n    "
      },
      {
        "middleware_id": "http-client",
        "category": "Middleware",
        "used_by_projects": null,
        "remote_uri": "https://github.com/cypresssemiconductorco/http-client",
        "uri": "",
        "description": "\n        This library provides the HTTP Client implementation that can work on the PSOC&#8482; 6 MCU based platforms with network connectivity. This library supports RESTful methods such as GET, PUT, POST, and HEAD to communicate with the HTTP Server.\n        <br/>\n        <div class=\"category\">Additional Information:</div>\n        <ul>\n          <li><a href=\"https://github.com/Infineon/http-client/blob/master/README.md\">HTTP Client Library README.md</a></li>\n          <li><a href=\"https://github.com/Infineon/http-client/blob/master/RELEASE.md\">HTTP Client Library RELEASE.md</a></li>\n          <li><a href=\"https://infineon.github.io/http-client/api_reference_manual/html/index.html\">HTTP Client Library API reference guide</a></li>\n        </ul>\n    "
      },
      {
        "middleware_id": "http-server",
        "category": "Middleware",
        "used_by_projects": null,
        "remote_uri": "https://github.com/cypresssemiconductorco/http-server",
        "uri": "",
        "description": "\n        This library provides the HTTP Server implementation that can work on the PSOC&#8482; 6 MCU based platforms with network connectivity. It supports RESTful methods such as GET, PUT, and POST for the client to communicate with this HTTP Server library.\n        <br/>\n        <div class=\"category\">Additional Information:</div>\n        <ul>\n          <li><a href=\"https://github.com/Infineon/http-server/blob/master/README.md\">HTTP Server Library README.md</a></li>\n          <li><a href=\"https://github.com/Infineon/http-server/blob/master/RELEASE.md\">HTTP Server Library RELEASE.md</a></li>\n          <li><a href=\"https://infineon.github.io/http-server/api_reference_manual/html/index.html\">HTTP Server Library API reference guide</a></li>\n        </ul>\n    "
      },
      {
        "middleware_id": "ifx-mbedtls",
        "category": "Middleware",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/ifx-mbedtls",
        "uri": "",
        "description": "\n        ifx-mbedtls is a port of Arm&#174; mbedTLS library for Infineon devices.\n        mbedTLS is an open-source cryptographic library designed for embedded systems and IoT devices. It provides secure communication protocols, encryption algorithms, and certificate management, offering lightweight and efficient solutions for implementing secure communication and data protection in constrained environments.\n        This Infineon port contains support of crypto accelerations provided by Infineon hardware blocks\n    "
      },
      {
        "middleware_id": "ifx-mcuboot-pse84",
        "category": "Middleware",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/ifx-mcuboot-pse84",
        "uri": "",
        "description": "\n        ifx-mcuboot-pse84 is a port of MCUboot library for PSE84 Infineon devices.\n        MCUBoot is an open-source, secure bootloader for 32-bit microcontrollers. It is designed to provide a flexible and reliable mechanism for securely updating firmware images on embedded devices. MCUBoot supports features such as image authentication (using cryptographic signatures), rollback protection, and multiple image slots for safe firmware upgrades. It is widely used in IoT and embedded systems to ensure that only trusted firmware is executed on the device.\n    "
      },
      {
        "middleware_id": "ifx-tf-m-ns",
        "category": "Middleware",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/ifx-tf-m-ns",
        "uri": "",
        "description": "Trusted Firmware-M (TF-M) Non-secure Client Extension (NSCE) library."
      },
      {
        "middleware_id": "ifx-tf-m-pse84epc2",
        "category": "Middleware",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/ifx-tf-m-pse84epc2",
        "uri": "",
        "description": "Trusted Firmware-M (TF-M) implements the Secure Processing Environment (SPE) that aligns with the guidelines outlined by Platform Security Architecture (PSA) for secure devices. TF-M provides a set of secure services conforming to the PSA functional API. The secure sevices provided include PSA Crypto, PSA Secure Storage, and PSA Attestation."
      },
      {
        "middleware_id": "ifx-tf-m-pse84epc4",
        "category": "Middleware",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/ifx-tf-m-pse84epc4",
        "uri": "",
        "description": "Trusted Firmware-M (TF-M) implements the Secure Processing Environment (SPE) that aligns with the guidelines outlined by Platform Security Architecture (PSA) for secure devices. TF-M provides a set of secure services conforming to the PSA functional API. The secure sevices provided include PSA Crypto, PSA Secure Storage, and PSA Attestation."
      },
      {
        "middleware_id": "littlefs",
        "category": "Middleware",
        "used_by_projects": null,
        "remote_uri": "https://github.com/littlefs-project/littlefs",
        "uri": "",
        "description": "\n    A little fail-safe filesystem designed for microcontrollers.\n     Choose the mtb-littlefs under PSOC&#8482; 6 Middleware that will also download this library.\n     The mtb-littlefs implements the block device drivers necessary for using a littelfs on the Infineon MCUs.\n     A littlefs is hosted in a GitHub repository external to the Infineon organization on GitHub.\n    <br><br><b>License Disclaimer:</b><br>\n    Adding this library will download and add littlefs to your project. It is your responsibility to understand and accept the littlefs license.<br>\n    <div class=\"category\">Additional Information:</div>\n        <ul>\n          <li><a href=\"https://github.com/littlefs-project/littlefs\">littlefs home page</a></li>\n        </ul>\n    "
      },
      {
        "middleware_id": "lpa",
        "category": "Middleware",
        "used_by_projects": null,
        "remote_uri": "https://github.com/cypresssemiconductorco/lpa",
        "uri": "",
        "description": "\n        LPA is Low power assistant middleware library which provides easy way to configure and use low power features of Infineon devices PSOC&#8482; 6 MCU + Wi-Fi & Bluetooth&#174; combo chip. Please see current documentation for currently supported devices.\n        <br/>\n        <div class=\"category\">Additional Information:</div>\n        <ul>\n          <li><a href=\"https://github.com/Infineon/lpa/blob/master/README.md\">LPA README.md</a></li>\n          <li><a href=\"https://github.com/Infineon/lpa/blob/master/RELEASE.md\">LPA RELEASE.md</a></li>\n          <li><a href=\"https://infineon.github.io/lpa/api_reference_manual/html/index.html\">LPA API reference guide</a></li>\n        </ul>\n    "
      },
      {
        "middleware_id": "lwip-freertos-integration",
        "category": "Middleware",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/lwip-freertos-integration",
        "uri": "",
        "description": "\n        lwIP FreeRTOS integration library contains the FreeRTOS dependancies needed by the Lightweight open-source TCP/IP stack, version: 2.1.2 to execute.\n        <br/>\n        <div class=\"category\">Additional Information:</div>\n        <ul>\n          <li><a href=\"https://github.com/Infineon/lwip-freertos-integration/blob/master/README.md\">lwIP FreeRTOS integration library README.md</a></li>\n          <li><a href=\"https://github.com/Infineon/lwip-freertos-integration/blob/master/RELEASE.md\">lwIP FreeRTOS integration library RELEASE.md</a></li>\n        </ul>\n    "
      },
      {
        "middleware_id": "lwip-network-interface-integration",
        "category": "Middleware",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/lwip-network-interface-integration",
        "uri": "",
        "description": "\n        lwIP network interface integration library is an integration layer which links lwIP network stack with underlying Wi-Fi Host Driver(WHD) and Ethernet driver. This library interacts with FreeRTOS, lwIP TCP/IP stack, and mbed TLS for security, Wi-Fi host driver (WHD) and Ethernet Driver.\n        <br/>\n        <div class=\"category\">Additional Information:</div>\n        <ul>\n          <li><a href=\"https://github.com/Infineon/lwip-network-interface-integration/blob/master/README.md\">lwIP network interface integration library README.md</a></li>\n          <li><a href=\"https://github.com/Infineon/lwip-network-interface-integration/blob/master/RELEASE.md\">lwIP network interface integration library RELEASE.md</a></li>\n          <li><a href=\"https://infineon.github.io/lwip-network-interface-integration/api_reference_manual/html/index.html\">lwIP network interface integration library API reference guide</a></li>\n        </ul>\n    "
      },
      {
        "middleware_id": "ml-middleware",
        "category": "Middleware",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/ml-middleware",
        "uri": "",
        "description": "The ModusToolbox™ ML Middleware library provides helper\n      functions to simplify integration of ML models. The library also includes\n      functionality to support streaming validation data on the embedded target.\n    "
      },
      {
        "middleware_id": "ml-tflite-micro",
        "category": "Middleware",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/ml-tflite-micro",
        "uri": "",
        "description": "The ml-tflite-micro library is a pre-configured TensorFlow tflite-micro runtime library for the Infineon PSoC6™ platform."
      },
      {
        "middleware_id": "motor-ctrl-lib",
        "category": "Middleware",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/motor-ctrl-lib",
        "uri": "",
        "description": "\n    Motor control library provides the motor control driver interface in along with implementation of motor control algorithm to various control methods,\n    control types and different motors<br>\n    "
      },
      {
        "middleware_id": "mqtt",
        "category": "Middleware",
        "used_by_projects": null,
        "remote_uri": "https://github.com/cypresssemiconductorco/mqtt",
        "uri": "",
        "description": "\n        This MQTT client library works with the family of PSOC&#8482; 6 MCU based connectivity platforms. This library uses the AWS IoT Device SDK MQTT Client library and implements the glue layer that is required for the library to work with PSOC&#8482; 6 MCU based platforms with network connectivity.\n        <br/>\n        <div class=\"category\">Additional Information:</div>\n        <ul>\n          <li><a href=\"https://github.com/Infineon/mqtt/blob/master/README.md\">MQTT Client Library README.md</a></li>\n          <li><a href=\"https://github.com/Infineon/mqtt/blob/master/RELEASE.md\">MQTT Client Library RELEASE.md</a></li>\n          <li><a href=\"https://infineon.github.io/mqtt/api_reference_manual/html/index.html\">MQTT Client Library API reference guide</a></li>\n        </ul>\n    "
      },
      {
        "middleware_id": "mtb-ipc",
        "category": "Middleware",
        "used_by_projects": [
          "proj_cm33_s",
          "proj_cm33_ns",
          "proj_cm55"
        ],
        "remote_uri": "https://github.com/Infineon/mtb-ipc",
        "uri": "../mtb_shared/mtb-ipc/release-v1.1.0",
        "description": "\n    The IPC driver allows communication between multiple CPUs or between multiple tasks\n    operating in different domains within a single CPU. It supports binary semaphores\n    and message queues, similar to how they are used for task interactions in an RTOS envrionment.\n    "
      },
      {
        "middleware_id": "mtb-littlefs",
        "category": "Middleware",
        "used_by_projects": null,
        "remote_uri": "https://github.com/cypresssemiconductorco/mtb-littlefs",
        "uri": "",
        "description": "\n    The Block Device drivers for use with a littlefs filesystem.\n    <br><b>License Disclaimer:</b><br>\n    Adding this library will also download and add littlefs to your project. It is your responsibility to understand and accept the littlefs license.\n    "
      },
      {
        "middleware_id": "mtb-pmbus",
        "category": "Middleware",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/mtb-pmbus",
        "uri": "",
        "description": "\n    ModusToolbox&trade; The purpose of the PMBus middleware library is to\n    provide a solution for implementing SMBus/PMBus target devices in\n    embedded systems. PMBus (Power Management Bus) is an open standard\n    digital power management protocol that enables communication with power\n    conversion and management devices. <br>\n    "
      },
      {
        "middleware_id": "mtb-srf",
        "category": "Middleware",
        "used_by_projects": [
          "proj_cm33_s",
          "proj_cm33_ns",
          "proj_cm55"
        ],
        "remote_uri": "https://github.com/Infineon/mtb-srf",
        "uri": "../mtb_shared/mtb-srf/release-v1.1.0",
        "description": "\n    The Secure Request Framework (SRF) exists to provide a reusable infastructure for implementing\n    multiple secure operations via a single non-secure-callable entry point.  This framework is\n    designed to be generic with no dependency on or knowledge of any particular hardware operation.\n    "
      },
      {
        "middleware_id": "mtb-stl",
        "category": "Middleware",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/mtb-stl",
        "uri": "",
        "description": "\n    STL (Safety Test Library) provides functional safety APIs to implement overall safety of a system that depends on automatic protection suitable for using in industrial environments and home appliances.\n    STL created in compliance with IEC 60730 Class B and IEC 61508 SIL 2 standards and scalable to different MCUs.<br>\n    "
      },
      {
        "middleware_id": "netxduo-network-interface-integration",
        "category": "Middleware",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/netxduo-network-interface-integration",
        "uri": "",
        "description": "\n        NetXDuo network interface integration library is an integration layer that links Azure RTOS NetX Duo network stack with underlying Wi-Fi Host Driver(WHD). This library interacts with ThreadX, Azure RTOS NetX Duo TCP/IP stack, and Wi-Fi host driver (WHD).\n        <br/>\n        <div class=\"category\">Additional Information:</div>\n        <ul>\n          <li><a href=\"https://github.com/Infineon/netxduo-network-interface-integration/blob/master/README.md\">NetXDuo network interface integration library README.md</a></li>\n          <li><a href=\"https://github.com/Infineon/netxduo-network-interface-integration/blob/master/RELEASE.md\">NetXDuo network interface integration library RELEASE.md</a></li>\n          <li><a href=\"https://infineon.github.io/netxduo-network-interface-integration/api_reference_manual/html/index.html\">NetXDuo network interface integration library API reference guide</a></li>\n        </ul>\n    "
      },
      {
        "middleware_id": "nonrtos-lwip-mbedtls",
        "category": "Middleware",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/nonrtos-lwip-mbedtls",
        "uri": "",
        "description": "\n        Non-RTOS lwip mbedtls bundle library comprises core components needed for connectivity without RTOS. The library bundles lwIP TCP/IP stack, and mbed TLS for security, and configuration files.\n        <br/>\n        <div class=\"category\">Additional Information:</div>\n        <ul>\n          <li><a href=\"https://github.com/Infineon/nonrtos-lwip-mbedtls/blob/master/README.md\">Non-RTOS lwip mbedtls bundle library README.md</a></li>\n          <li><a href=\"https://github.com/Infineon/nonrtos-lwip-mbedtls/blob/master/RELEASE.md\">Non-RTOS lwip mbedtls bundle library RELEASE.md</a></li>\n        </ul>\n    "
      },
      {
        "middleware_id": "ota-bootloader-abstraction",
        "category": "Middleware",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/ota-bootloader-abstraction",
        "uri": "",
        "description": "\n        The OTA bootloader abstraction library provides Bootloader specific storage APIs to handle MCUBootloader based OTA upgrade images of the application code running on a PSOC&#8482; 6 MCU with AIROC&#8482; CYW4343W or CYW43012 Wi-Fi & Bluetooth&#174; combo chip. Please see current documentation for currently supported devices.\n        <br/>\n        <div class=\"category\">Additional Information:</div>\n        <ul>\n          <li><a href=\"https://github.com/Infineon/ota-bootloader-abstraction/blob/master/README.md\">OTA Bootloader Abstraction README.md</a></li>\n          <li><a href=\"https://infineon.github.io/ota-bootloader-abstraction/api_reference_manual/html/index.html\">OTA Bootloader Abstraction API reference guide</a></li>\n          <li><a href=\"https://github.com/JuulLabs-OSS/mcuboot/blob/cypress/docs/design.md\">MCUboot documentation</a></li>\n        </ul>\n    "
      },
      {
        "middleware_id": "ota-update",
        "category": "Middleware",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/ota-update",
        "uri": "",
        "description": "\n        The OTA library provides support for Over-The-Air update of the application code running on a PSOC&#8482; 6 MCU with AIROC&#8482; CYW4343W or CYW43012 Wi-Fi & Bluetooth&#174; combo chip, using Wi-Fi or Bluetooth&#174;. Please see current documentation for currently supported devices. OTA requires the use of mcuboot.\n        <br/>\n        <div class=\"category\">Additional Information:</div>\n        <ul>\n          <li><a href=\"https://github.com/Infineon/ota-update/blob/master/README.md\">OTA API README.md</a></li>\n          <li><a href=\"https://infineon.github.io/ota-update/api_reference_manual/html/index.html\">OTA API reference guide</a></li>\n          <li><a href=\"https://github.com/JuulLabs-OSS/mcuboot/blob/cypress/docs/design.md\">MCUboot documentation</a></li>\n        </ul>\n    "
      },
      {
        "middleware_id": "se-rt-services-utils",
        "category": "Middleware",
        "used_by_projects": [
          "proj_cm33_s",
          "proj_cm33_ns",
          "proj_cm55"
        ],
        "remote_uri": "https://github.com/Infineon/se-rt-services-utils",
        "uri": "../mtb_shared/se-rt-services-utils/release-v1.2.0",
        "description": "\n    Secure Enclave Runtime Services Utils library provides implementation of service calls to Secure Enclave Runtime Services and provides functionality like PSA Crypto (including side channel protected algorithms), Attestation, Protection and Anti-rollback Counters APIs.<br>\n    "
      },
      {
        "middleware_id": "secure-sockets",
        "category": "Middleware",
        "used_by_projects": null,
        "remote_uri": "https://github.com/cypresssemiconductorco/secure-sockets",
        "uri": "",
        "description": "\n        Secure Sockets library provides APIs to create software that can send and/or receive data over the network using sockets. This library supports both secure and non-secure sockets, and abstracts the complexity involved in directly using network stack and security stack APIs. This library supports both IPv4 and IPv6 addressing modes for UDP and TCP sockets.\n        <br/>\n        <div class=\"category\">Additional Information:</div>\n        <ul>\n          <li><a href=\"https://github.com/Infineon/secure-sockets/blob/master/README.md\">Secure Sockets Library README.md</a></li>\n          <li><a href=\"https://github.com/Infineon/secure-sockets/blob/master/RELEASE.md\">Secure Sockets Library RELEASE.md</a></li>\n          <li><a href=\"https://infineon.github.io/secure-sockets/api_reference_manual/html/index.html\">Secure Sockets Library API reference guide</a></li>\n        </ul>\n    "
      },
      {
        "middleware_id": "speech-onset-detection",
        "category": "Middleware",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/speech-onset-detection",
        "uri": "",
        "description": "\n    The purpose of a speech onset detector (SOD) is to detect the beginning of a spoken word or utterance. For the target application, the SOD is the first stage of a low power multi-stage wake-up phrase solution. The device is placed in a very low power stand-by mode, but may be woken by the utterance of wake-up phrase.\n    "
      },
      {
        "middleware_id": "staged-voice-control",
        "category": "Middleware",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/staged-voice-control",
        "uri": "",
        "description": "\n    Staged voice control middleware has in-built support for the wake word models (Ok Infineon, Hey Google, Alexa). User can choose one of the wake word model.Staged voice control middleware provides configuration to enable components in the audio pipeline based on the use case (e.g., it allows to enable SOD, LPWWD, HPWWD, ASR component in the system).\n    "
      },
      {
        "middleware_id": "syspm-callbacks-psc3",
        "category": "Middleware",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/syspm-callbacks-psc3",
        "uri": "",
        "description": "\n    Syspm callback Utility Library provides a set of callbacks that can be registered by the\n    application to handle deep-sleep entry/exit of select peripherals.\n    "
      },
      {
        "middleware_id": "syspm-callbacks-t2gc2d6m",
        "category": "Middleware",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/syspm-callbacks-t2gc2d6m",
        "uri": "",
        "description": "\n    Syspm callback Utility Library provides a set of callbacks that can be registered by the\n    application to handle deep-sleep entry/exit of select peripherals.\n    "
      },
      {
        "middleware_id": "syspm-callbacks-xmc72",
        "category": "Middleware",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/syspm-callbacks-xmc72",
        "uri": "",
        "description": "\n    Syspm callback Utility Library provides a set of callbacks that can be registered by the\n    application to handle deep-sleep entry/exit of select peripherals.\n    "
      },
      {
        "middleware_id": "usbdev",
        "category": "Middleware",
        "used_by_projects": null,
        "remote_uri": "https://github.com/cypresssemiconductorco/usbdev",
        "uri": "",
        "description": "USB Device library for a full-speed USB 2.0 compliant device framework."
      },
      {
        "middleware_id": "usbfxstack",
        "category": "Middleware",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/usbfxstack",
        "uri": "",
        "description": "\n    The USBFXStack Middleware Library provides a powerful and versatile solution\n    designed to support the EZ-USB&#8482; FX device family with a variety of integrated modules.\n    This library includes essential drivers, utilities, and an operating system to help\n    developers efficiently manage and optimize their applications.<br>\n    "
      },
      {
        "middleware_id": "virtual-connectivity-manager",
        "category": "Middleware",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/virtual-connectivity-manager",
        "uri": "",
        "description": "\n        Virtual-Connectivity-Manager (VCM) is a library that enables connectivity libraries to add multi-core support through virtualization. Virtualization allows access of connectivity stack running on one core from another core using Inter Process Communication (IPC).\n        <br/>\n        <div class=\"category\">Additional Information:</div>\n        <ul>\n          <li><a href=\"https://github.com/Infineon/virtual-connectivity-manager/blob/master/README.md\">Virtual Connectivity Manager library README.md</a></li>\n        </ul>\n    "
      },
      {
        "middleware_id": "voice-assistant",
        "category": "Middleware",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/voice-assistant",
        "uri": "",
        "description": "\n    The DEEPCRAFT&#8482; voice assistant is a Edge AI software product used to create and deploy voice assistants (Wake Word Detection + Natural Language Understanding) into an embedded environment. it works in combination with the DEEPCRAFT&#8482; Voice Assistant cloud tool, which is used to define the wake word and commands to be detected.\n    "
      },
      {
        "middleware_id": "wifi-connection-manager",
        "category": "Middleware",
        "used_by_projects": null,
        "remote_uri": "https://github.com/cypresssemiconductorco/wifi-connection-manager",
        "uri": "",
        "description": "\n        Wi-Fi Connection Manager (WCM) library helps application developers to manage Wi-Fi Connectivity. The library provides a set of APIs that can be used to establish and monitor Wi-Fi connections on PSOC&#8482; 6 MCU based platforms with connectivity. The library APIs are thread-safe. The library monitors the Wi-Fi connection and can notifies connection state changes through an event notification mechanism. The library also provides APIs to connect to a Wi-Fi network using Wi-Fi Protected Setup (WPS) methods.\n        <br/>\n        <div class=\"category\">Additional Information:</div>\n        <ul>\n          <li><a href=\"https://github.com/Infineon/wifi-connection-manager/blob/master/README.md\">Wi-Fi Connection Manager Library README.md</a></li>\n          <li><a href=\"https://github.com/Infineon/wifi-connection-manager/blob/master/RELEASE.md\">Wi-Fi Connection Manager Library RELEASE.md</a></li>\n          <li><a href=\"https://infineon.github.io/wifi-connection-manager/api_reference_manual/html/index.html\">Wi-Fi Connection Manager Library API reference guide</a></li>\n        </ul>\n    "
      }
    ],
    "Peripheral": [
      {
        "middleware_id": "SHIELD_XENSIV_A",
        "category": "Peripheral",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/SHIELD_XENSIV_A",
        "uri": "",
        "description": "\n    This library provides functions for interfacing the components present on the SHIELD_XENSIV_A.\n    "
      },
      {
        "middleware_id": "audio-codec-ak4954a",
        "category": "Peripheral",
        "used_by_projects": null,
        "remote_uri": "https://github.com/cypresssemiconductorco/audio-codec-ak4954a",
        "uri": "",
        "description": "This library provides functions to support use of the AK4954A audio codec found on the CY8CKIT-028-TFT shield."
      },
      {
        "middleware_id": "audio-codec-wm8960",
        "category": "Peripheral",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/audio-codec-wm8960",
        "uri": "",
        "description": "This library provides functions to support use of the WM8960 audio codec available on the CY8CKIT-028-SENSE shield."
      },
      {
        "middleware_id": "bmi160",
        "category": "Peripheral",
        "used_by_projects": null,
        "remote_uri": "https://github.com/BoschSensortec/BMI160_driver",
        "uri": "",
        "description": "Bosch BMI-160 Sensor Driver."
      },
      {
        "middleware_id": "bmi270",
        "category": "Peripheral",
        "used_by_projects": null,
        "remote_uri": "https://github.com/BoschSensortec/BMI270_SensorAPI",
        "uri": "",
        "description": "Bosch BMI-270 Sensor Driver."
      },
      {
        "middleware_id": "bmm150",
        "category": "Peripheral",
        "used_by_projects": null,
        "remote_uri": "https://github.com/BoschSensortec/BMM150-Sensor-API",
        "uri": "",
        "description": "Bosch BMM-150 Sensor Driver."
      },
      {
        "middleware_id": "bmm350",
        "category": "Peripheral",
        "used_by_projects": null,
        "remote_uri": "https://github.com/BoschSensortec/BMM350_SensorAPI",
        "uri": "",
        "description": "Bosch BMM-350 Sensor Driver."
      },
      {
        "middleware_id": "btsdk-drivers",
        "category": "Peripheral",
        "used_by_projects": null,
        "remote_uri": "https://github.com/cypresssemiconductorco/btsdk-drivers",
        "uri": "",
        "description": "\n<html>\n<body>\n<p>This repo contains a collection of AIROC&#8482; Driver support libraries.  It is downloaded automatically as a dependency of BTSDK applications that require one or more of the libraries.</p>\n<p>Each library is found under a COMPONENT_(folder_name) folder in the btsdk-drivers repo, see the library list below for the folder names for each library.  To use the libraries in an application, add the folder name to the COMPONENTS variable in the application makefile.  For example, to use the Ambient Light Sensor library, add the following to the application makefile:<br><code>COMPONENTS+=ambient_light_sensor_lib</code></p>\n  <h5>Libraries included:</h5>\n  <ul>\n    <li>Library to convert HSL Color to RGB Color values (hsl_rgb_lib)</li>\n    <li>Library providing API implementation for NCP15XV103E03RC thermistor (thermistor_ncp15xv103_lib)</li>\n    <li>Library providing API implementation for NCU15WF104F60RC thermistor (thermistor_ncu15wf104_lib)</li>\n    <li>ALS (Ambient Light Sensor) library for MAX44009 ALS (ambient_light_sensor_lib)</li>\n    <li>PIR (Passive Infrared Motion Sensor) library for e93196 motion sensor (pir_motion_sensor_lib)</li>\n    <li>Button Management Support (button_manager)</li>\n    <li>LED Management Support (led_manager)</li>\n    <li>NVRAM Emulation in RAM Support (nvram_emulation)</li>\n  </ul>\nTo browse the repo, see:<br>\n<a href=\"https://github.com/Infineon/btsdk-rfcomm\">https://github.com/Infineon/btsdk-rfcomm</a><br>\nTo see an application using these libraries:<br>\nHSL to RGB:<br>\n<a href=\"https://github.com/Infineon/mtb-example-btsdk-mesh-demo-color-light\">https://github.com/Infineon/mtb-example-btsdk-mesh-demo-color-light</a><br>\nThermistors:<br>\n<a href=\"https://github.com/Infineon/mtb-example-btsdk-mesh-demo-sensor-temperature\">https://github.com/Infineon/mtb-example-btsdk-mesh-demo-sensor-temperature</a><br>\nALS:<br>\n<a href=\"https://github.com/Infineon/mtb-example-btsdk-hal-i2c-master\">https://github.com/Infineon/mtb-example-btsdk-hal-i2c-master</a><br>\nPIR:<br>\n<a href=\"https://github.com/Infineon/mtb-example-btsdk-mesh-demo-sensor-motion\">https://github.com/Infineon/mtb-example-btsdk-mesh-demo-sensor-motion</a><br>\nButton and LED Management:<br>\n<a href=\"https://github.com/Infineon/mtb-example-btsdk-audio-headset-speaker\">https://github.com/Infineon/mtb-example-btsdk-audio-headset-speaker</a><br>\nNVRAM Emulation:<br>\n<a href=\"https://github.com/Infineon/mtb-example-btsdk-ble-hello-sensor\">https://github.com/Infineon/mtb-example-btsdk-ble-hello-sensor</a><br>\nFor API documentation, see:<br>\n<a href=\"https://infineon.github.io/btsdk-docs/BT-SDK/index.html\">https://infineon.github.io/btsdk-docs/BT-SDK/index.html</a>\n</body>\n</html>\n    "
      },
      {
        "middleware_id": "camera-dvp-ov7675",
        "category": "Peripheral",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/camera-dvp-ov7675",
        "uri": "",
        "description": "\n    This library provides functions for interfacing with the OV7675 DVP Camera module with on PSOC&#8482; Edge E84 device.\n    "
      },
      {
        "middleware_id": "display-eink-e2271cs021",
        "category": "Peripheral",
        "used_by_projects": null,
        "remote_uri": "https://github.com/cypresssemiconductorco/display-eink-e2271cs021",
        "uri": "",
        "description": "This library provides functions for supporting the 2.7\" EPD Display (E2271CS021). This is the same display as used on the CY8CKIT-028-EPD shield."
      },
      {
        "middleware_id": "display-oled-ssd1306",
        "category": "Peripheral",
        "used_by_projects": null,
        "remote_uri": "https://github.com/cypresssemiconductorco/display-oled-ssd1306",
        "uri": "",
        "description": "This library provides functions to support the 128x64 pixel dot matrix OLED display driven by SSD1306 controller. This is the same display as used on the CY8CKIT-032 shield."
      },
      {
        "middleware_id": "display-tft-st7735s",
        "category": "Peripheral",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/display-tft-st7735s",
        "uri": "",
        "description": "\n    This library provides functions for supporting a 0.96 inch TFT LCD driven by an ST7735S controller. This is the same display as used on the SHIELD_XENSIV_A shield.\n    "
      },
      {
        "middleware_id": "display-tft-st7789v",
        "category": "Peripheral",
        "used_by_projects": null,
        "remote_uri": "https://github.com/cypresssemiconductorco/display-tft-st7789v",
        "uri": "",
        "description": "This library provides functions for supporting a 2.4 inch TFT LCD driven by an ST7789V controller. This is the same display as used on the CY8CKIT-028-TFT shield."
      },
      {
        "middleware_id": "multi-half-bridge",
        "category": "Peripheral",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/multi-half-bridge",
        "uri": "",
        "description": "\n          This C++ library provides APIs for interacting with Infineon's <a href=\"https://www.infineon.com/cms/en/product/power/motor-control-ics/brushed-dc-motor-driver-ics/multi-half-bridge-ics/\">Multi Half-Bridge ICs</a>. This family of devices is designed for DC motor control applications.<br>\n          Find more information in the library <a href=\"https://github.com/Infineon/multi-half-bridge\">repository</a>.\n        "
      },
      {
        "middleware_id": "optiga-nbt-lib-c-mtb",
        "category": "Peripheral",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/optiga-nbt-lib-c-mtb",
        "uri": "",
        "description": "\n    This is the OPTIGA&#8482; Authenticate NBT Host Library for ModusToolbox&#8482; which\n\tsupports the utilization of the OPTIGA&#8482; Authenticate NBT in embedded ModusToolbox&#8482; applications.\n    "
      },
      {
        "middleware_id": "optiga-trust-m",
        "category": "Peripheral",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/optiga-trust-m",
        "uri": "",
        "description": "Software Framework for the OPTIGA™ Trust M security solution"
      },
      {
        "middleware_id": "retarget-io",
        "category": "Peripheral",
        "used_by_projects": [
          "proj_cm33_ns"
        ],
        "remote_uri": "https://github.com/cypresssemiconductorco/retarget-io",
        "uri": "../mtb_shared/retarget-io/release-v1.8.1",
        "description": "The Retarget IO library provides APIs for transmitting messages to or from the board via standard printf/scanf functions using a UART connection which is generally connected to a host machine."
      },
      {
        "middleware_id": "rgb-led",
        "category": "Peripheral",
        "used_by_projects": null,
        "remote_uri": "https://github.com/cypresssemiconductorco/rgb-led",
        "uri": "",
        "description": "The RGB LED library provides APIs for controlling the color and intensity the RGB LED on our kits."
      },
      {
        "middleware_id": "rtlabs-soem-lib",
        "category": "Peripheral",
        "used_by_projects": null,
        "remote_uri": "https://github.com/rtlabs-com/mtb-mw-soem",
        "uri": "",
        "description": "RT-Labs SOEM EtherCAT Master Library"
      },
      {
        "middleware_id": "rtlabs-uphy-lib",
        "category": "Peripheral",
        "used_by_projects": null,
        "remote_uri": "https://github.com/rtlabs-com/mtb-mw-uphy",
        "uri": "",
        "description": "RT-Labs UPHY libraries"
      },
      {
        "middleware_id": "sensor-humidity-sht3x",
        "category": "Peripheral",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/sensor-humidity-sht3x",
        "uri": "",
        "description": "\n    This library provides functions for interfacing with the SHT35 I2C Humidity and Temperature sensor as used on the SHIELD_XENSIV_A.\n    "
      },
      {
        "middleware_id": "sensor-humidity-sht4x",
        "category": "Peripheral",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/sensor-humidity-sht4x",
        "uri": "",
        "description": "\n    This library provides functions for interfacing with the I2C-based SHT40 Humidity and Temperature sensor from Sensirion on PSOC&trade; Edge device.\n    "
      },
      {
        "middleware_id": "sensor-light",
        "category": "Peripheral",
        "used_by_projects": null,
        "remote_uri": "https://github.com/cypresssemiconductorco/sensor-light",
        "uri": "",
        "description": "This library provides functions to support use of a phototransistor ambient light sensor such as the TEMT6000 as used on the CY8CKIT-028-TFT shield."
      },
      {
        "middleware_id": "sensor-motion-bmi160",
        "category": "Peripheral",
        "used_by_projects": null,
        "remote_uri": "https://github.com/cypresssemiconductorco/sensor-motion-bmi160",
        "uri": "",
        "description": "This library provides functions for interfacing with the BMI-160 I2C/SPI 16-bit Inertial Measurement Unit with three axis accelerometer and three axis gyroscope as used on the CY8CKIT-028-TFT and CY8CKIT-028-TFT shields."
      },
      {
        "middleware_id": "sensor-motion-bmi270",
        "category": "Peripheral",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/sensor-motion-bmi270",
        "uri": "",
        "description": "\n    This library provides functions for interfacing with the BMI270 I2C 16-bit Inertial Measurement Unit with three axis accelerometer and three axis gyroscope as used on the CY8CKIT-062S2-AI and SHIELD_XENSIV_A.\n    "
      },
      {
        "middleware_id": "sensor-orientation-bmm350",
        "category": "Peripheral",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/sensor-orientation-bmm350",
        "uri": "",
        "description": "\n    This library provides functions for interfacing with the BMM350 three axis magnetometer.\n    "
      },
      {
        "middleware_id": "sensor-orientation-bmx160",
        "category": "Peripheral",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/sensor-orientation-bmx160",
        "uri": "",
        "description": "This library provides functions for interfacing with the BMX-160 I2C/SPI 16-bit Absolute Orientation Sensor with three axis accelerometer, three axis gyroscope, and three axis magnetometer as used on the CY8CKIT-028-SENSE shield."
      },
      {
        "middleware_id": "sensor-xensiv-bgt60trxx",
        "category": "Peripheral",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/sensor-xensiv-bgt60trxx",
        "uri": "",
        "description": "This library provides functions for interfacing with the XENSIV™ BGT60TRxx 60GHz FMCW radar sensors."
      },
      {
        "middleware_id": "sensor-xensiv-dps3xx",
        "category": "Peripheral",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/sensor-xensiv-dps3xx",
        "uri": "",
        "description": "This library provides functions for interfacing with the XENSIV DPS-310/368 Barometric Pressure Sensors. These are miniaturized digital barometric air pressure sensors with ultra-high precision (±2 cm) and a low current consumption, capable of measuring both pressure and temperature. The pressure sensor element is based on a capacitive sensing principle which guarantees high precision during temperature changes. This library can be setup to use the ModusToolbox™ HAL interface, or using user provided communication functions."
      },
      {
        "middleware_id": "sensor-xensiv-pasco2",
        "category": "Peripheral",
        "used_by_projects": null,
        "remote_uri": "https://github.com/cypresssemiconductorco/sensor-xensiv-pasco2",
        "uri": "",
        "description": "This library provides functions for interfacing with the XENSIV™ PAS CO2 Sensors. By leveraging photoacoustic spectroscopy (PAS), XENSIV™ PAS CO2 overcomes the size, performance and assembly challenges of existing CO2 sensor solutions. This library can be setup to use the ModusToolbox™ HAL interface, or using user provided communication functions."
      },
      {
        "middleware_id": "serial-flash",
        "category": "Peripheral",
        "used_by_projects": null,
        "remote_uri": "https://github.com/cypresssemiconductorco/serial-flash",
        "uri": "",
        "description": "The Serial Flash library provides APIs for interacting with an external flash connected to the SPI or QSPI interface."
      },
      {
        "middleware_id": "serial-memory",
        "category": "Peripheral",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/serial-memory",
        "uri": "",
        "description": "The Serial Memory library provides APIs for interacting with an external flash connected to the SPI or QSPI interface."
      },
      {
        "middleware_id": "sht3x",
        "category": "Peripheral",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Sensirion/embedded-i2c-sht3x",
        "uri": "",
        "description": "Sensirion SHT3X Library"
      },
      {
        "middleware_id": "sht4x",
        "category": "Peripheral",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Sensirion/embedded-i2c-sht4x",
        "uri": "",
        "description": "Sensirion SHT4X Library"
      },
      {
        "middleware_id": "thermistor",
        "category": "Peripheral",
        "used_by_projects": null,
        "remote_uri": "https://github.com/cypresssemiconductorco/thermistor",
        "uri": "",
        "description": "This library provides functions for reading an NTC GPIO based thermistor temperature sensor as used on some shields."
      }
    ],
    "Utilities": [
      {
        "middleware_id": "abstraction-rtos",
        "category": "Utilities",
        "used_by_projects": [
          "proj_cm33_ns"
        ],
        "remote_uri": "https://github.com/cypresssemiconductorco/abstraction-rtos",
        "uri": "../mtb_shared/abstraction-rtos/release-v1.12.0",
        "description": "\n    The RTOS Abstraction Library provides a generic API that allows ModusToolbox&#8482; middleware to be written in an RTOS agnostic manner. It also contains implementations of the Abstraction Layer for FreeRTOS, CMSIS RTOS, and ThreadX.\n    <br><br><b>Note:</b>\n    This library has specific requirements on the underlying RTOS configuration. See the Readme.md file for details.\n    "
      },
      {
        "middleware_id": "btsdk-host-apps-bt-ble",
        "category": "Utilities",
        "used_by_projects": null,
        "remote_uri": "https://github.com/cypresssemiconductorco/btsdk-host-apps-bt-ble",
        "uri": "",
        "description": "\n<html>\n<body>\n  <p>This repo contains the ClientControl app for Bluetooth&#174; LE and BR/EDR embedded apps, and demonstrates use of the AIROC&#8482; HCI protocol to control embedded apps. Binaries and source code are included.</p>\n  <h5>The following BTSDK apps use ClientControl:</h5>\n  <ul>\n    <li>Audio: watch, audio_gateway</li>\n    <li>HID: ble_mouse, ble_keyboard, ble_remote</li>\n    <li>LE: anc, ans, hrc, hrs, bac, bas, le_coc</li>\n    <li>RFCOMM: pbap_client, map_client, opp_server</li>\n  </ul>\nAny embedded app that configures traces over AIROC&#8482;  HCI would also need to use the ClientControl app to view traces in the BTSpy utility.<br><br>\nSupported OS: Windows, Linux, and Android.<br><br>\nTo browse the repo, see:<br>\n<a href=\"https://github.com/Infineon/btsdk-host-apps-bt-ble\">https://github.com/Infineon/btsdk-host-apps-bt-ble</a>\n</body>\n</html>\n    "
      },
      {
        "middleware_id": "cJSON",
        "category": "Utilities",
        "used_by_projects": null,
        "remote_uri": "https://github.com/DaveGamble/cJSON",
        "uri": "",
        "description": "<a href=\"https://github.com/DaveGamble/cJSON\">cJSON</a> is an\nultra-lightweight JSON parser in ANSI C"
      },
      {
        "middleware_id": "clib-support",
        "category": "Utilities",
        "used_by_projects": [
          "proj_cm33_ns"
        ],
        "remote_uri": "https://github.com/cypresssemiconductorco/clib-support",
        "uri": "../mtb_shared/clib-support/release-v1.8.0",
        "description": "\n    The CLib Support Library provides the necessary hooks to make C library functions such as malloc and free thread safe. This implementation is specific to FreeRTOS.\n    <br><br><b>Note:</b>\n    FREERTOS flags configUSE_MUTEXES, configUSE_RECURSIVE_MUTEXES, and configSUPPORT_STATIC_ALLOCATION must be enabled\n    "
      },
      {
        "middleware_id": "connectivity-utilities",
        "category": "Utilities",
        "used_by_projects": null,
        "remote_uri": "https://github.com/cypresssemiconductorco/connectivity-utilities",
        "uri": "",
        "description": "\n         The connectivity utilities library is a collection of general purpose middleware utilities. Several connectivity middleware libraries shall depend on this utilities library. Currently, the following utilities are included: JSON parser, linked list, string utilities, network helpers and logging functions, and connectivity middleware error codes.\n        <br/>\n        <div class=\"category\">Additional Information :</div>\n        <ul>\n          <li><a href=\"https://github.com/Infineon/connectivity-utilities/blob/master/README.md\">Connectivity Utilities Library README.md</a></li>\n          <li><a href=\"https://github.com/Infineon/connectivity-utilities/blob/master/RELEASE.md\">Connectivity Utilities Library RELEASE.md</a></li>\n          <li><a href=\"https://infineon.github.io/connectivity-utilities/api_reference_manual/html/index.html\">Connectivity Utilities Library API reference guide</a></li>\n        </ul>\n    "
      },
      {
        "middleware_id": "kv-store",
        "category": "Utilities",
        "used_by_projects": null,
        "remote_uri": "https://github.com/cypresssemiconductorco/kv-store",
        "uri": "",
        "description": "This library provides a convenient way to store information as key-value pairs in non-volatile storage."
      }
    ],
    "Wi-Fi": [
      {
        "middleware_id": "whd-bsp-integration",
        "category": "Wi-Fi",
        "used_by_projects": null,
        "remote_uri": "https://github.com/cypresssemiconductorco/whd-bsp-integration",
        "uri": "",
        "description": "The WHD + BSP Integration library provides some convenience functions for connecting the WiFi Host Driver (WHD) library to a Board Support Package (BSP) that includes a WLAN chip."
      },
      {
        "middleware_id": "wifi-core-freertos-lwip-mbedtls",
        "category": "Wi-Fi",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/wifi-core-freertos-lwip-mbedtls",
        "uri": "",
        "description": "\n        Wi-Fi core freertos lwip mbedtls bundle library comprises core components needed for Wi-Fi connectivity support. The library bundles FreeRTOS, lwIP TCP/IP stack, and mbed TLS for security, Wi-Fi Host Driver (WHD), Wi-Fi connection manager, Secure Sockets interface, and configuration files.\n        <br/>\n        <div class=\"category\">Additional Information:</div>\n        <ul>\n          <li><a href=\"https://github.com/Infineon/wifi-core-freertos-lwip-mbedtls/blob/master/README.md\">Wi-Fi core freertos lwip mbedtls bundle library README.md</a></li>\n          <li><a href=\"https://github.com/Infineon/wifi-core-freertos-lwip-mbedtls/blob/master/RELEASE.md\">Wi-Fi core freertos lwip mbedtls bundle library RELEASE.md</a></li>\n        </ul>\n    "
      },
      {
        "middleware_id": "wifi-host-driver",
        "category": "Wi-Fi",
        "used_by_projects": null,
        "remote_uri": "https://github.com/cypresssemiconductorco/wifi-host-driver",
        "uri": "",
        "description": "\n       Wi-Fi Host Driver (WHD) is an independent, embedded Wi-Fi Host Driver that provides a set of APIs to interact with Infineon WLAN chips. It is the low level driver required for any library or application that uses WiFi connectivity.\n       <br/>\n       <div class=\"category\">Additional Information:</div>\n       <ul>\n         <li><a href=\"https://github.com/Infineon/wifi-host-driver/blob/master/README.md\">WiFi Host Driver README.md</a></li>\n         <li><a href=\"https://github.com/Infineon/wifi-host-driver/blob/master/RELEASE.md\">WiFi Host Driver RELEASE.md</a></li>\n         <li><a href=\"https://infineon.github.io/wifi-host-driver/html/index.html\">Wi-Fi Host Driver API Reference Manual and Porting Guide</a></li>\n       </ul>\n    "
      },
      {
        "middleware_id": "wifi-mw-core",
        "category": "Wi-Fi",
        "used_by_projects": null,
        "remote_uri": "https://github.com/cypresssemiconductorco/wifi-mw-core",
        "uri": "",
        "description": "\n        Wi-Fi Middleware Core library comprises core components needed for Wi-Fi connectivity support. The library bundles FreeRTOS, lwIP TCP/IP stack, and mbed TLS for security, Wi-Fi Host Driver (WHD), Secure Sockets interface, configuration files, and associated code to bind these components together.\n        <br/>\n        <div class=\"category\">Additional Information:</div>\n        <ul>\n          <li><a href=\"https://github.com/Infineon/wifi-mw-core/blob/master/README.md\">Wi-Fi Middleware Core Library README.md</a></li>\n          <li><a href=\"https://github.com/Infineon/wifi-mw-core/blob/master/RELEASE.md\">Wi-Fi Middleware Core Library RELEASE.md</a></li>\n          <li><a href=\"https://infineon.github.io/wifi-mw-core/api_reference_manual/html/index.html\">Wi-Fi Middleware Core Library API reference guide</a></li>\n        </ul>\n    "
      },
      {
        "middleware_id": "wifi-ncp_hm",
        "category": "Wi-Fi",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/wifi-ncp_hm",
        "uri": "",
        "description": "\n        wifi-resources is usage for resource from WHD which contains clm files and nvram for supported radio board.\n        <br/>\n        <div class=\"category\">Additional Information:</div>\n        <ul>\n          <li><a href=\"https://savannah.nongnu.org/projects/lwip\">lwIP Library Information</a></li>\n          <li><a href=\"https://git.savannah.nongnu.org/cgit/lwip.git\">lwIP Repo Information</a></li>\n        </ul>\n    "
      },
      {
        "middleware_id": "wifi-resources",
        "category": "Wi-Fi",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/wifi-resources",
        "uri": "",
        "description": "\n        wifi-resources is usage for resource from WHD which contains clm files and nvram for supported radio board.\n        <br/>\n        <div class=\"category\">Additional Information:</div>\n        <ul>\n          <li><a href=\"https://github.com/Infineon/wifi-resources/blob/main/RELEASE.md\">WiFi resources README.md</a></li>\n        </ul>\n    "
      },
      {
        "middleware_id": "wpa3-external-supplicant",
        "category": "Wi-Fi",
        "used_by_projects": null,
        "remote_uri": "https://github.com/Infineon/wpa3-external-supplicant",
        "uri": "",
        "description": "\n        The WPA3 External Supplicant supports WPA3 SAE authentication using HnP (Hunting and Pecking Method) using RFC https://datatracker.ietf.org/doc/html/rfc7664 and H2E ( Hash to Element Method)  using RFC https://datatracker.ietf.org/doc/html/draft-irtf-cfrg-hash-to-curve-10 and following 802.11 spec 2016.\n        <br/>\n        <div class=\"category\">Additional Information:</div>\n        <ul>\n          <li><a href=\"https://github.com/Infineon/wpa3-external-supplicant/blob/master/README.md\">WPA3 External Supplicant Library README.md</a></li>\n          <li><a href=\"https://github.com/Infineon/wpa3-external-supplicant/blob/master/RELEASE.md\">WPA3 External Supplicant RELEASE.md</a></li>\n        </ul>\n    "
      }
    ]
  }
}
```
