# ModusToolbox Workspace Reference
**For AI Agents:** This is the PRIMARY technical reference. Read sections 1-6 for essential patterns.

**Quick Navigation:**
- Library catalog → [library-catalog.yaml](./library-catalog.yaml)
- Build configuration → [build-configuration.yaml](./build-configuration.yaml)
- BSP/Hardware details → [APP_KIT_PSE84_EVAL_EPC2](/Users/hdm/work/a/myE84Proj/bsps/TARGET_APP_KIT_PSE84_EVAL_EPC2/README.md)

## Workspace Architecture (HIGH PRIORITY)

Workspace Dir: "/Users/hdm/work/a/myE84Proj"

This is a ModusToolbox C/C++ Workspace for Infineon Edge MCU Device PSE846GPS2DBZC4A. This MCU is a **dual-core** device featuring a Cortex-M33 and a Cortex-M55 core, designed for low-power applications. This document doesn't describe what the application does, it describes organization and tooling required to manage the development process.

Projects in this workspace: `proj_cm33_s, proj_cm33_ns, proj_cm55`

## MCU Core Architecture and Usage

- **CM33** (Cortex-M33): System CPU, boots first, manages secure/non-secure contexts
- **CM55** (Cortex-M55): Application CPU, handles high-performance tasks (ML, DSP)
- **Critical**: Hardware peripherals are NOT automatically shared between cores - see documentation for IPC synchronization

The CM33 core typically has one or more executable projects (bootloader, secure, non-secure). In a typical use case, the CM33 starts first in secure mode, initializes the system, and then boots the non-secure application on the same core. Once the CM33 core is up and running, it can then initialize and start the CM55 core. The CM55 core is generally used for high-performance tasks such as machine learning inference and digital signal processing. The CM55 is sometimes referred to as the APP CPU as it is expected to run the main application that does the heavy lifting. The CM33 is sometimes referred to as the SYS CPU as it manages the overall system, acts as a sensor hub, schedules sleep and wakeup conditions, etc. The CM33 wakes up the CM55 as needed when higher performance activity is required.

**Care must be taken when sharing HW blocks between cores by using the IPC library or other mechanism, similar to multi-threaded issues in SW**

**Key Point for AI:**: Hardware peripherals (UART, SPI, I2C, etc.) are NOT automatically thread-safe across cores. Consider: (1) dedicating peripherals to specific cores, (2) using IPC for coordinated access, or (3) implementing mutex/semaphore protection via IPC. See `mtb-ipc` library documentation for inter-core synchronization primitives.

## FW Project Structure
In this workspace, the CM33 core project(s) are (`proj_cm33_s, proj_cm33_ns`) and the CM55 core project(s) is (`proj_cm55`). The secure project is typically named with a `_s` suffix and the non-secure project with a `_ns` suffix. Each project can be built, flashed, and debugged independently or together using VSCode or Eclipse or CLI tools. However, an image containing all the projects is created to be flashed into devices. All projects can use the shared middleware and libraries located in the `../mtb_shared` folders. The `../mtb_shared` folder contains source files and documentation that can be used for a variety of Infineon MCUs and boards, not just the one used in this workspace. Therefore, not all files in the 'mtb_shared' folder may be relevant to the specific MCU or board in this workspace. Please refer to the documentation and comments within the source files for guidance on which files are applicable.

When parsing source code, it must be done in the context of a specific project (one of proj_cm33_s, proj_cm33_ns, proj_cm55). For the actual sources and libraries used for a given project, use the MCP Tool "generate_workspace_overview" to get a detailed list of source files, include paths, #defines, and libraries used in the build process. A workspace overview and other documents that are auto generated can be found in `.modustoolbox/docs` directory; they are auto-refreshed when critical files change

The /Users/hdm/work/a/myE84Proj/bsps/TARGET_APP_KIT_PSE84_EVAL_EPC2 directory contains many *.md files that are of interest. It also has source code but for accuracy, they should be viewed with a project context, especially the #defines.

---

## Essential Development Patterns (HIGH PRIORITY)

### Pattern: Adding a Library to a Project

The Library Manager GUI is recommended (`make modlibs`), but here's the underlying process:

```text
library_addition_workflow:
  scenario: "Adding retarget-io to proj_cm55"
  step1: "Create .mtb file in proj_cm55/deps/"
    - filename: "retarget-io.mtb" 
    - content: "https://github.com/cypresssemiconductorco/retarget-io#release-v1.8.1#$$ASSET_REPO$$/retarget-io/release-v1.8.1"
  step2: "Run 'make getlibs' from project or workspace root"
    - downloads to: "../mtb_shared/retarget-io/release-v1.8.1"
  step3: "Add to project Makefile"
    - line: "COMPONENTS+=MW_RETARGET_IO"
  step4: run "make build" at workspace root

Note: Any dependencies will ba auto-generated by `make getlibs` and placed in the proj_cm55/libs folder
```

