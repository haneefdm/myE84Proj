# Workspace Overview (text)
# Workspace Overview
Workspace Dir: "/Users/hdm/rag/mtbmcp/test/myE84Proj"

This is a ModusToolbox C/C++ Workspace for Infineon Edge MCU Device PSE846GPS2DBZC4A. This MCU is a dual-core device featuring both a Cortex-M33 and a Cortex-M55 core, designed for low-power applications. This document doesn't describe what the application does, it describes organization and tooling required to manage the development process.

**Much more detailed information about the BSP and the MCU can be found at [BSP README](/Users/hdm/rag/mtbmcp/test/myE84Proj/bsps/TARGET_APP_KIT_PSE84_EVAL_EPC2/README.md)**

## MCU Features at a high level
The key features of this device include:
- Cortex®-M55 CPU with Helium™ DSP
- Low-power Cortex®-M33 with DSP
- Advanced Machine Learning (ML) with Arm Ethos-U55 NPU
- NNLite NPU for Low-Power Always-On ML
- Up to 6MB SRAM for Next Gen Apps
- Ultra-low power RRAM Technology
- Rich Peripheral Set to Reduce BOM
- Low-Power 2.5D GPU and Interfaces
- ModusToolbox™ Software Support
- End-to-end ML Solution w/DEEPCRAFT™
- State-of-the-Art Secured Enclave
- Infineon Edge Protect Technology


## Target Board Support Package (BSP) Features at a high level
This target board support package (PSE84_EVAL_EPC2) used in this project features:
- On-board debugger/programmer (DAPLink)
- 128 Mbit external Quad SPI flash, 1 Gbit external Octal flash, and 128 Mbit Octal RAM
- Various sensors and peripherals for development and testing
- Connectivity options including UART, I2C, SPI, and GPIOs
- Please refer to the official Infineon documentation for detailed specifications and features of the board.

## MCU Core Architecture and usage
The CM33 core typically has one more executable projects (bootloader, secure, non-secure). In a typical use case, the CM33 starts first in secure mode, initializes the system, and then boots the non-secure application on the same core. Once the CM33 core is up and running, it can then initialize and start the CM55 core. The CM55 core is generally used for high-performance tasks such as machine learning inference and digital signal processing. The CM55 is sometimes referred to as the APP CPU as it is expected to run the main application that does the heavy lifting. The CM33 is sometimes referred to as the SYS CPU as it manages the overall system, acts as a sensor hub, schedules sleep and wakeup conditions, etc.

## FW Project Structure
In this workspace, the CM33 core project(s) are (proj_cm33_s, proj_cm33_ns) and the CM55 core project(s) is (proj_cm55). The secure project is typically named with a `_s` suffix and the non-secure project with a `_ns` suffix. Each project can be built, flashed, and debugged independently or together using VSCode or Eclipse or CLI tools. All projects can use the shared middleware and libraries located in the `../mtb_shared` folders. However, the `../mtb_shared` folder contains source files and documentation that can be used for a variety of Infineon MCUs and boards, not just the one used in this workspace. Therefore, not all files in the 'mtb_shared' folder may be relevant to the specific MCU or board in this workspace. Please refer to the documentation and comments within the source files for guidance on which files are applicable.

When parsing source code, it must be done in the context of a specific project (one of proj_cm33_s, proj_cm33_ns, proj_cm55). For the actual sources and libraries used for a given project, you can invoke the MCP Tool "get_project_info" command to get a detailed list of source files, include paths, #defines, and libraries used in the build process. It can also tell you about what else is possible for this project but currently not used. Some middleware may be already in the '../mtb_shared' folder or the user can use the ModusToolbox Library Manager to add more middleware components as needed.

The /Users/hdm/rag/mtbmcp/test/myE84Proj/bsps/TARGET_APP_KIT_PSE84_EVAL_EPC2 directory contains many *.md files that are of interest. It also has source code but for accuracy, they should be viewed with a project context, especially the #defines.
The following are generic install, build instructions that apply to anu ModusToolbox workspace/project