### Pattern: Hardware Configuration

```text
hardware_configuration:
  tool: "Device Configurator (GUI)", run "make help" for running other configurators
  config_files: 
    - "design.modus" (main device config)
    - "design.cyqspi" (QSPI flash config)
    - "design.cycapsense" (touch sensing config)
  generated_code_location: "bsps/TARGET_*/config/GeneratedSource/"
  critical_rule: "NEVER edit GeneratedSource/ files directly - they are regenerated"
  how_to_open: "Run 'make config' from workspace or project directory"
  when_to_use: "Pin configuration, clock setup, peripheral initialization"
```

### Pattern: Multi-Core Memory Regions

```text
memory_architecture:
  linker_scripts: "bsps/TARGET_*/TOOLCHAIN_GCC_ARM/*.ld"
  ipc_shared_regions:
    - "m33_allocatable_shared"
    - "m55_allocatable_shared"
  access_from_code: "extern uint8_t __IPC_SHARED_START__;"
  cache_coherency_note: "CM55 requires cache coherency when accessing CM33 shared data"
```

---

## 3. Build System Reference

**CRITICAL:** Run `make vscode` to generate all necessary files to have a proper development, build and debug environment. It creates

- The project workspace (*.code-workspace)
- */.vscode/launch.json
- */.vscode/tasks.json
- */.vscode/settings.json
- openocd.tcl files for each directory

### Command-Line Interface Setup

**Windows Users:** Must use ModusToolbox Shell (modus-shell) for build commands.
- Provides: make, bash, and required Unix utilities
- Launch: Start Menu → ModusToolbox → ModusToolbox Shell
- Or: VSCode Terminal → select "ModusToolbox Shell" profile

**All Platforms:** Build system auto-detects ModusToolbox tools location.
- Default: `~/ModusToolbox/tools_3.6` (Mac/Linux) or `%USERPROFILE%/ModusToolbox/tools_3.6` (Windows)
- Override: Set `CY_TOOLS_PATHS` environment variable

### Common Make Targets (Workspace Level)

**For AI:** Always suggest running from workspace root for multi-project applications.

```bash
make build          # Builds all projects and combines hex files
make program        # Programs combined image to device
make clean          # Cleans all project build directories
make getlibs        # Updates/downloads all library dependencies

# Less common but useful:
make modlibs        # Opens Library Manager GUI
make config         # Opens Device Configurator GUI  
make help           # Prints all available targets, including tools, options, flags
```

### Common Make Targets (Project Level)

```bash
make build_proj     # Build only current project
make program_proj   # Program only current project hex
make clean_proj     # Clean only current project
```

**Critical for Multi-Core Projects:** Top-level `make build` combines signed hex files from all projects. This is REQUIRED for proper programming or the device and boot sequence.

---

## 4. Path Interpretation Rules (CRITICAL FOR AI)

**All paths in build configuration are RELATIVE TO THE PROJECT DIRECTORY, not workspace root.**

### Path Resolution Formula
```
absolute_path = <workspace_path>/<project_folder>/<relative_path>
```

### Example
Given:
- workspace_path: `/Users/dev/myProject`
- project: `proj_cm33_s`  
- include path: `-I../../mtb_shared/cmsis/release-v6.1.0/Core/Include`

Resolution:
1. Start: `/Users/dev/myProject/proj_cm33_s`
2. Apply: `../../mtb_shared/cmsis/release-v6.1.0/Core/Include`
3. Result: `/Users/dev/myProject/mtb_shared/cmsis/release-v6.1.0/Core/Include`

**Why this matters for AI:** Build system (GNU Make) executes from project directories. Paths like `../bsps` mean "parent of project dir, then bsps/", NOT workspace root.

---

## 5. Makefile Configuration Patterns

### Project Identity Variables
```makefile
CORE=CM33|CM55              # Target processor architecture
CORE_NAME=CM33_0|CM55_0     # Specific core instance
VCORE_ATTRS=SECURE          # Only for secure projects (proj_*_s)
APPTYPE=flash|ram           # Execution location (typically 'flash' for XIP)
```

### Component Selection
```makefile
# Enable optional components (add to COMPONENTS variable)
COMPONENTS+=FREERTOS RTOS_AWARE      # FreeRTOS with debug awareness
COMPONENTS+=SECURE_DEVICE            # Secure project marker
COMPONENTS+=MW_RETARGET_IO           # UART printf/scanf support

# Disable default components
DISABLE_COMPONENTS+=CM0P_SLEEP       # Example of disabling
```

### Multi-Project Application Structure
```makefile
# Top-level Makefile (workspace root)
MTB_TYPE=APPLICATION
MTB_PROJECTS=proj_cm33_s proj_cm33_ns proj_cm55

# Individual project Makefiles include common configuration
include ../common.mk         # Shared settings across projects
include ../common_app.mk     # Application-wide settings
```