## Development Environment Setup
To set up the development environment for this workspace, please follow these steps:
1. Install ModusToolbox: The user should download and install the latest versions of ModusToolbox packages from the Infineon website. The best reference for this is the [ModusToolbox installation guide](https://www.Infineon.com/ModusToolboxInstallGuide).
2. If not already done, install your favourite IDE
    * Install the [ModusToolbox Setup Program](https://softwaretools.infineon.com/tools/com.ifx.tb.tool.modustoolboxsetup) from Infineon website. Once installed, install the latest packages
        * For Eclipse users: Install Eclipse IDE for ModusToolbox
        * ARM GNU Toolchain
        * ModusToolbox Tools Package
        * ModusToolbox Programming Tools
        * For Edge devices, install ModusToolbox Edge Protect Security Suite
        * For CYW208xx install AIROC SDK components
    * **VSCode** If using VSCode, [Install VSCode](https://code.visualstudio.com/docs/setup/setup-overview) and the extension [ModusToolbox Assistant](https://marketplace.visualstudio.com/items?itemName=c-and-t-software.mtbassist)
3. Create a new Project using the ModusToolbox Assistant (preferred) in VSCode, or New Poject Wizard in Eclipse or the standalone "Project Creator" tool.
4. If you run `make vscode` or `make eclipse` in the root of the Project Workspace, it will creeate build recipes and launch configurations for the respective IDEs. `make vscode` will also provide a list of recommended VSCode extensions for build and debug. Do a `make help` to get a complete list of supported IDEs
5. More tools and information project management and AI assistance
   * VS Code extension [ModusToolbox Assistant](https://marketplace.visualstudio.com/items?itemName=c-and-t-software.mtbassist). This extension can help with the complete lifeccyle of a ModusToolbox project, including helping install software, creation of new projects, managing libraries, 
   * The VS Code extension ModusToolbox MCP Server is also very useful to interact with AI agents such as Github Copilot.
   * For Eclipse users, install the specific Eclipse for ModusToolbox, available from the ModusToolbox Setup program. This comes with various Eclipse plugins specifically for ModusToolbox. You can also install an Github Copilot AI agent using the Eclipse Marketplace.
  
6. As part of installation, the user should also install the proper toolchain needed for the desired device and application. GCC ARM 11 and 14 are available to install from the ModusToolbox Setup program. LLVM (for better IntelliSense) is available to download and install separately from [Github](https://github.com/ARM-software/LLVM-embedded-toolchain-for-Arm/). ModusToolbox Assistant can help with installation of LLVM
7. Start VS Code or Eclipse to create an new ModusToolbox application. Both IDEs provide simple instructions to get started using the ModusToolbox-specific extension or plugins. Refer to the [VS Code user guide](https://www.Infineon.com/MTBVSCodeUserGuide) or [Eclipse user guide](https://www.Infineon.com/MTBEclipseIDEUserguide) as appropriate.
8. Develop, build, and flash: Once the application has been created, the user should be able to interact with the AI agent to configure peripherals, update application code, build the application, and flash the device.

## Buidling Projects using CLI
While builds can be done with the IDEs, you can also build from the command line. **For Windows Users**, it is important to use `modus-shell`. It will provide necessary command-line utilities such as `make`, `bash`, etc. It has just a subset of Unix tools that are required by the `Makefiles` and custom tools that are required by ModusToolbox. You can also start a `ModusToolbox Shell` within the VSCode Terminal on any platform but **especially on Windows**. The `Makefile`s in a ModusToolbox workspace will automatically detect and use the latest ModusToolbox CLI tools but you can set the environment variable `CY_TOOLS_PATHS` to force a specific tools version (use forward slashes regarless of platform). The *default* location of the tools installation is (3.6 could be some other version)
- **Widnows:** %USERPROFILE%/ModusToolsbox/tools_3.6
    - bash location: %USERPROFILE%/ModusToolsbox/tools_3.6/modus-shell/bin/bash.exe
- **Mac:** /Applications/ModusToolsbox/tools_3.6
- **Linux:** $HOME/ModusToolsbox/tools_3.6

Hopefully AI agents will use the 'ModusToolbox Shell' on Windows even if MSYS or Git Bash are installed which are also helpful to provide additional tools

ModusToolbos uses `make` for virtually all build tasks. The most important target is `make help` to get a list of all available targets. It will also list the rarely needed but useful configuration parameter overrides such as toolchains, targets, etc.

**For Windows Users**, it is important to use the `Modus Shell`. The following `make` targets are the most useful


### Important make targets for the workspace (top) level Makefile
#### The targets for each project below the workspace will be project specific
---
```
 help                Prints this help documentation. Use the CY_HELP=<Name of make target or variable> to see the verbose documentation
                     for a particular make target or variable. For example, `make CY_HELP=build help`
 all                 Same as build.
 getlibs             Updates all dependencies for the application.
 build               Builds the application.
 build_proj          Build the current project.
 qbuild              Builds the application using the previous build's source list.
 qbuild_proj         Builds the current project using the previous build's source list. In single-core applications, this target is the same as the "qbuild" target.
 program             Builds the application and programs it to the target device. In multi-core applications, this will program the combined hex file.
 program_proj        Builds the current project and programs it to the target device." In single-core applications, this target is the same as the "program" target.
 qprogram            Programs a built application to the target device without rebuilding.
 qprogram_proj       Programs the current built project to the target device without rebuilding. In single-core applications, this target is the same as the "qprogram" target.
 clean               Cleans the application and project "build" directories.
 clean_proj          Clean the current project's "build" directory. In signle-core applications, this target is the same as the "clean" target.
 prebuild            Generates code for the application.
```

#### Tools targets (GUIs, specific versions may vary, tools list may vary by device)                      
---
```                       
 modlibs             Launches the Library Manager 2.50 GUI
 library-manager     Launches the Library Manager 2.50 GUI
 qspi-configurator   Launches the QSPI Configurator 4.60 GUI for the target's cyqspi file
 config              Launches the Device Configurator 5.50 GUI for the target's modus file
 device-configurator Launches the Device Configurator 5.50 GUI for the target's modus file
 bsp-assistant       Launches the BSP Assistant 1.50 GUI
 config_bt           Launches the Bluetooth® Configurator 3.40 GUI for the target's cybt file
 bt-configurator     Launches the Bluetooth® Configurator 3.40 GUI for the target's cybt file
 smartio-configurator Launches the Smart I/O Configurator 4.50 GUI for the target's modus file
 edge-protect-configurator Launches the Edge Protect Configurator 1.20 GUI for the target's edgeprotect file
```

**IMPORTANT** If ModusToolbox workspace repository was recently cloned or if `../mtb_shared` or other libraries are missing, you can use the command `make getlibs` to refresh the libraries (it is safe to use it since it will restore the exact versions that were previously used). Or you can also use the `ModusToolbox Library Manager` GUI tool.
## Additional Resources
For more information on developing applications for Infineon Edge MCUs using ModusToolbox, please refer to:
- Infineon ModusToolbox Official Documentation: https://www.infineon.com/modustoolbox
- Infineon Edge MCU Product Page: https://www.infineon.com/edge-mcus
- ModusToolbox Documentation: https://documentation.infineon.com/modustoolbox/docs/zhf1731521206417
- Infineon ModusToolbox Official Documentation: https://www.infineon.com/modustoolbox
- Infineon MCU Product Pages: https://www.infineon.com/cms/en/product/microcontroller/
- Infineon Developer Community: https://community.infineon.com


## Workspace Overview (structured JSON)
```json
{
  "workspace_path": "/Users/hdm/rag/mtbmcp/test/myE84Proj",
  "title": "",
  "description": "",
  "device_name": "PSE846GPS2DBZC4A",
  "bsp_name": "PSE84_EVAL_EPC2",
  "board_name": "",
  "bp_headers": [],
  "projects": [
    {
      "project_name": "proj_cm33_s",
      "folder_name": "/Users/hdm/rag/mtbmcp/test/myE84Proj/proj_cm33_s",
      "core_id": "CM33_0",
      "core_type": "CM33",
      "libraries": [],
      "defines": null,
      "source_dirs": null,
      "include_dirs": null,
      "exclude_files": null
    },
    {
      "project_name": "proj_cm33_ns",
      "folder_name": "/Users/hdm/rag/mtbmcp/test/myE84Proj/proj_cm33_ns",
      "core_id": "CM33_0",
      "core_type": "CM33",
      "libraries": [],
      "defines": null,
      "source_dirs": null,
      "include_dirs": null,
      "exclude_files": null
    },
    {
      "project_name": "proj_cm55",
      "folder_name": "/Users/hdm/rag/mtbmcp/test/myE84Proj/proj_cm55",
      "core_id": "CM55_0",
      "core_type": "CM55",
      "libraries": [],
      "defines": null,
      "source_dirs": null,
      "include_dirs": null,
      "exclude_files": null
    }
  ],
  "config_files": null,
  "summary": ""
}
```