---

## 6. Quick Troubleshooting Guide

### "How do I add a library?"
1. **GUI:** Run `make modlibs` → select library → OK
2. **Manual:** Create `deps/<library>.mtb` → run `make getlibs` → add to `COMPONENTS`
3. **Verify:** Check `../mtb_shared/<library>/` exists after `make getlibs`

### "Build fails with 'file not found'"
- Check: Library in `../mtb_shared/` (run `make getlibs` if missing)
- Check: `COMPONENTS+=` in Makefile matches library component name
- Check: Working directory is correct (workspace root for multi-project)

### "How do I configure pins/clocks?"
- **Never edit** `GeneratedSource/` files manually
- Run: `make config` to open Device Configurator
- Modify: Pin assignments, clock tree, peripheral settings in GUI
- Save: Regenerates `GeneratedSource/` files
- Rebuild: `make clean && make build`

### "Multi-core debugging not working"
- Prerequisite: run `make vscode` to generate  .vscode/launch,json files at workspace and
- Above also generates settings in *.code-workspace file as well as .vscode/settings.json
- Check: Make sure all your settings are correct for your install locations
- Check: All three projects built (`make build` from workspace root)
- Refer: `make vscode` also generates `openocd.tcl` at every level

### "Where is hardware configuration?"
- Device config: `bsps/TARGET_*/config/design.modus`
- BSP info: `bsps/TARGET_*/README.md` (hardware features, jumper settings)
- Generated code: `bsps/TARGET_*/config/GeneratedSource/` (DO NOT EDIT)

---

## 7. Navigation to Detailed References

**For comprehensive library information:**
- [library-catalog.yaml](/Users/hdm/work/a/myE84Proj/.modustoolbon/docs/library-catalog.yaml) - Structured library metadata (categories, versions, dependencies)

**For structured build data:**
- [build-configuration.yaml](/Users/hdm/work/a/myE84Proj/.modustoolbon/docs/build-configuration.yaml) - Project configs, includes, defines, sources

**For hardware details:**
- [/Users/hdm/work/a/myE84Proj/bsps/TARGET_APP_KIT_PSE84_EVAL_EPC2/README.md] - Board features, schematics, jumper settings
- Device Configurator (run `make config`) - Interactive hardware configuration

**For ModusToolbox documentation:**
- ModusToolbox IDE: Help → ModusToolbox Documentation
- Online: https://www.infineon.com/modustoolbox
- API docs in: `../mtb_shared/<library>/docs/`


## BSP KIT_PSE84_EVAL_EPC2: Middleware/Firmware Libraries

Libraries available for this MCU/board. The projects column lists the projects using the middleware. If the Local URI is empty, the middleware is not yet downloaded/used.

| Middleware ID|Category|Projects |Versions|Dependencies|Remote URI<br>Local URI |
|:-------------|:-------|:--------|-------:|:-----------|:-----------------------|
|SHIELD_XENSIV_A|Peripheral||**release-v0.5.0**<br>(+1 more)|sensor-humidity-sht3x<br>sensor-motion-bmi270<br>sensor-orientation-bmm350<br>sensor-xensiv-dps3xx<br>sensor-xensiv-pasco2<br>display-tft-st7735s|https://github.com/Infineon/SHIELD_XENSIV_A|
|abstraction-rtos|Utilities|proj_cm33_ns|**release-v1.12.0**<br>(+23 more)||https://github.com/cypresssemiconductorco/abstraction-rtos<br>../mtb_shared/abstraction-rtos/release-v1.12.0<br>- [README.md](/Users/hdm/work/a/mtb_shared/abstraction-rtos/release-v1.12.0/README.md)|
|airoc-hci-transport|Bluetooth®||**release-v1.3.0**<br>(+5 more)||https://github.com/Infineon/airoc-hci-transport|
|async-transfer|Middleware|proj_cm33_s<br>proj_cm33_ns<br>proj_cm55|**release-v1.1.0**<br>(+2 more)||https://github.com/Infineon/async-transfer<br>../mtb_shared/async-transfer/release-v1.1.0<br>- [README.md](/Users/hdm/work/a/mtb_shared/async-transfer/release-v1.1.0/README.md)|
|audio-codec-ak4954a|Peripheral||**release-v1.0.2**<br>(+3 more)||https://github.com/cypresssemiconductorco/audio-codec-ak4954a|
|audio-codec-tlv320dac3100|Middleware||**release-v1.0.0**<br>(+1 more)||https://github.com/Infineon/audio-codec-tlv320dac3100|
|audio-codec-wm8960|Peripheral||**release-v1.0.0**<br>(+1 more)||https://github.com/Infineon/audio-codec-wm8960|
|audio-front-end|Middleware||**release-v1.0.1**<br>(+2 more)|audio-voice-core<br>connectivity-utilities<br>freertos|https://github.com/Infineon/audio-front-end|
|audio-sw-codecs|Middleware||**release-v1.0.1**<br>(+2 more)|connectivity-utilities|https://github.com/Infineon/audio-sw-codecs|
|audio-voice-core|Middleware||**release-v1.0.1**<br>(+1 more)||https://github.com/Infineon/audio-voice-core|
|avnet-iotc-mtb-sdk|Middleware||**release-v8.1.0**<br>(+8 more)||https://github.com/avnet-iotconnect/avnet-iotc-mtb-sdk|
|aws-iot-device-sdk-embedded-C|Middleware||**202103.00**<br>(+2 more)||https://github.com/aws/aws-iot-device-sdk-embedded-C|
|aws-iot-device-sdk-port|Middleware||**release-v2.7.0**<br>(+16 more)||https://github.com/cypresssemiconductorco/aws-iot-device-sdk-port|
|azure-c-sdk-port|Middleware||**release-v1.6.0**<br>(+8 more)||https://github.com/cypresssemiconductorco/azure-c-sdk-port|
|ble-mesh|Bluetooth®||**release-v4.0.0**<br>(+3 more)||https://github.com/Infineon/ble-mesh|
|block-storage|Middleware||**release-v1.3.2**<br>(+7 more)||https://github.com/Infineon/block-storage|
|bmi160|Peripheral||**bmi160_v3.9.1**<br>(+1 more)||https://github.com/BoschSensortec/BMI160_driver|
|bmi270|Peripheral||**v2.86.1**||https://github.com/BoschSensortec/BMI270_SensorAPI|
|bmm150|Peripheral||**bmm150_v2.0.0**||https://github.com/BoschSensortec/BMM150-Sensor-API|
|bmm350|Peripheral||**v1.4.0**||https://github.com/BoschSensortec/BMM350_SensorAPI|
|bt-audio-profiles|Bluetooth®||**release-v2.0.0**<br>(+3 more)||https://github.com/Infineon/bt-audio-profiles|
|bt-fw-ifx-cyw55500a1|Bluetooth®|proj_cm33_s<br>proj_cm33_ns<br>proj_cm55|**release-v3.1.0**<br>release-v2.2.0<br>(+6 more)||https://github.com/Infineon/bt-fw-ifx-cyw55500a1<br>../mtb_shared/bt-fw-ifx-cyw55500a1/release-v2.2.0<br>- [README.md](/Users/hdm/work/a/mtb_shared/bt-fw-ifx-cyw55500a1/release-v2.2.0/README.md)|
|bt-fw-mur-cyw55513|Bluetooth®||**release-v1.0.0**<br>(+1 more)||https://github.com/Infineon/bt-fw-mur-cyw55513|
|btsdk-audio|Bluetooth®||**release-v4.9.4**<br>(+18 more)||https://github.com/cypresssemiconductorco/btsdk-audio|
|btsdk-common|Bluetooth®||**release-v4.7.0**<br>(+11 more)||https://github.com/cypresssemiconductorco/btsdk-common|
|btsdk-drivers|Peripheral||**release-v4.8.0**<br>(+11 more)||https://github.com/cypresssemiconductorco/btsdk-drivers|
|btsdk-host-apps-bt-ble|Utilities||**release-v4.9.3**<br>(+16 more)||https://github.com/cypresssemiconductorco/btsdk-host-apps-bt-ble|
|btsdk-include|Bluetooth®||**release-v4.9.3**<br>(+17 more)||https://github.com/cypresssemiconductorco/btsdk-include|
|btstack|Bluetooth®||**release-v5.0.0**<br>(+32 more)||https://github.com/cypresssemiconductorco/btstack|
|btstack-integration|Bluetooth®||**release-v7.0.0**<br>(+22 more)|btstack<br>freertos<br>abstraction-rtos<br>clib-support|https://github.com/Infineon/btstack-integration|
|buffer-pool-manager|Middleware||**release-v1.0.1**<br>(+1 more)|connectivity-utilities|https://github.com/Infineon/buffer-pool-manager|
|cJSON|Utilities||**v1.7.15**||https://github.com/DaveGamble/cJSON|
|camera-dvp-ov7675|Peripheral||**release-v0.5.1**<br>(+2 more)||https://github.com/Infineon/camera-dvp-ov7675|
|capsense|Middleware||**release-v8.10.0**<br>(+13 more)||https://github.com/cypresssemiconductorco/capsense|
|clib-support|Utilities|proj_cm33_ns|**release-v1.8.0**<br>(+11 more)||https://github.com/cypresssemiconductorco/clib-support<br>../mtb_shared/clib-support/release-v1.8.0<br>- [README.md](/Users/hdm/work/a/mtb_shared/clib-support/release-v1.8.0/README.md)|
|cmsis|Core|proj_cm33_s<br>proj_cm33_ns<br>proj_cm55|**release-v6.1.0**<br>(+5 more)||https://github.com/Infineon/cmsis<br>../mtb_shared/cmsis/release-v6.1.0<br>- [README.md](/Users/hdm/work/a/mtb_shared/cmsis/release-v6.1.0/README.md)|
|command-console|Middleware||**release-v6.3.0**<br>(+24 more)||https://github.com/cypresssemiconductorco/command-console|
|connectivity-utilities|Utilities||**release-v4.5.2**<br>(+21 more)||https://github.com/cypresssemiconductorco/connectivity-utilities|
|core-lib|Core|proj_cm33_s<br>proj_cm33_ns<br>proj_cm55|**release-v1.6.0**<br>(+18 more)||https://github.com/cypresssemiconductorco/core-lib<br>../mtb_shared/core-lib/release-v1.6.0<br>- [README.md](/Users/hdm/work/a/mtb_shared/core-lib/release-v1.6.0/README.md)|
|core-make|Core|proj_cm33_s<br>proj_cm33_ns<br>proj_cm55|**release-v3.7.0**<br>(+27 more)||https://github.com/cypresssemiconductorco/core-make<br>../mtb_shared/core-make/release-v3.7.0<br>- [README.md](/Users/hdm/work/a/mtb_shared/core-make/release-v3.7.0/README.md)|
|csdadc|Middleware||**release-v2.10.0**<br>(+2 more)||https://github.com/cypresssemiconductorco/csdadc|
|csdidac|Middleware||**release-v2.10.0**<br>(+2 more)||https://github.com/cypresssemiconductorco/csdidac|
|cy-mbedtls-acceleration|Core||**release-v3.0.0**<br>(+16 more)||https://github.com/cypresssemiconductorco/cy-mbedtls-acceleration|
|device-db|Core|proj_cm33_s<br>proj_cm33_ns<br>proj_cm55|**release-v4.33.0**<br>release-v4.31.0<br>(+27 more)||https://github.com/Infineon/device-db<br>/Users/hdm/.modustoolbox/global/device-db/release-v4.31.0<br>- [README.md](/Users/hdm/.modustoolbox/global/device-db/release-v4.31.0/README.md)|
|dfu|Middleware||**release-v6.1.0**<br>(+10 more)||https://github.com/cypresssemiconductorco/dfu|
|display-amoled-co5300|Graphics||**release-v1.0.0**<br>(+2 more)||https://github.com/Infineon/display-amoled-co5300|
|display-dsi-waveshare-4-3-lcd|Graphics||**release-v1.0.0**<br>(+1 more)||https://github.com/Infineon/display-dsi-waveshare-4-3-lcd|
|display-dsi-waveshare-7-0-lcd-c|Graphics||**release-v1.0.0**<br>(+1 more)||https://github.com/Infineon/display-dsi-waveshare-7-0-lcd-c|
|display-eink-e2271cs021|Peripheral||**release-v1.1.0**<br>(+3 more)||https://github.com/cypresssemiconductorco/display-eink-e2271cs021|
|display-oled-ssd1306|Peripheral||**release-v1.0.3**<br>(+4 more)||https://github.com/cypresssemiconductorco/display-oled-ssd1306|
|display-tft-ek79007ad3|Graphics||**release-v1.0.0**<br>(+1 more)||https://github.com/Infineon/display-tft-ek79007ad3|
|display-tft-st7735s|Peripheral||**release-v0.5.0**<br>(+1 more)||https://github.com/Infineon/display-tft-st7735s|
|display-tft-st7789v|Peripheral||**release-v1.0.1**<br>(+2 more)||https://github.com/cypresssemiconductorco/display-tft-st7789v|
|emeeprom|Middleware||**release-v2.70.0**<br>(+8 more)||https://github.com/cypresssemiconductorco/emeeprom|
|emfile|Middleware||**release-v3.0.0**<br>(+5 more)||https://github.com/cypresssemiconductorco/emfile|
|emusb-device|Middleware||**release-v2.1.0**<br>(+7 more)||https://github.com/Infineon/emusb-device|
|emusb-host|Middleware||**release-v2.1.0**<br>(+7 more)||https://github.com/Infineon/emusb-host|
|enterprise-security|Middleware||**release-v3.3.0**<br>(+8 more)||https://github.com/cypresssemiconductorco/enterprise-security|
|ethernet-connection-manager|Ethernet||**release-v2.2.0**<br>(+7 more)||https://github.com/Infineon/ethernet-connection-manager|
|ethernet-core-freertos-lwip-mbedtls|Ethernet||**release-v3.0.0**<br>(+9 more)||https://github.com/Infineon/ethernet-core-freertos-lwip-mbedtls|
|ethernet-phy-driver|Ethernet||**release-v1.2.0**<br>(+3 more)||https://github.com/Infineon/ethernet-phy-driver|
|freertos|Core|proj_cm33_ns|**release-v10.6.202**<br>release-v10.6.201<br>(+16 more)||https://github.com/cypresssemiconductorco/freertos<br>../mtb_shared/freertos/release-v10.6.201<br>- [README.md](/Users/hdm/work/a/mtb_shared/freertos/release-v10.6.201/README.md)|
|freertos-posix|Core|proj_cm33_ns|**release-v1.0.1**<br>(+2 more)||https://github.com/Infineon/freertos-posix<br>../mtb_shared/freertos-posix/release-v1.0.1<br>- [README.md](/Users/hdm/work/a/mtb_shared/freertos-posix/release-v1.0.1/README.md)|
|fw-cyw20829b1|Bluetooth®||**release-v1.0.0**<br>(+1 more)||https://github.com/Infineon/fw-cyw20829b1|
|http-client|Middleware||**release-v1.8.1**<br>(+13 more)||https://github.com/cypresssemiconductorco/http-client|
|http-server|Middleware||**release-v3.3.0**<br>(+18 more)||https://github.com/cypresssemiconductorco/http-server|
|ifx-mbedtls|Middleware||**release-v3.6.400**<br>(+4 more)|cy-mbedtls-acceleration|https://github.com/Infineon/ifx-mbedtls|
|ifx-mcuboot-pse84|Middleware||**release-v1.1.0**<br>(+2 more)||https://github.com/Infineon/ifx-mcuboot-pse84|
|ifx-tf-m-ns|Middleware||**release-v2.1.400**<br>(+2 more)|mtb-srf<br>mtb-ipc|https://github.com/Infineon/ifx-tf-m-ns|
|ifx-tf-m-pse84epc2|Middleware||**release-v2.1.400**<br>(+2 more)|ifx-mbedtls<br>mtb-srf<br>mtb-ipc|https://github.com/Infineon/ifx-tf-m-pse84epc2|
|ifx-tf-m-pse84epc4|Middleware||**release-v2.1.400**<br>(+2 more)|ifx-mbedtls<br>mtb-srf<br>mtb-ipc|https://github.com/Infineon/ifx-tf-m-pse84epc4|
|kv-store|Utilities||**release-v2.2.0**<br>(+8 more)||https://github.com/cypresssemiconductorco/kv-store|
|littlefs|Middleware||**v2.4.0**||https://github.com/littlefs-project/littlefs|
|lpa|Middleware||**release-v5.8.1**<br>(+20 more)||https://github.com/cypresssemiconductorco/lpa|
|lvgl|Graphics||**v9.2.0**<br>(+1 more)||https://github.com/lvgl/lvgl|
|lwip|Core||**STABLE-2_1_2_RELEASE**||https://github.com/lwip-tcpip/lwip|
|lwip-freertos-integration|Middleware||**release-v1.2.0**<br>(+3 more)||https://github.com/Infineon/lwip-freertos-integration|
|lwip-network-interface-integration|Middleware||**release-v1.7.0**<br>(+12 more)||https://github.com/Infineon/lwip-network-interface-integration|
|matter-mbedtls|Middleware||**release-v1.4.2**<br>(+1 more)||https://github.com/Infineon/matter-mbedtls|
|matter-wifi-cat5|Middleware||**release-v1.4.2**<br>(+1 more)|mtb-matter<br>matter<br>matter-mbedtls<br>kv-store-cat5<br>ota-bootloader-abstraction<br>ota-update<br>wifi-core-threadx-cat5|https://github.com/Infineon/matter-wifi-cat5|
|mbedtls|Core||**mbedtls-3.0.0**||https://github.com/ARMmbed/mbedtls|
|ml-middleware|Middleware||**release-v3.1.0**<br>(+7 more)|ml-tflite-micro|https://github.com/Infineon/ml-middleware|
|ml-tflite-micro|Middleware||**release-v3.1.0**<br>(+5 more)||https://github.com/Infineon/ml-tflite-micro|
|motor-ctrl-lib|Middleware||**release-v3.0.0**<br>(+6 more)||https://github.com/Infineon/motor-ctrl-lib|
|mqtt|Middleware||**release-v4.7.0**<br>(+25 more)||https://github.com/cypresssemiconductorco/mqtt|
|mtb-dsl-pse8xxgp|Core|proj_cm33_s<br>proj_cm33_ns<br>proj_cm55|**release-v1.1.1**<br>release-v1.1.0<br>(+2 more)|cmsis<br>device-db<br>core-make<br>async-transfer<br>mtb-srf|https://github.com/Infineon/mtb-dsl-pse8xxgp<br>../mtb_shared/mtb-dsl-pse8xxgp/release-v1.1.0<br>- [README.md](/Users/hdm/work/a/mtb_shared/mtb-dsl-pse8xxgp/release-v1.1.0/README.md)|
|mtb-ipc|Middleware|proj_cm33_s<br>proj_cm33_ns<br>proj_cm55|**release-v1.1.0**<br>(+2 more)||https://github.com/Infineon/mtb-ipc<br>../mtb_shared/mtb-ipc/release-v1.1.0<br>- [README.md](/Users/hdm/work/a/mtb_shared/mtb-ipc/release-v1.1.0/README.md)|
|mtb-littlefs|Middleware||**release-v3.0.0**<br>(+7 more)|littlefs<br>serial-memory|https://github.com/cypresssemiconductorco/mtb-littlefs|
|mtb-pmbus|Middleware||**release-v1.0.0**<br>(+1 more)||https://github.com/Infineon/mtb-pmbus|
|mtb-srf|Middleware|proj_cm33_s<br>proj_cm33_ns<br>proj_cm55|**release-v1.1.0**<br>(+2 more)||https://github.com/Infineon/mtb-srf<br>../mtb_shared/mtb-srf/release-v1.1.0<br>- [README.md](/Users/hdm/work/a/mtb_shared/mtb-srf/release-v1.1.0/README.md)|
|mtb-stl|Middleware||**release-v3.3.1**<br>(+12 more)||https://github.com/Infineon/mtb-stl|
|mtb-template-pse8xxgp|Core||**release-v1.1.0**<br>(+2 more)||https://github.com/Infineon/mtb-template-pse8xxgp|
|multi-half-bridge|Peripheral||**release-v5.0.1**<br>(+2 more)||https://github.com/Infineon/multi-half-bridge|
|netxduo-network-interface-integration|Middleware||**release-v1.5.1**<br>(+8 more)||https://github.com/Infineon/netxduo-network-interface-integration|
|nonrtos-lwip-mbedtls|Middleware||**release-v1.0.1**<br>(+2 more)||https://github.com/Infineon/nonrtos-lwip-mbedtls|
|optiga-nbt-lib-c-mtb|Peripheral||**release-v1.1.3**<br>(+3 more)||https://github.com/Infineon/optiga-nbt-lib-c-mtb|
|optiga-trust-m|Peripheral||**release-v5.3.0**<br>(+6 more)||https://github.com/Infineon/optiga-trust-m|
|ota-bootloader-abstraction|Middleware||**release-v1.8.0**<br>(+12 more)||https://github.com/Infineon/ota-bootloader-abstraction|
|ota-update|Middleware||**release-v4.5.1**<br>(+18 more)||https://github.com/Infineon/ota-update|
|retarget-io|Peripheral|proj_cm33_ns|**release-v1.8.1**<br>(+11 more)||https://github.com/cypresssemiconductorco/retarget-io<br>../mtb_shared/retarget-io/release-v1.8.1<br>- [README.md](/Users/hdm/work/a/mtb_shared/retarget-io/release-v1.8.1/README.md)|
|rgb-led|Peripheral||**release-v1.2.1**<br>(+5 more)||https://github.com/cypresssemiconductorco/rgb-led|
|rtlabs-soem-lib|Peripheral||**release-v0.6.0**<br>(+1 more)||https://github.com/rtlabs-com/mtb-mw-soem|
|rtlabs-uphy-lib|Peripheral||**release-v0.7.2**<br>(+4 more)||https://github.com/rtlabs-com/mtb-mw-uphy|
|se-rt-services-utils|Middleware|proj_cm33_s<br>proj_cm33_ns<br>proj_cm55|**release-v1.2.0**<br>(+1 more)||https://github.com/Infineon/se-rt-services-utils<br>../mtb_shared/se-rt-services-utils/release-v1.2.0<br>- [README.md](/Users/hdm/work/a/mtb_shared/se-rt-services-utils/release-v1.2.0/README.md)|
|secure-sockets|Middleware||**release-v3.12.0**<br>(+26 more)||https://github.com/cypresssemiconductorco/secure-sockets|
|sensor-humidity-sht3x|Peripheral||**release-v0.5.0**<br>(+1 more)|sht3x|https://github.com/Infineon/sensor-humidity-sht3x|
|sensor-humidity-sht4x|Peripheral||**release-v1.1.0**<br>(+2 more)|sht4x|https://github.com/Infineon/sensor-humidity-sht4x|
|sensor-light|Peripheral||**release-v1.1.0**<br>(+3 more)||https://github.com/cypresssemiconductorco/sensor-light|
|sensor-motion-bmi160|Peripheral||**release-v1.1.2**<br>(+5 more)||https://github.com/cypresssemiconductorco/sensor-motion-bmi160|
|sensor-motion-bmi270|Peripheral||**release-v1.0.0**<br>(+4 more)|bmi270|https://github.com/Infineon/sensor-motion-bmi270|
|sensor-orientation-bmm350|Peripheral||**release-v1.0.1**<br>(+6 more)|bmm350|https://github.com/Infineon/sensor-orientation-bmm350|
|sensor-orientation-bmx160|Peripheral||**release-v1.0.2**<br>(+3 more)||https://github.com/Infineon/sensor-orientation-bmx160|
|sensor-xensiv-bgt60trxx|Peripheral||**release-v2.0.0**<br>(+4 more)||https://github.com/Infineon/sensor-xensiv-bgt60trxx|
|sensor-xensiv-dps3xx|Peripheral||**release-v2.0.0**<br>(+1 more)||https://github.com/Infineon/sensor-xensiv-dps3xx|
|sensor-xensiv-pasco2|Peripheral||**release-v2.0.0**<br>(+4 more)||https://github.com/cypresssemiconductorco/sensor-xensiv-pasco2|
|serial-flash|Peripheral||**release-v1.4.3**<br>(+8 more)||https://github.com/cypresssemiconductorco/serial-flash|
|serial-memory|Peripheral||**release-v3.1.0**<br>(+4 more)||https://github.com/Infineon/serial-memory|
|sht3x|Peripheral||**2.0.0**||https://github.com/Sensirion/embedded-i2c-sht3x|
|sht4x|Peripheral||**1.1.0**||https://github.com/Sensirion/embedded-i2c-sht4x|
|speech-onset-detection|Middleware||**release-v1.0.1**<br>(+1 more)|connectivity-utilities|https://github.com/Infineon/speech-onset-detection|
|staged-voice-control|Middleware||**release-v1.0.1**<br>(+1 more)|connectivity-utilities<br>freertos|https://github.com/Infineon/staged-voice-control|
|syspm-callbacks-psc3|Middleware||**release-v1.0.0**<br>(+1 more)||https://github.com/Infineon/syspm-callbacks-psc3|
|syspm-callbacks-t2gc2d6m|Middleware||**release-v1.0.0**<br>(+1 more)||https://github.com/Infineon/syspm-callbacks-t2gc2d6m|
|syspm-callbacks-xmc72|Middleware||**release-v1.0.0**<br>(+1 more)||https://github.com/Infineon/syspm-callbacks-xmc72|
|thermistor|Peripheral||**release-v2.1.0**<br>(+4 more)||https://github.com/cypresssemiconductorco/thermistor|
|touch-ctp-ft3268|Graphics||**release-v1.0.0**<br>(+2 more)||https://github.com/Infineon/touch-ctp-ft3268|
|touch-ctp-ft5406|Graphics||**release-v1.0.0**<br>(+1 more)||https://github.com/Infineon/touch-ctp-ft5406|
|touch-ctp-ft6146-m00|Graphics||**release-v1.0.0**<br>(+2 more)||https://github.com/Infineon/touch-ctp-ft6146-m00|
|touch-ctp-gt911|Graphics||**release-v1.0.0**<br>(+1 more)||https://github.com/Infineon/touch-ctp-gt911|
|touch-ctp-ili2511|Graphics||**release-v1.0.0**<br>(+1 more)||https://github.com/Infineon/touch-ctp-ili2511|
|usbdev|Middleware||**release-v2.10.0**<br>(+2 more)||https://github.com/cypresssemiconductorco/usbdev|
|usbfxstack|Middleware||**release-v1.3.1**<br>(+6 more)||https://github.com/Infineon/usbfxstack|
|virtual-connectivity-manager|Middleware||**release-v1.0.4**<br>(+5 more)||https://github.com/Infineon/virtual-connectivity-manager|
|voice-assistant|Middleware||**release-v1.0.0**<br>(+1 more)|audio-voice-core<br>speech-onset-detection|https://github.com/Infineon/voice-assistant|
|whd-bsp-integration|Wi-Fi||**release-v2.5.0**<br>(+16 more)||https://github.com/cypresssemiconductorco/whd-bsp-integration|
|wifi-connection-manager|Middleware||**release-v4.0.1**<br>(+28 more)||https://github.com/cypresssemiconductorco/wifi-connection-manager|
|wifi-core-freertos-lwip-mbedtls|Wi-Fi||**release-v3.1.0**<br>(+11 more)||https://github.com/Infineon/wifi-core-freertos-lwip-mbedtls|
|wifi-host-driver|Wi-Fi||**release-v5.0.7**<br>(+33 more)||https://github.com/cypresssemiconductorco/wifi-host-driver|
|wifi-mw-core|Wi-Fi||**release-v3.4.0**<br>(+11 more)||https://github.com/cypresssemiconductorco/wifi-mw-core|
|wifi-ncp_hm|Wi-Fi||**release-v1.2.2**<br>(+1 more)||https://github.com/Infineon/wifi-ncp_hm|
|wifi-resources|Wi-Fi||**release-v3.0.0**<br>(+6 more)||https://github.com/Infineon/wifi-resources|
|wpa3-external-supplicant|Wi-Fi||**release-v1.3.0**<br>(+7 more)||https://github.com/Infineon/wpa3-external-supplicant|
