################################################################################
# \file Makefile
# \version 1.0
#
# \brief
# Makefile for configuring the Cortex-M55 core project
#
################################################################################
# \copyright
# Copyright 2023-2025, Cypress Semiconductor Corporation (an Infineon company)
# SPDX-License-Identifier: Apache-2.0
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#     http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
################################################################################

include ../common.mk

################################################################################
# Basic Configuration
################################################################################

# Name of application (used to derive name of final linked file).
#
# If APPNAME is edited, ensure to update or regenerate launch
# configurations for your IDE.
APPNAME=proj_cm55

# If set to "true" or "1", display full command-lines when building.
VERBOSE=


################################################################################
# Advanced Configuration
################################################################################

# Enable optional code that is ordinarily disabled by default.
#
# Available components depend on the specific targeted hardware and firmware
# in use. In general, if you have
#
#    COMPONENTS=foo bar
#
# ... then code in directories named COMPONENT_foo and COMPONENT_bar will be
# added to the build
#
COMPONENTS+=

# Like COMPONENTS, but disable optional code that was enabled by default.
DISABLE_COMPONENTS=

CORE=CM55
CORE_NAME=CM55_0

# By default the build system automatically looks in the Makefile's directory
# tree for source code and builds it. The SOURCES variable can be used to
# manually add source code to the build process from a location not searched
# by default, or otherwise not found by the build system.
SOURCES+=

# Like SOURCES, but for include directories. Value should be paths to
# directories (without a leading -I).
INCLUDES+=

# Add additional defines to the build process (without a leading -D).
DEFINES+=CY_RETARGET_IO_CONVERT_LF_TO_CRLF

# Select softfp or hardfp floating point. Default is softfp.
VFP_SELECT+=

# Additional / custom C compiler flags.
#
# NOTE: Includes and defines should use the INCLUDES and DEFINES variable
# above.
CFLAGS+=

# Additional / custom C++ compiler flags.
#
# NOTE: Includes and defines should use the INCLUDES and DEFINES variable
# above.
CXXFLAGS+=

# Additional / custom assembler flags.
#
# NOTE: Includes and defines should use the INCLUDES and DEFINES variable
# above.
ASFLAGS+=

# Additional / custom linker flags.
LDFLAGS+=

# Additional / custom libraries to link in to the application.
LDLIBS+=

# Path to the linker script to use (if empty, use the default linker script).
LINKER_SCRIPT=

# Custom pre-build commands to run.
PREBUILD=

# Custom post-build commands to run.
POSTBUILD=


################################################################################
# Paths
################################################################################

# Relative path to the project directory (default is the Makefile's directory).
#
# This controls where automatic source code discovery looks for code.
CY_APP_PATH=

# Relative path to the shared repo location.
#
# All .mtb files have the format, <URI>#<COMMIT>#<LOCATION>. If the <LOCATION> 
# field begins with $$ASSET_REPO$$, then the repo is deposited in the path 
# specified by the CY_GETLIBS_SHARED_PATH variable. The default location is one 
# directory level above the current app directory. This is used with 
# CY_GETLIBS_SHARED_NAME variable, which specifies the directory name.
CY_GETLIBS_SHARED_PATH=../..

# Directory name of the shared repo location.
#
CY_GETLIBS_SHARED_NAME=mtb_shared

include $(CY_TOOLS_DIR)/make/start.mk
################################################################################
# \file common.mk
# \version 1.0
#
# \brief
# Settings shared across all projects.
#
################################################################################
# \copyright
# Copyright 2023-2025, Cypress Semiconductor Corporation (an Infineon company)
# SPDX-License-Identifier: Apache-2.0
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#     http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
################################################################################

MTB_TYPE=PROJECT

# Target board/hardware (BSP).
# To change the target, it is recommended to use the Library manager
# ('make library-manager' from command line), which will also update 
# Eclipse IDE launch configurations.
TARGET=APP_KIT_PSE84_EVAL_EPC2

# Name of toolchain to use. Options include:
#
# GCC_ARM 	-- GCC is available as part of ModusToolbox Setup program
# ARM     	-- ARM Compiler (must be installed separately)
# IAR     	-- IAR Compiler (must be installed separately)
# LLVM_ARM	-- LLVM Embedded Toolchain (must be installed separately)
#
# See also: CY_COMPILER_PATH below
TOOLCHAIN=GCC_ARM

# Default build configuration. Options include:
#
# Debug -- build with minimal optimizations, focus on debugging.
# Release -- build with full optimizations
# Custom -- build with custom configuration, set the optimization flag in CFLAGS
# 
# If CONFIG is manually edited, ensure to update or regenerate 
# launch configurations for your IDE.
CONFIG=Debug

# Config file for postbuild sign and merge operations.
# NOTE: Check the JSON file for the command parameters
COMBINE_SIGN_JSON?=configs/boot_with_extended_boot.json

include ../common_app.mk
################################################################################
# \file common_app.mk
# \version 1.0
#
# \brief
# Settings shared across the entire application.
#
################################################################################
# \copyright
# Copyright 2023-2025, Cypress Semiconductor Corporation (an Infineon company)
# SPDX-License-Identifier: Apache-2.0
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#     http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
################################################################################

################################################################################
# Paths
################################################################################

# Locate ModusToolbox helper tools folders in default installation
# locations for Windows, Linux, and macOS.
CY_WIN_HOME=$(subst \,/,$(USERPROFILE))
CY_TOOLS_PATHS ?= $(wildcard \
    $(CY_WIN_HOME)/ModusToolbox/tools_* \
    $(HOME)/ModusToolbox/tools_* \
    /Applications/ModusToolbox/tools_*)

# If you install ModusToolbox software in a custom location, add the path to its
# "tools_X.Y" folder (where X and Y are the version number of the tools
# folder).
CY_TOOLS_PATHS+=

# Default to the newest installed tools folder, or the users override (if it's
# found).
CY_TOOLS_DIR=$(lastword $(sort $(wildcard $(CY_TOOLS_PATHS))))

# Absolute path to the compiler's "bin" directory. The variable name depends on 
# the toolchain used for the build. Refer to the ModusToolbox user guide to get 
# the correct variable name for the toolchain used in your build.
#
# The default path depends on the selected TOOLCHAIN and is set in the 
# Make recipe.
CY_COMPILER_GCC_ARM_DIR?=

ifeq ($(CY_TOOLS_DIR),)
$(error Unable to find any of the available CY_TOOLS_PATHS -- $(CY_TOOLS_PATHS))
endif
################################################################################
# \file start.mk
#
# \brief
# This file is used to determine the flow version of the application.
#
################################################################################
# \copyright
# (c) 2022-2025, Cypress Semiconductor Corporation (an Infineon company)
# or an affiliate of Cypress Semiconductor Corporation. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
################################################################################

# empty for MTB 3.0 or earlier
# 1 for MTB 3.1 and later
MTB_TOOLS__INTERFACE_VERSION:=1

ifeq ($(WHICHFILE),true)
$(info Processing $(lastword $(MAKEFILE_LIST)))
endif

ifeq ($(strip $(CY_GETLIBS_SHARED_PATH)),)
FLOW_VERSION:=1
$(error This application uses an older build flow (from version 2.1 or earlier) that is not supported in this version of ModusToolbox. Please view KBA236134 in the Infineon Developer Community for instructions on updating your application)
else
FLOW_VERSION:=2
ifeq ($(strip $(MTB_TYPE)),)
include $(CY_TOOLS_DIR)/make/core_version1/start-v1.mk
else
include $(CY_TOOLS_DIR)/make/core_version3/start-v3.mk
endif
endif
################################################################################
# \file start.mk
#
# \brief
# This file is used to define the tools locations
#
################################################################################
# \copyright
# (c) 2018-2025, Cypress Semiconductor Corporation (an Infineon company)
# or an affiliate of Cypress Semiconductor Corporation. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
################################################################################

ifeq ($(WHICHFILE),true)
$(info Processing $(lastword $(MAKEFILE_LIST)))
endif

# Define the default target as the help
.DEFAULT: help_start

help_start:
	@:
	$(info                                                                                    )
	$(info ==============================================================================     )
	$(info Getting started                                                                    )
	$(info ==============================================================================     )
	$(info 1. Run "make getlibs" to import the dependent libraries.                           )
	$(info 2. Run "make build" to build the application. Use -j for parallel builds.          )
	$(info 3. Run "make program" (or "make qprogram") to program a target board.              )
	$(info                                                                                    )
	$(info For more information, run "make help" to print the help documentation.             )
	$(info Note: The help documentation is available after running Step 1.                    )

include $(CY_TOOLS_DIR)/make/core_version3/tools_utils.mk

################################################################################
# Paths
################################################################################

# enable emergency patch support for MTB 3.0 core apps (mtbquery, etc.).
# mtbquery generates CY_TOOL and CY_OPEN entries for all other tools, but we may 
# need to patch mtbquery itself.
-include $(sort $(wildcard ../mtb-patch-*.mk))

#
# Set the location of top-level Makefile dir.
# $(CURDIR) is broken on some msys system, so use this instead
#
_MTB_TOOLS__MAKEFILE_DIR:=$(dir $(abspath $(firstword $(MAKEFILE_LIST))))

#
# Auto discovery root for the project.
#
ifeq ($(CY_APP_PATH),)
MTB_TOOLS__REL_PRJ_PATH:=.
else
MTB_TOOLS__REL_PRJ_PATH:=$(patsubst %/,%,$(CY_APP_PATH))
endif

MTB_TOOLS__NINJA_SUPPORT:=1 2

#
# Calculate path when it's not secondstage (primarily for Windows cygpath optimization)
#
ifneq ($(CY_SECONDSTAGE),true)
#
# Set the build location. Append app dir if CY_BUILD_LOCATION is defined.
# This need to be defined here so that it can be passed as an ignore directory via get_app_info.
#
ifneq ($(CY_BUILD_LOCATION),)
MTB_TOOLS__OUTPUT_BASE_DIR:=$(call mtb__path_normalize,$(CY_BUILD_LOCATION)/$(notdir $(MTB_TOOLS__REL_PRJ_PATH)))
else
MTB_TOOLS__OUTPUT_BASE_DIR:=$(call mtb__path_normalize,$(MTB_TOOLS__REL_PRJ_PATH))/build
endif
export MTB_TOOLS__OUTPUT_BASE_DIR

# The tools directory
MTB_TOOLS__TOOLS_DIR:=$(call mtb__path_normalize,$(CY_TOOLS_DIR))
export MTB_TOOLS__TOOLS_DIR

# This can't be named MTB_TOOLS__PRJ_DIR since MTB_TOOLS__PRJ_DIR can be set from the enviromnent.
# We need to re-export this from each core in case of multi-core.
# For example if we were doing vscode export from the project, we need this variable to reset the enviromnent.
_MTB_TOOLS__ABS_PRJ_SEARCH_ROOT:=$(call mtb__path_normalize,$(_MTB_TOOLS__MAKEFILE_DIR))
export MTB_TOOLS__PRJ_DIR:=$(_MTB_TOOLS__ABS_PRJ_SEARCH_ROOT)
#
# Windows paths
#
ifeq ($(OS),Windows_NT)
MTB_TOOLS__USER_DIR:=$(subst \,/,$(USERPROFILE))/.modustoolbox
#
# CygWin/MSYS
#
ifneq ($(_MTB_TOOLS__WHICH_CYGPATH),)
# Note: Bash only needs to be set once
ifeq ($(MTB_TOOLS__BASH_CMD),)
MTB_TOOLS__BASH_CMD:="$(shell cygpath -m --absolute /usr/bin/bash)" --norc --noprofile
endif
#
# Other Windows environments (not officially supported)
#
else
MTB_TOOLS__BASH_CMD:=bash --norc --noprofile
endif
#
# Linux and macOS paths
#
else
MTB_TOOLS__USER_DIR:=$(HOME)/.modustoolbox
MTB_TOOLS__BASH_CMD:=bash --norc --noprofile
endif
export MTB_TOOLS__USER_DIR
export MTB_TOOLS__BASH_CMD
endif # ifneq ($(CY_SECONDSTAGE),true)

ifeq ($(CY_GETLIBS_CACHE_PATH),)
MTB_TOOLS__CACHE_DIR:=$(MTB_TOOLS__USER_DIR)/cache
else
MTB_TOOLS__CACHE_DIR:=$(CY_GETLIBS_CACHE_PATH)
endif

ifeq ($(CY_GETLIBS_GLOBAL_PATH),)
MTB_TOOLS__GLOBAL_DIR:=$(MTB_TOOLS__USER_DIR)/global
else
MTB_TOOLS__GLOBAL_DIR:=$(CY_GETLIBS_GLOBAL_PATH)
endif

CY_GETLIBS_DEPS_PATH?=$(MTB_TOOLS__PRJ_DIR)/deps
CY_GETLIBS_PATH?=$(MTB_TOOLS__PRJ_DIR)/libs

MTB_TOOLS__OUTPUT_TARGET_DIR:=$(MTB_TOOLS__OUTPUT_BASE_DIR)/$(TARGET)
MTB_TOOLS__OUTPUT_CONFIG_DIR:=$(MTB_TOOLS__OUTPUT_TARGET_DIR)/$(CONFIG)

MTB_TOOLS_make_BASE?=$(MTB_TOOLS__TOOLS_DIR)/make

ifneq ($(filter get_app_info,$(MAKECMDGOALS)),get_app_info)
include $(MTB_TOOLS_make_BASE)/core_version3/query-v3.mk
endif

ifneq ($(filter get_tool_info,$(MAKECMDGOALS)),get_tool_info)
include $(MTB_TOOLS_make_BASE)/core_version3/startex-v3.mk
endif

.PHONY: help_start
################################################################################
# \file utils.mk
#
# \brief
# This file contains utility functions
#
################################################################################
# \copyright
# (c) 2022-2025, Cypress Semiconductor Corporation (an Infineon company)
# or an affiliate of Cypress Semiconductor Corporation. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
################################################################################


################################################################################
# Utility variables
################################################################################
# This setting allows the command to run in the background.  Some invocations of "make config"
# need to override this behavior (ex. VS Code in Windows)
MTB__JOB_BACKGROUND=&
MTB__EMPTY:=
# Create a make variable that contains a space
MTB__SPACE:=$(MTB__EMPTY) $(MTB__EMPTY)
MTB__OPEN_PAREN=(
MTB__CLOSE_PAREN=)
# Create a make variable that contains a soft tab
MTB__INDENT:=$(MTB__SPACE)$(MTB__SPACE)$(MTB__SPACE)$(MTB__SPACE)
# Create a make variable that contains a hard tab
MTB__TAB:=$(MTB__SPACE)	$(MTB__SPACE)
# Create a make variable that contains a comma
MTB__COMMA:=,
# Create a make variable that contains a line break
define MTB__NEWLINE


endef


# Displays/Hides the build steps
ifneq (,$(filter $(VERBOSE),true 1))
MTB__NOISE:=
MTB__SILENT_OUTPUT:=
else
MTB__NOISE:=@
MTB__SILENT_OUTPUT:= > /dev/null 2>&1
endif


################################################################################
# Environment-specific
################################################################################


# Extract the make version number
MTB__MAKE_MAJOR_VER:=$(word 1, $(subst ., ,$(MAKE_VERSION)))
MTB__MAKE_MINOR_VER:=$(word 2, $(subst ., ,$(MAKE_VERSION)))

# Set the default shell to bash
SHELL=/bin/bash
# TODO delete this variable
# Set the location of the find utility (Avoid conflict with Windows system32/find.exe)
MTB__FIND:=/usr/bin/find

# $(file > ) command is added in gnu make 4.0
# $(file < ) command is added in gnu make 4.2
# if version is older than 4.2, use cat and echo to read/write to file.
ifneq (,$(strip $(filter 3 2 1,$(MTB__MAKE_MAJOR_VER))))
# 1.X, 2.X, 3.X
MTB_FILE_TYPE:=cat
else
ifeq (4,$(MTB__MAKE_MAJOR_VER))
ifneq (,$(strip $(filter 1 0,$(MTB__MAKE_MINOR_VER))))
# 4.0, 4.1.
MTB_FILE_TYPE:=cat
else
# 4.X, X >=2
MTB_FILE_TYPE:=file
endif
else
# X.Y, X > 4
MTB_FILE_TYPE:=file
endif
endif

################################################################################
# Generic Macros
################################################################################

#
# Test for equality
# $(1) : Base path
# $(2) : Directory containing header file
#
mtb__equals=$(if $(and $(findstring $1,$2),$(findstring $2,$1)),TRUE)

ifeq ($(OS),Windows_NT)
ifeq ($(_MTB_TOOLS__WHICH_CYGPATH),)
ifneq (,$(findstring CYGWIN,$(shell uname)))
# TODO rename this
_MTB_TOOLS__WHICH_CYGPATH:=true
export _MTB_TOOLS__WHICH_CYGPATH
endif
endif
endif

#
# convert and normaize path.
#
ifeq ($(OS),Windows_NT)
ifneq ($(_MTB_TOOLS__WHICH_CYGPATH),)
mtb__path_normalize=$(if $(1),$(patsubst %/,%,$(shell cygpath -m --absolute $(subst \,/,$(1)))))
else
mtb__path_normalize=$(patsubst %/,%,$(abspath $(subst \,/,$(1))))
endif
else
mtb__path_normalize=$(patsubst %/,%,$(abspath $(1)))
endif

#
# Get a file based on its file name
# $(1) : A patch system CY_TOOL_... variable that points to the path if it's provided by the tools installer for the current platform.
# $(2) : (Optional/Fallback) Name of executable to look for in PATH if $(1) doesn't exist on the current platform.
#
mtb__get_file_path=$(call mtb__path_normalize,$(strip $(if $(1),$(call _mtb_tools__search_for_file_everywhere,$(1),$(2)),$(call _mtb_tools__search_for_file_enviromnent,$(2)))))
_mtb_tools__search_for_file_everywhere=$(if $(wildcard $(CY_TOOLS_DIR)/$($(1))),$(CY_TOOLS_DIR)/$($(1)),$(call _mtb_tools__search_for_file_enviromnent,$(2)))
_mtb_tools__search_for_file_enviromnent=$(if $(1),$(if $(shell type -P $(1)),$(shell type -P $(1)),),)

#
# Reads from file
# $(1) : File to read
#
ifeq ($(MTB_FILE_TYPE),file)
mtb__file_read=$(file <$1)
else
mtb__file_read=$(shell cat $1)
endif

#
# Writes to file
# $(1) : File to write
# $(2) : String
#
ifeq ($(MTB_FILE_TYPE),file)
mtb__file_write=$(file >$1,$2)
else
mtb__file_write=$(shell echo -e '$(subst ','"'"',$(subst $(MTB__NEWLINE),\n,$(subst \,\\,$2)))' >$1)
endif

#
# Appends to file
# $(1) : File to write
# $(2) : String
#
ifeq ($(MTB_FILE_TYPE),file)
mtb__file_append=$(file >>$1,$2)
else
mtb__file_append=$(shell echo -e '$(subst ','"'"',$(subst $(MTB__NEWLINE),\n,$(subst \,\\,$2)))' >>$1)
endif

#
# Convert to lower case
# $(1) : String to convert to lower case
#
mtb__lower_case=$(subst A,a,$(subst B,b,$(subst C,c,$(subst D,d,$(subst E,e,$(subst F,f,$(subst G,g,$(subst \
		H,h,$(subst I,i,$(subst J,j,$(subst K,k,$(subst L,l,$(subst M,m,$(subst N,n,$(subst O,o,$(subst P,p,$(subst \
		Q,q,$(subst R,r,$(subst S,s,$(subst T,t,$(subst U,u,$(subst V,v,$(subst \
		W,w,$(subst X,x,$(subst Y,y,$(subst Z,z,$1))))))))))))))))))))))))))

#
# Convert to upper case
# $(1) : String to convert to upper case
#
mtb__upper_case=$(subst a,A,$(subst b,B,$(subst c,C,$(subst d,D,$(subst e,E,$(subst f,F,$(subst g,G,$(subst \
		h,H,$(subst i,I,$(subst j,J,$(subst k,K,$(subst l,L,$(subst m,M,$(subst n,N,$(subst o,O,$(subst p,P,$(subst \
		q,Q,$(subst r,R,$(subst s,S,$(subst t,T,$(subst u,U,$(subst v,V,$(subst \
		w,W,$(subst x,X,$(subst y,Y,$(subst z,Z,$1))))))))))))))))))))))))))

#
# Removes trailing slashes of path and then returns the path
# $(1) : Path
#
mtb__get_dir=$(patsubst %/,%,$(dir $(patsubst %/,%,$(filter-out .,$(1)))))

################################################################################
# \file query.mk
#
# \brief
# This file performs mtbquery-related routines
#
################################################################################
# \copyright
# (c) 2022-2025, Cypress Semiconductor Corporation (an Infineon company)
# or an affiliate of Cypress Semiconductor Corporation. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
################################################################################


ifeq ($(WHICHFILE),true)
$(info Processing $(lastword $(MAKEFILE_LIST)))
endif

################################################################################
# Paths
################################################################################

ifeq ($(MTB_TYPE),COMBINED)
_MTB_START_QUERY_TMP_FILE=$(MTB_TOOLS__OUTPUT_BASE_DIR)/mtbquery-info.mk
else ifeq ($(MTB_TYPE),PROJECT)
_MTB_START_QUERY_TMP_FILE=../build/mtbquery-info.mk
else ifeq ($(MTB_TYPE),APPLICATION)
_MTB_START_QUERY_TMP_FILE=build/mtbquery-info.mk
endif

ifneq ($(MTB_TOOLS__TOOLS_DIR),)
CY_TOOL_mtbquery_BASE_ABS?=$(MTB_TOOLS__TOOLS_DIR)/mtbquery
else
CY_TOOL_mtbquery_BASE_ABS?=$(CY_TOOLS_DIR)/mtbquery
endif

ifeq ($(OS),Windows_NT)
CY_TOOL_mtbquery_EXE_ABS?=$(CY_TOOL_mtbquery_BASE_ABS)/mtbquery.exe
else
CY_TOOL_mtbquery_EXE_ABS?=$(CY_TOOL_mtbquery_BASE_ABS)/mtbquery
endif

ifeq ($(MTB_APPLICATION_RECUSIVE),)
_MTB_TOOLS_MAKE_CMDLINE:=$(sort $(foreach var,$(.VARIABLES),$(if $(filter command line,$(origin $(var))),$(var))))
# only if the variable is not one of these will the ignore cache be used
_MTB_TOOLS__QUERY_CACHE_IGNORE_VARS:=CY_MAKE_IDE CY_IDE_TOOLS_DIR CY_IDE_BT_TOOLS_DIR MTB__JOB_BACKGROUND CY_IDE_PRJNAME VERBOSE CY_SECONDSTAGE MTB_APPLICATION_SUBPROJECTS MTB_APPLICATION_NAME MTB_APPLICATION_PROMOTE CY_MAKE_IDE_VERSION MTB_MAKE_ECLIPSE_FORCE_REGENERATE_PROJECT NINJA NINJAFLAGS $(MTB__GAI_IGNORE_EXTRA) MTB__GAI_IGNORE_EXTRA

# Clear the mtbqueryapi cache on the first build stage
ifneq ($(filter-out $(_MTB_TOOLS__QUERY_CACHE_IGNORE_VARS),$(_MTB_TOOLS_MAKE_CMDLINE)),)
export MTB__GAI_CACHE_INVALID=true
endif

# make sure mtbquery exists where we think it's supposed to be.
$(if $(wildcard $(CY_TOOL_mtbquery_EXE_ABS)),,$(error Unable to find mtbquery at $(CY_TOOL_mtbquery_EXE_ABS) -- ABORTING!))

_MTB_START_QUERY_TMP_DIR=$(dir $(_MTB_START_QUERY_TMP_FILE))

_MTB_TOOLS__START_QUERY_CMD:=$(CY_TOOL_mtbquery_EXE_ABS) --alltools @MTB_TOOLS_DIR=$(CY_TOOLS_DIR) > $(_MTB_START_QUERY_TMP_FILE)

# Should only need to generate the file during the first stage. The second stage can the generated file from the firs stage.
ifeq ($(CY_SECONDSTAGE)$(MAKE_RESTARTS),)
$(info Searching installed tools in progress...)
ifneq ($(VERBOSE),)
$(info $(_MTB_TOOLS__START_QUERY_CMD))
endif
_MTB_TOOLS__MTB_QUERY_ERROR_CODE:=$(shell mkdir -p $(_MTB_START_QUERY_TMP_DIR) && $(_MTB_TOOLS__START_QUERY_CMD) > $(_MTB_START_QUERY_TMP_FILE) ; echo $$?)
ifeq (0,$(_MTB_TOOLS__MTB_QUERY_ERROR_CODE))
$(info Searching installed tools complete)
else
$(error Searching installed tools failed with error code: $(_MTB_TOOLS__MTB_QUERY_ERROR_CODE))
endif
endif
endif #ifeq ($(MTB_APPLICATION_RECUSIVE),)

-include $(_MTB_START_QUERY_TMP_FILE)
CY_TOOL_srec_cat_EXE_ABS=/Applications/ModusToolbox/tools_3.6/srecord/bin/srec_cat
CY_TOOL_srec_cmp_EXE_ABS=/Applications/ModusToolbox/tools_3.6/srecord/bin/srec_cmp
CY_TOOL_srec_info_EXE_ABS=/Applications/ModusToolbox/tools_3.6/srecord/bin/srec_info
CY_TOOL_srecord_BASE_ABS=/Applications/ModusToolbox/tools_3.6/srecord
CY_TOOL_library-manager-cli_EXE=library-manager/library-manager-cli
CY_TOOL_library-manager_BASE=library-manager
CY_TOOL_library-manager_EXE=library-manager/library-manager
CY_TOOL_qspi-configurator_BASE=qspi-configurator
CY_TOOL_qspi-configurator_EXE=qspi-configurator/qspi-configurator
CY_TOOL_qspi-configurator-cli_EXE=qspi-configurator/qspi-configurator-cli
CY_TOOL_device-configurator_BASE=device-configurator
CY_TOOL_device-configurator_EXE=device-configurator/device-configurator
CY_TOOL_device-configurator-cli_EXE=device-configurator/device-configurator-cli
CY_TOOL_mtbsearch_BASE_ABS=/Applications/ModusToolbox/tools_3.6/mtbsearch
CY_TOOL_mtbsearch_EXE_ABS=/Applications/ModusToolbox/tools_3.6/mtbsearch/mtbsearch
CY_TOOL_mtbsearch_SEARCH_INTERFACE_VERSION=2
CY_TOOL_capsense-configurator_BASE=capsense-configurator
CY_TOOL_capsense-tuner_BASE=capsense-configurator
CY_TOOL_capsense-configurator_EXE=capsense-configurator/capsense-configurator
CY_TOOL_capsense-tuner_EXE=capsense-configurator/capsense-tuner
CY_TOOL_capsense-configurator-cli_EXE=capsense-configurator/capsense-configurator-cli
CY_TOOL_seglcd-configurator_BASE=seglcd-configurator
CY_TOOL_seglcd-configurator_EXE=seglcd-configurator/seglcd-configurator
CY_TOOL_seglcd-configurator-cli_EXE=seglcd-configurator/seglcd-configurator-cli
CY_TOOL_hardware-config-server_BASE=hardware-config-server
CY_TOOL_hardware-config-server_BASE_ABS=/Applications/ModusToolbox/tools_3.6/hardware-config-server
CY_TOOL_hardware-config-server_EXE=hardware-config-server/hardware-config-server
CY_TOOL_hardware-config-server_EXE_ABS=/Applications/ModusToolbox/tools_3.6/hardware-config-server/hardware-config-server
CY_TOOL_mtbarchive_BASE_ABS=/Applications/ModusToolbox/tools_3.6/mtbarchive
CY_TOOL_mtbarchive_gui_EXE_ABS=/Applications/ModusToolbox/tools_3.6/mtbarchive/mtbarchive-gui
CY_TOOL_mtbarchive_EXE_ABS=/Applications/ModusToolbox/tools_3.6/mtbarchive/mtbarchive
CY_TOOL_signcombinemkgen_BASE_ABS=/Applications/ModusToolbox/tools_3.6/signcombinemkgen
CY_TOOL_signcombinemkgen_EXE_ABS=/Applications/ModusToolbox/tools_3.6/signcombinemkgen/signcombinemkgen
CY_TOOL_signcombinemkgen_SUPPORTED_INTERFACES=1
CY_TOOL_bsp-assistant_BASE_ABS=/Applications/ModusToolbox/tools_3.6/bsp-assistant
CY_TOOL_bsp-assistant_EXE_ABS=/Applications/ModusToolbox/tools_3.6/bsp-assistant/bsp-assistant
CY_TOOL_bsp-assistant-cli_EXE_ABS=/Applications/ModusToolbox/tools_3.6/bsp-assistant/bsp-assistant-cli
CY_TOOL_cymcuelftool_BASE=cymcuelftool-1.0
CY_TOOL_cymcuelftool_BASE_ABS=/Applications/ModusToolbox/tools_3.6/cymcuelftool-1.0
CY_TOOL_cymcuelftool_EXE=cymcuelftool-1.0/bin/cymcuelftool
CY_TOOL_cymcuelftool_EXE_ABS=/Applications/ModusToolbox/tools_3.6/cymcuelftool-1.0/bin/cymcuelftool
CY_TOOL_modus-shell_BASE=modus-shell
CY_TOOL_modus-shell_BASE_ABS=/Applications/ModusToolbox/tools_3.6/modus-shell
CY_TOOL_lcs-manager-cli_BASE_ABS=/Applications/ModusToolbox/tools_3.6/lcs-manager-cli
CY_TOOL_lcs-manager-cli_EXE_ABS=/Applications/ModusToolbox/tools_3.6/lcs-manager-cli/lcs-manager-cli
CY_TOOL_ninja_BASE=ninja
CY_TOOL_ninja_BASE_ABS=/Applications/ModusToolbox/tools_3.6/ninja
CY_TOOL_ninja_EXE=ninja/ninja
CY_TOOL_ninja_EXE_ABS=/Applications/ModusToolbox/tools_3.6/ninja/ninja
CY_TOOL_dashboard_BASE=dashboard
CY_TOOL_dashboard_BASE_ABS=/Applications/ModusToolbox/tools_3.6/dashboard
CY_TOOL_dashboard_EXE=dashboard/dashboard
CY_TOOL_dashboard_EXE_ABS=/Applications/ModusToolbox/tools_3.6/dashboard/dashboard
CY_TOOL_getlibs_BASE_ABS=/Applications/ModusToolbox/tools_3.6/mtbgetlibs
CY_TOOL_getlibs_EXE_ABS=/Applications/ModusToolbox/tools_3.6/mtbgetlibs/mtbgetlibs
CY_TOOL_bt-configurator_BASE=bt-configurator
CY_TOOL_bt-configurator_EXE=bt-configurator/bt-configurator
CY_TOOL_bt-configurator-cli_EXE=bt-configurator/bt-configurator-cli
CY_TOOL_usbdev-configurator_BASE=usbdev-configurator
CY_TOOL_usbdev-configurator_EXE=usbdev-configurator/usbdev-configurator
CY_TOOL_usbdev-configurator-cli_EXE=usbdev-configurator/usbdev-configurator-cli
CY_TOOL_smartio-configurator_BASE=smartio-configurator
CY_TOOL_smartio-configurator_EXE=smartio-configurator/smartio-configurator
CY_TOOL_mtbideexport_BASE_ABS=/Applications/ModusToolbox/tools_3.6/mtbideexport
CY_TOOL_mtbideexport_EXE_ABS=/Applications/ModusToolbox/tools_3.6/mtbideexport/mtbideexport
CY_TOOL_mtbideexport_EXPORT_INTERFACE=3.1
CY_TOOL_mtbideexport_EXPORT_SUPPORTED_INTERFACES=1 2 3 4 5
CY_TOOL_project-creator-cli_EXE=project-creator/project-creator-cli
CY_TOOL_project-creator-cli_EXE_ABS=/Applications/ModusToolbox/tools_3.6/project-creator/project-creator-cli
CY_TOOL_project-creator_BASE=project-creator
CY_TOOL_project-creator_BASE_ABS=/Applications/ModusToolbox/tools_3.6/project-creator
CY_TOOL_project-creator_EXE=project-creator/project-creator
CY_TOOL_project-creator_EXE_ABS=/Applications/ModusToolbox/tools_3.6/project-creator/project-creator
CY_TOOL_dfuh-tool_BASE=dfuh-tool
CY_TOOL_dfuh-tool_BASE_ABS=/Applications/ModusToolbox/tools_3.6/dfuh-tool
CY_TOOL_dfuh-tool_EXE=dfuh-tool/dfuh-tool
CY_TOOL_dfuh-cli_EXE=dfuh-tool/dfuh-cli
CY_TOOL_ez-pd-configurator_BASE=ez-pd-configurator
CY_TOOL_ez-pd-configurator_EXE=ez-pd-configurator/ez-pd-configurator
CY_TOOL_ez-pd-configurator-cli_EXE=ez-pd-configurator/ez-pd-configurator-cli
CY_TOOL_mtb-settings_BASE_ABS=/Applications/ModusToolbox/tools_3.6/mtb-settings
CY_TOOL_mtb-settings_EXE_ABS=/Applications/ModusToolbox/tools_3.6/mtb-settings/mtb-settings
CY_TOOL_mtb-settings-cli_EXE_ABS=/Applications/ModusToolbox/tools_3.6/mtb-settings/mtb-settings-cli
CY_TOOL_mtbninja_BASE_ABS=/Applications/ModusToolbox/tools_3.6/mtbninja
CY_TOOL_mtbninja_EXE_ABS=/Applications/ModusToolbox/tools_3.6/mtbninja/mtbninja
CY_TOOL_mtbninja_SEARCH_INTERFACE_VERSION=2
CY_TOOL_append_to_intel_hex_BASE=airoc-tools/AppendToIntelHex
CY_TOOL_append_to_intel_hex_BASE_ABS=/Applications/ModusToolbox/tools_3.6/airoc-tools/AppendToIntelHex
CY_TOOL_append_to_intel_hex_EXE=airoc-tools/AppendToIntelHex/bin/AppendToIntelHex
CY_TOOL_append_to_intel_hex_EXE_ABS=/Applications/ModusToolbox/tools_3.6/airoc-tools/AppendToIntelHex/bin/AppendToIntelHex
CY_TOOL_cgs_BASE=airoc-tools/cgs
CY_TOOL_cgs_BASE_ABS=/Applications/ModusToolbox/tools_3.6/airoc-tools/cgs
CY_TOOL_cgs_EXE=airoc-tools/cgs/bin/cgs
CY_TOOL_cgs_EXE_ABS=/Applications/ModusToolbox/tools_3.6/airoc-tools/cgs/bin/cgs
CY_TOOL_head_or_tail_BASE=airoc-tools/HeadOrTail
CY_TOOL_head_or_tail_BASE_ABS=/Applications/ModusToolbox/tools_3.6/airoc-tools/HeadOrTail
CY_TOOL_head_or_tail_EXE=airoc-tools/HeadOrTail/bin/HeadOrTail
CY_TOOL_head_or_tail_EXE_ABS=/Applications/ModusToolbox/tools_3.6/airoc-tools/HeadOrTail/bin/HeadOrTail
CY_TOOL_intel_hex_merge_BASE=airoc-tools/IntelHexMerge
CY_TOOL_intel_hex_merge_BASE_ABS=/Applications/ModusToolbox/tools_3.6/airoc-tools/IntelHexMerge
CY_TOOL_intel_hex_merge_EXE=airoc-tools/IntelHexMerge/bin/IntelHexMerge
CY_TOOL_intel_hex_merge_EXE_ABS=/Applications/ModusToolbox/tools_3.6/airoc-tools/IntelHexMerge/bin/IntelHexMerge
CY_TOOL_intel_hex_to_bin_BASE=airoc-tools/IntelHexToBin
CY_TOOL_intel_hex_to_bin_BASE_ABS=/Applications/ModusToolbox/tools_3.6/airoc-tools/IntelHexToBin
CY_TOOL_intel_hex_to_bin_EXE=airoc-tools/IntelHexToBin/bin/IntelHexToBin
CY_TOOL_intel_hex_to_bin_EXE_ABS=/Applications/ModusToolbox/tools_3.6/airoc-tools/IntelHexToBin/bin/IntelHexToBin
CY_TOOL_intel_hex_to_hcd_BASE=airoc-tools/IntelHexToHCD
CY_TOOL_intel_hex_to_hcd_BASE_ABS=/Applications/ModusToolbox/tools_3.6/airoc-tools/IntelHexToHCD
CY_TOOL_intel_hex_to_hcd_EXE=airoc-tools/IntelHexToHCD/bin/IntelHexToHCD
CY_TOOL_intel_hex_to_hcd_EXE_ABS=/Applications/ModusToolbox/tools_3.6/airoc-tools/IntelHexToHCD/bin/IntelHexToHCD
CY_TOOL_shift_intel_hex_BASE=airoc-tools/ShiftIntelHex
CY_TOOL_shift_intel_hex_BASE_ABS=/Applications/ModusToolbox/tools_3.6/airoc-tools/ShiftIntelHex
CY_TOOL_shift_intel_hex_EXE=airoc-tools/ShiftIntelHex/bin/ShiftIntelHex
CY_TOOL_shift_intel_hex_EXE_ABS=/Applications/ModusToolbox/tools_3.6/airoc-tools/ShiftIntelHex/bin/ShiftIntelHex
CY_TOOL_mtblaunch_BASE_ABS=/Applications/ModusToolbox/tools_3.6/mtblaunch
CY_TOOL_mtblaunch_EXE_ABS=/Applications/ModusToolbox/tools_3.6/mtblaunch/mtblaunch
CY_TOOL_lin-configurator_BASE=lin-configurator
CY_TOOL_lin-configurator_EXE=lin-configurator/lin-configurator
CY_TOOL_lin-configurator-cli_EXE=lin-configurator/lin-configurator-cli
CY_TOOL_proxy-helper_BASE=proxy-helper
CY_TOOL_proxy-helper_BASE_ABS=/Applications/ModusToolbox/tools_3.6/proxy-helper
CY_TOOL_proxy-helper_EXE=proxy-helper/proxy-helper
CY_TOOL_proxy-helper_EXE_ABS=/Applications/ModusToolbox/tools_3.6/proxy-helper/proxy-helper
CY_TOOL_secure-policy-configurator_BASE=../../../Users/hdm/Applications/ModusToolbox-Edge-Protect-Security-Suite-1.5/tools/secure-policy-configurator
CY_TOOL_secure-policy-configurator_EXE=../../../Users/hdm/Applications/ModusToolbox-Edge-Protect-Security-Suite-1.5/tools/secure-policy-configurator/secure-policy-configurator
CY_TOOL_edgeprotecttools_BASE=../../../Users/hdm/Applications/ModusToolbox-Edge-Protect-Security-Suite-1.6/tools/edgeprotecttools
CY_TOOL_edgeprotecttools_BASE_ABS=/Users/hdm/Applications/ModusToolbox-Edge-Protect-Security-Suite-1.6/tools/edgeprotecttools
CY_TOOL_edgeprotecttools_EXE=../../../Users/hdm/Applications/ModusToolbox-Edge-Protect-Security-Suite-1.6/tools/edgeprotecttools/bin/edgeprotecttools
CY_TOOL_edgeprotecttools_EXE_ABS=/Users/hdm/Applications/ModusToolbox-Edge-Protect-Security-Suite-1.6/tools/edgeprotecttools/bin/edgeprotecttools
CY_TOOL_edge-protect-configurator_EXE=../../../Users/hdm/Applications/ModusToolbox-Edge-Protect-Security-Suite-1.6/tools/edge-protect-configurator/edge-protect-configurator
CY_TOOL_edge-protect-configurator-cli_EXE=/Users/hdm/Applications/ModusToolbox-Edge-Protect-Security-Suite-1.6/tools/edge-protect-configurator/edge-protect-configurator-cli
CY_TOOL_gcc_BASE=../../mtb-gcc-arm-eabi/14.2.1/gcc
CY_TOOL_gcc_BASE_ABS=/Applications/mtb-gcc-arm-eabi/14.2.1/gcc
CY_TOOL_arm-none-eabi-gcc_EXE=../../mtb-gcc-arm-eabi/14.2.1/gcc/bin/arm-none-eabi-gcc
CY_TOOL_arm-none-eabi-gcc_EXE_ABS=/Applications/mtb-gcc-arm-eabi/14.2.1/gcc/bin/arm-none-eabi-gcc
CY_TOOL_arm-none-eabi-g++_EXE=../../mtb-gcc-arm-eabi/14.2.1/gcc/bin/arm-none-eabi-g++
CY_TOOL_arm-none-eabi-g++_EXE_ABS=/Applications/mtb-gcc-arm-eabi/14.2.1/gcc/bin/arm-none-eabi-g++
CY_TOOL_arm-none-eabi-ar_EXE=../../mtb-gcc-arm-eabi/14.2.1/gcc/bin/arm-none-eabi-ar
CY_TOOL_arm-none-eabi-ar_EXE_ABS=/Applications/mtb-gcc-arm-eabi/14.2.1/gcc/bin/arm-none-eabi-ar
CY_TOOL_arm-none-eabi-gdb_EXE=../../mtb-gcc-arm-eabi/14.2.1/gcc/bin/arm-none-eabi-gdb
CY_TOOL_arm-none-eabi-gdb_EXE_ABS=/Applications/mtb-gcc-arm-eabi/14.2.1/gcc/bin/arm-none-eabi-gdb
CY_TOOL_arm-none-eabi-objcopy_EXE=../../mtb-gcc-arm-eabi/14.2.1/gcc/bin/arm-none-eabi-objcopy
CY_TOOL_arm-none-eabi-objcopy_EXE_ABS=/Applications/mtb-gcc-arm-eabi/14.2.1/gcc/bin/arm-none-eabi-objcopy
CY_TOOL_arm-none-eabi-readelf_EXE=../../mtb-gcc-arm-eabi/14.2.1/gcc/bin/arm-none-eabi-readelf
CY_TOOL_arm-none-eabi-readelf_EXE_ABS=/Applications/mtb-gcc-arm-eabi/14.2.1/gcc/bin/arm-none-eabi-readelf
CY_TOOL_chipload_BASE=../../ModusToolboxProgtools-1.5/chipload
CY_TOOL_chipload_BASE_ABS=/Applications/ModusToolboxProgtools-1.5/chipload
CY_TOOL_chipload_EXE=../../ModusToolboxProgtools-1.5/chipload/bin/ChipLoad
CY_TOOL_chipload_EXE_ABS=/Applications/ModusToolboxProgtools-1.5/chipload/bin/ChipLoad
CY_TOOL_chipload_MINIDRVLAUNCHADDR_SUPPORTED=1
CY_TOOL_det_and_id_BASE=../../ModusToolboxProgtools-1.5/detectandid
CY_TOOL_det_and_id_BASE_ABS=/Applications/ModusToolboxProgtools-1.5/detectandid
CY_TOOL_det_and_id_EXE=../../ModusToolboxProgtools-1.5/detectandid/bin/DetAndId
CY_TOOL_det_and_id_EXE_ABS=/Applications/ModusToolboxProgtools-1.5/detectandid/bin/DetAndId
CY_TOOL_fw-loader_BASE=../../ModusToolboxProgtools-1.5/fw-loader
CY_TOOL_fw-loader_BASE_ABS=/Applications/ModusToolboxProgtools-1.5/fw-loader
CY_TOOL_fw-loader_EXE=../../ModusToolboxProgtools-1.5/fw-loader/bin/fw-loader
CY_TOOL_fw-loader_EXE_ABS=/Applications/ModusToolboxProgtools-1.5/fw-loader/bin/fw-loader
CY_TOOL_kp-firmware_BASE=../../ModusToolboxProgtools-1.5/kp-firmware
CY_TOOL_kp-firmware_BASE_ABS=/Applications/ModusToolboxProgtools-1.5/kp-firmware
CY_TOOL_mbtp_BASE=../../ModusToolboxProgtools-1.5/mbtp
CY_TOOL_mbtp_BASE_ABS=/Applications/ModusToolboxProgtools-1.5/mbtp
CY_TOOL_mbtp_EXE=../../ModusToolboxProgtools-1.5/mbtp/bin/MbtP
CY_TOOL_mbtp_EXE_ABS=/Applications/ModusToolboxProgtools-1.5/mbtp/bin/MbtP
CY_TOOL_mtb-programmer_BASE=../../ModusToolboxProgtools-1.5/mtb-programmer
CY_TOOL_mtb-programmer_BASE_ABS=/Applications/ModusToolboxProgtools-1.5/mtb-programmer
CY_TOOL_mtb-programmer_EXE=../../ModusToolboxProgtools-1.5/mtb-programmer/mtb-programmer
CY_TOOL_mtb-programmer_EXE_ABS=/Applications/ModusToolboxProgtools-1.5/mtb-programmer/mtb-programmer
CY_TOOL_openocd_BASE=../../ModusToolboxProgtools-1.5/openocd
CY_TOOL_openocd_BASE_ABS=/Applications/ModusToolboxProgtools-1.5/openocd
CY_TOOL_openocd_EXE=../../ModusToolboxProgtools-1.5/openocd/bin/openocd
CY_TOOL_openocd_EXE_ABS=/Applications/ModusToolboxProgtools-1.5/openocd/bin/openocd
CY_TOOL_openocd_scripts_SCRIPT=../../ModusToolboxProgtools-1.5/openocd/scripts
CY_TOOL_openocd_scripts_SCRIPT_ABS=/Applications/ModusToolboxProgtools-1.5/openocd/scripts
################################################################################
# \file startex.mk
#
# \brief
# This file is used as the starting point for an application build.
#
################################################################################
# \copyright
# (c) 2018-2025, Cypress Semiconductor Corporation (an Infineon company)
# or an affiliate of Cypress Semiconductor Corporation. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
################################################################################

ifeq ($(WHICHFILE),true)
$(info Processing $(lastword $(MAKEFILE_LIST)))
endif


################################################################################
# PATHS
################################################################################

#
# Include SEARCH variables
#
-include $(CY_GETLIBS_PATH)/mtb.mk

# TODO see IROS 8.2.2
# This must be after mtb.mk is included. This the set of directories that autodiscovery needs to search.
MTB_TOOLS__SEARCH:=$(SEARCH)

# include the BSP makefile
MTB_TOOLS__TARGET_DIR:=$(SEARCH_TARGET_$(TARGET))
-include $(MTB_TOOLS__TARGET_DIR)/bsp.mk
-include $(MTB_TOOLS__TARGET_DIR)/$(TARGET).mk

MTB_TOOLS__CORE_DIR:=$(SEARCH_core-make)
MTB_TOOLS__RECIPE_DIR:=$(firstword $(strip $(CY_BASELIB_PATH) $(RECIPE_DIR)))

################################################################################
# Includes
################################################################################

# Must come after cyignore search
include $(MTB_TOOLS_make_BASE)/core_version3/legacy-v3.mk

# Control build using baselib versus not including the baselib
_MTB_TOOLS__MISSING_BASELIB:=
_MTB_TOOLS__REQUIRE_BASELIB:=true
_MTB_TOOLS__INCLUDE_GETLIBS:=false

ifneq ($(CY_SKIP_RECIPE),)
_MTB_TOOLS__REQUIRE_BASELIB:=false
endif

ifeq ($(wildcard $(MTB_TOOLS__TARGET_DIR)),)
_MTB_TOOLS__MISSING_BASELIB+=bsp
endif

ifeq ($(wildcard $(MTB_TOOLS__CORE_DIR)),)
_MTB_TOOLS__MISSING_BASELIB+=core-make
endif

ifeq ($(wildcard $(MTB_TOOLS__RECIPE_DIR)),)
_MTB_TOOLS__MISSING_BASELIB+=recipe-make
endif

ifeq ($(MAKECMDGOALS),)
_MTB_TOOLS__REQUIRE_BASELIB:=false
endif

# Control build using getlibs versus not including the getlibs
ifeq ($(filter getlibs,$(MAKECMDGOALS)),getlibs)
_MTB_TOOLS__INCLUDE_GETLIBS:=true
_MTB_TOOLS__REQUIRE_BASELIB:=false
# Check that getlibs is called without other targets
ifneq ($(filter-out getlibs,$(MAKECMDGOALS)),)
$(error Detected "$(MAKECMDGOALS)" make targets.\
The getlibs target must not be combined with other make targets)
endif
endif

ifeq ($(filter printlibs,$(MAKECMDGOALS)),printlibs)
_MTB_TOOLS__INCLUDE_GETLIBS:=true
_MTB_TOOLS__REQUIRE_BASELIB:=false
endif

ifeq ($(filter get_app_info,$(MAKECMDGOALS)),get_app_info)
# get_app_info is defined both in tools-make and core-make.
# Only define get_app_info in tools-make if core-make is missing.
ifneq ($(_MTB_TOOLS__MISSING_BASELIB),)
_MTB_TOOLS__REQUIRE_BASELIB:=false

# This is an ordered list of supported version.
_MTB_TOOLS__MAKE_SUPPORTED_MTB_QUERY_VERSIONS=1
# Protocol 2: Supports separate /libs and /deps directories
CY_PROTOCOL:=2
# CY_PROTOCOl=2, MTB_QUERY=1. Supports modustoolbox 3.0
get_app_info:
	@:
	$(info MTB_MPN_LIST=$(MPN_LIST))
	$(info MTB_DEVICE_LIST=$(DEVICE_LIST))
	$(info MTB_DEVICE=$(DEVICE))
	$(info MTB_SEARCH=$(MTB_TOOLS__SEARCH))
	$(info MTB_TOOLCHAIN=$(TOOLCHAIN))
	$(info MTB_TARGET=$(TARGET))
	$(info MTB_CONFIG=$(CONFIG))
	$(info MTB_APP_NAME=$(APPNAME)$(LIBNAME))
	$(info MTB_COMPONENTS=$(MTB_CORE__FULL_COMPONENT_LIST))
	$(info MTB_DISABLED_COMPONENTS=$(DISABLE_COMPONENTS))
	$(info MTB_ADDITIONAL_DEVICES=$(ADDITIONAL_DEVICES))
	$(info MTB_LIBS=$(CY_GETLIBS_PATH))
	$(info MTB_DEPS=$(CY_GETLIBS_DEPS_PATH))
	$(info MTB_WKS_SHARED_NAME=$(CY_GETLIBS_SHARED_NAME))
	$(info MTB_WKS_SHARED_DIR=$(CY_GETLIBS_SHARED_PATH))
	$(info MTB_FLOW_VERSION=$(FLOW_VERSION))
ifneq ($(MTB_QUERY),)
	$(info MTB_QUERY=$(MTB_QUERY))
else
	$(info MTB_QUERY=$(_MTB_TOOLS__MAKE_SUPPORTED_MTB_QUERY_VERSIONS))
endif
	$(info MTB_TOOLS_DIR=$(MTB_TOOLS__TOOLS_DIR))
	$(info MTB_DEVICE_PROGRAM_IDS=)
	$(info MTB_BSP_TOOL_TYPES=)
	$(info MTB_MW_TOOL_TYPES=)
	$(info MTB_IGNORE=$(strip $(CY_IGNORE) $(MTB_TOOLS__OUTPUT_BASE_DIR)))
	$(info MTB_TYPE=$(MTB_TYPE))
	$(info MTB_CORE_TYPE=$(MTB_RECIPE__CORE))
	$(info MTB_CORE_NAME=$(MTB_RECIPE__CORE_NAME))
	$(info MTB_BUILD_SUPPORT=$(MTB_BUILD_SUPPORT))
	$(info MTB_CACHE_DIR=$(MTB_TOOLS__CACHE_DIR))
	$(info MTB_OFFLINE_DIR=$(MTB_TOOLS__OFFLINE_DIR))
	$(info MTB_GLOBAL_DIR=$(MTB_TOOLS__GLOBAL_DIR))
	$(info MTB_APP_PATH=$(MTB_TOOLS__REL_PRJ_PATH))
	$(info MTB_APPINFO_DEPENDENCIES=$(MAKEFILE_LIST))
	$(info MTB_TOOLS_MAKE_VER=3.0)
	$(info MTB_BUILD_LOCATION=$(MTB_TOOLS__OUTPUT_BASE_DIR))
	$(info MTB_SKIP_CODE_GEN=$(SKIP_CODE_GEN))

endif
endif

ifeq ($(_MTB_TOOLS__INCLUDE_GETLIBS),true)
include $(MTB_TOOLS_make_BASE)/core_version3/getlibs-v3.mk
endif

ifeq ($(_MTB_TOOLS__REQUIRE_BASELIB),true)
ifeq ($(_MTB_TOOLS__MISSING_BASELIB),)
include $(MTB_TOOLS__CORE_DIR)/make/core/main.mk
else
$(error Libraries: "$(_MTB_TOOLS__MISSING_BASELIB)" not found. Run "make getlibs" to ensure all required build and code dependencies are present.)
endif
endif

.PHONY: get_app_info
#
# This file is generated by ModusToolbox during the 'make getlibs' operation
# Any edits to this file will be lost the next time the library manager is run or
# the next time 'make getlibs' is run.
#
# List of local libraries


# Path to the current BSP
SEARCH_TARGET_APP_KIT_PSE84_EVAL_EPC2=../bsps/TARGET_APP_KIT_PSE84_EVAL_EPC2

# The search paths for the included middleware
SEARCH_async-transfer=../../mtb_shared/async-transfer/release-v1.1.0
SEARCH_bt-fw-ifx-cyw55500a1=../../mtb_shared/bt-fw-ifx-cyw55500a1/release-v2.2.0
SEARCH_cmsis=../../mtb_shared/cmsis/release-v6.1.0
SEARCH_core-lib=../../mtb_shared/core-lib/release-v1.6.0
SEARCH_core-make=../../mtb_shared/core-make/release-v3.7.0
SEARCH_mtb-dsl-pse8xxgp=../../mtb_shared/mtb-dsl-pse8xxgp/release-v1.1.0
SEARCH_mtb-ipc=../../mtb_shared/mtb-ipc/release-v1.1.0
SEARCH_mtb-srf=../../mtb_shared/mtb-srf/release-v1.1.0
SEARCH_se-rt-services-utils=../../mtb_shared/se-rt-services-utils/release-v1.2.0

# Search libraries added to build
SEARCH_MTB_MK+=$(SEARCH_async-transfer)
SEARCH_MTB_MK+=$(SEARCH_bt-fw-ifx-cyw55500a1)
SEARCH_MTB_MK+=$(SEARCH_cmsis)
SEARCH_MTB_MK+=$(SEARCH_core-lib)
SEARCH_MTB_MK+=$(SEARCH_core-make)
SEARCH_MTB_MK+=$(SEARCH_mtb-dsl-pse8xxgp)
SEARCH_MTB_MK+=$(SEARCH_mtb-ipc)
SEARCH_MTB_MK+=$(SEARCH_mtb-srf)
SEARCH_MTB_MK+=$(SEARCH_se-rt-services-utils)

-include $(CY_INTERNAL_APP_PATH)/importedbsp.mk
COMPONENTS += MW_ASYNC_TRANSFER
COMPONENTS += MW_BT_FW_IFX_CYW55500A1
COMPONENTS += MW_CMSIS
COMPONENTS += MW_CORE_LIB
COMPONENTS += MW_CORE_MAKE
COMPONENTS += MW_MTB_DSL_PSE8XXGP
COMPONENTS += MW_MTB_IPC
COMPONENTS += MW_MTB_SRF
COMPONENTS += MW_SE_RT_SERVICES_UTILS

# Register map file
DEVICE_PSE846GPS2DBZC4A_SVD=$(SEARCH_mtb-dsl-pse8xxgp)/pdl/svd/pse84.svd


#
# generate make targets for the graphical editors that are specific to this project
#

modlibs:
	$(CY_TOOL_mtblaunch_EXE_ABS) --project . --short-name library-manager
.PHONY: modlibs

CY_HELP_modlibs=Launches the Library Manager 2.50 GUI
CY_HELP_modlibs_VERBOSE=Launches the Library Manager 2.50 GUI. Check the Library Manager 2.50 User Guide for more information.
mtb_help_tool_modlibs:
	@:
	$(info $(MTB__SPACE)modlibs             $(CY_HELP_modlibs))

mtb_help_tools_end: mtb_help_tool_modlibs
mtb_help_tool_modlibs: mtb_help_tools_start
.PHONY: mtb_help_tool_modlibs

library-manager:
	$(CY_TOOL_mtblaunch_EXE_ABS) --project . --short-name library-manager
.PHONY: library-manager

CY_HELP_library-manager=Launches the Library Manager 2.50 GUI
CY_HELP_library-manager_VERBOSE=Launches the Library Manager 2.50 GUI. Check the Library Manager 2.50 User Guide for more information.
mtb_help_tool_library-manager:
	@:
	$(info $(MTB__SPACE)library-manager     $(CY_HELP_library-manager))

mtb_help_tools_end: mtb_help_tool_library-manager
mtb_help_tool_library-manager: mtb_help_tools_start
.PHONY: mtb_help_tool_library-manager

qspi-configurator:
	$(CY_TOOL_mtblaunch_EXE_ABS) --project . --short-name qspi-configurator
.PHONY: qspi-configurator

CY_HELP_qspi-configurator=Launches the QSPI Configurator 4.60 GUI for the target's cyqspi file
CY_HELP_qspi-configurator_VERBOSE=Launches the QSPI Configurator 4.60 GUI. Check the QSPI Configurator 4.60 User Guide for more information.
mtb_help_tool_qspi-configurator:
	@:
	$(info $(MTB__SPACE)qspi-configurator   $(CY_HELP_qspi-configurator))

mtb_help_tools_end: mtb_help_tool_qspi-configurator
mtb_help_tool_qspi-configurator: mtb_help_tools_start
.PHONY: mtb_help_tool_qspi-configurator

config:
	$(CY_TOOL_mtblaunch_EXE_ABS) --project . --short-name device-configurator
.PHONY: config

CY_HELP_config=Launches the Device Configurator 5.50 GUI for the target's modus file
CY_HELP_config_VERBOSE=Launches the Device Configurator 5.50 GUI. Check the Device Configurator 5.50 User Guide for more information.
mtb_help_tool_config:
	@:
	$(info $(MTB__SPACE)config              $(CY_HELP_config))

mtb_help_tools_end: mtb_help_tool_config
mtb_help_tool_config: mtb_help_tools_start
.PHONY: mtb_help_tool_config

device-configurator:
	$(CY_TOOL_mtblaunch_EXE_ABS) --project . --short-name device-configurator
.PHONY: device-configurator

CY_HELP_device-configurator=Launches the Device Configurator 5.50 GUI for the target's modus file
CY_HELP_device-configurator_VERBOSE=Launches the Device Configurator 5.50 GUI. Check the Device Configurator 5.50 User Guide for more information.
mtb_help_tool_device-configurator:
	@:
	$(info $(MTB__SPACE)device-configurator $(CY_HELP_device-configurator))

mtb_help_tools_end: mtb_help_tool_device-configurator
mtb_help_tool_device-configurator: mtb_help_tools_start
.PHONY: mtb_help_tool_device-configurator

bsp-assistant:
	$(CY_TOOL_mtblaunch_EXE_ABS) --project . --short-name bsp-assistant
.PHONY: bsp-assistant

CY_HELP_bsp-assistant=Launches the BSP Assistant 1.50 GUI
CY_HELP_bsp-assistant_VERBOSE=Launches the BSP Assistant 1.50 GUI. Check the BSP Assistant 1.50 User Guide for more information.
mtb_help_tool_bsp-assistant:
	@:
	$(info $(MTB__SPACE)bsp-assistant       $(CY_HELP_bsp-assistant))

mtb_help_tools_end: mtb_help_tool_bsp-assistant
mtb_help_tool_bsp-assistant: mtb_help_tools_start
.PHONY: mtb_help_tool_bsp-assistant

config_bt:
	$(CY_TOOL_mtblaunch_EXE_ABS) --project . --short-name bt-configurator
.PHONY: config_bt

CY_HELP_config_bt=Launches the Bluetooth® Configurator 3.40 GUI for the target's cybt file
CY_HELP_config_bt_VERBOSE=Launches the Bluetooth® Configurator 3.40 GUI. Check the Bluetooth® Configurator 3.40 User Guide for more information.
mtb_help_tool_config_bt:
	@:
	$(info $(MTB__SPACE)config_bt           $(CY_HELP_config_bt))

mtb_help_tools_end: mtb_help_tool_config_bt
mtb_help_tool_config_bt: mtb_help_tools_start
.PHONY: mtb_help_tool_config_bt

bt-configurator:
	$(CY_TOOL_mtblaunch_EXE_ABS) --project . --short-name bt-configurator
.PHONY: bt-configurator

CY_HELP_bt-configurator=Launches the Bluetooth® Configurator 3.40 GUI for the target's cybt file
CY_HELP_bt-configurator_VERBOSE=Launches the Bluetooth® Configurator 3.40 GUI. Check the Bluetooth® Configurator 3.40 User Guide for more information.
mtb_help_tool_bt-configurator:
	@:
	$(info $(MTB__SPACE)bt-configurator     $(CY_HELP_bt-configurator))

mtb_help_tools_end: mtb_help_tool_bt-configurator
mtb_help_tool_bt-configurator: mtb_help_tools_start
.PHONY: mtb_help_tool_bt-configurator

smartio-configurator:
	$(CY_TOOL_mtblaunch_EXE_ABS) --project . --short-name smartio-configurator
.PHONY: smartio-configurator

CY_HELP_smartio-configurator=Launches the Smart I/O Configurator 4.50 GUI for the target's modus file
CY_HELP_smartio-configurator_VERBOSE=Launches the Smart I/O Configurator 4.50 GUI. Check the Smart I/O Configurator 4.50 User Guide for more information.
mtb_help_tool_smartio-configurator:
	@:
	$(info $(MTB__SPACE)smartio-configurator $(CY_HELP_smartio-configurator))

mtb_help_tools_end: mtb_help_tool_smartio-configurator
mtb_help_tool_smartio-configurator: mtb_help_tools_start
.PHONY: mtb_help_tool_smartio-configurator

edge-protect-configurator:
	$(CY_TOOL_mtblaunch_EXE_ABS) --project . --short-name edge-protect-configurator
.PHONY: edge-protect-configurator

CY_HELP_edge-protect-configurator=Launches the Edge Protect Configurator 1.20 GUI for the target's edgeprotect file
CY_HELP_edge-protect-configurator_VERBOSE=Launches the Edge Protect Configurator 1.20 GUI. Check the Edge Protect Configurator 1.20 User Guide for more information.
mtb_help_tool_edge-protect-configurator:
	@:
	$(info $(MTB__SPACE)edge-protect-configurator $(CY_HELP_edge-protect-configurator))

mtb_help_tools_end: mtb_help_tool_edge-protect-configurator
mtb_help_tool_edge-protect-configurator: mtb_help_tools_start
.PHONY: mtb_help_tool_edge-protect-configurator

.PHONY: mtb_help_tools_start mtb_help_tools_end
################################################################################
# \file bsp.mk
#
# \brief
# Define the BSP for the KIT_PSE84_EVAL_EPC2
#
################################################################################
# \copyright
# Copyright 2023-2025 Cypress Semiconductor Corporation (an Infineon company) or
# an affiliate of Cypress Semiconductor Corporation
#
# SPDX-License-Identifier: Apache-2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
################################################################################

ifeq ($(WHICHFILE),true)
$(info Processing $(lastword $(MAKEFILE_LIST)))
endif

# Any additional components to apply when using this board.
BSP_COMPONENTS:=HCI-UART WIFI_INTERFACE_SDIO SM CYW55513_MOD_PSE84_SOM wlbga_iPA_sLNA_ANT0_LHL_XTAL_IN

# Any additional defines to apply when using this board.
BSP_DEFINES+=CY_WIFI_COUNTRY='WHD_COUNTRY_UNITED_STATES'
BSP_DEFINES+=CYBSP_WIFI_WL_HOSTWAKE_DRIVE_MODE=MTB_HAL_GPIO_DRIVE_OPENDRAINDRIVESLOW
BSP_DEFINES+=CYBSP_WIFI_WL_HOSTWAKE_INIT_STATE=WHD_TRUE
BSP_DEFINES+=CYBSP_MCUBOOT_HEADER_SIZE=0x400

# Path to the flash loaders to patch for this board
CY_QSPI_FLM_DIR?=$(MTB_TOOLS__TARGET_DIR)/config/FlashLoaders/

# Path to the patched flash loaders for this board
CY_QSPI_FLM_DIR_OUTPUT?=$(MTB_TOOLS__TARGET_DIR)/config/GeneratedSource/

APPTYPE?=flash

CORE?=CM33
ifeq ($(CORE), CM33)
# Default nsc_veneer file - if no NSC functions are defined in the application
# the linking will fail specifying that no symbols were found. In those cases
# simply remove the NSC_VENEER specification or set to the empty string in the
# application makefile
NSC_VENEER?=../proj_cm33_s/nsc_veneer.o
VCORE_ATTRS?=NON_SECURE
else
VCORE_ATTRS?=
endif

ifneq (,$(filter $(TOOLCHAIN),GCC_ARM LLVM_ARM))
# To pick up pse84_common.ld
LDFLAGS += -Xlinker -L $(MTB_TOOLS__TARGET_DIR)/COMPONENT_CM33/TOOLCHAIN_$(TOOLCHAIN)
LDFLAGS += -Xlinker -L $(MTB_TOOLS__TARGET_DIR)/config/GeneratedSource
else ifeq ($(TOOLCHAIN),ARM)
LDFLAGS += --undefined=__scatterload_copy
endif

# Specify the path to the linker script to use
ifneq (,$(filter $(TOOLCHAIN),GCC_ARM LLVM_ARM))
    BSP_LINKER_SCRIPT_EXT:=ld
else ifeq ($(TOOLCHAIN),ARM)
    BSP_LINKER_SCRIPT_EXT:=sct
else ifeq ($(TOOLCHAIN),IAR)
    BSP_LINKER_SCRIPT_EXT:=icf
endif

ifeq ($(CORE), CM33)

ifeq ($(VCORE_ATTRS),NON_SECURE)
MTB_BSP__LINKER_SCRIPT:=$(MTB_TOOLS__TARGET_DIR)/COMPONENT_$(CORE)/TOOLCHAIN_$(TOOLCHAIN)/pse84_ns_cm33.$(BSP_LINKER_SCRIPT_EXT)
COMPONENTS+=NON_SECURE_DEVICE
else
MTB_BSP__LINKER_SCRIPT:=$(MTB_TOOLS__TARGET_DIR)/COMPONENT_$(CORE)/TOOLCHAIN_$(TOOLCHAIN)/pse84_s_cm33.$(BSP_LINKER_SCRIPT_EXT)
COMPONENTS+=SECURE_DRIVERS SECURE_DEVICE
endif

else
MTB_BSP__LINKER_SCRIPT:=$(MTB_TOOLS__TARGET_DIR)/COMPONENT_$(CORE)/TOOLCHAIN_$(TOOLCHAIN)/pse84_ns_cm55.$(BSP_LINKER_SCRIPT_EXT)
COMPONENTS+=NON_SECURE_DEVICE
endif

#Work around for H1 Hosted mode
DISABLE_COMPONENTS+=CAT5

################################################################################
# ALL ITEMS BELOW THIS POINT ARE AUTO GENERATED BY THE BSP ASSISTANT TOOL.
# DO NOT MODIFY DIRECTLY. CHANGES SHOULD BE MADE THROUGH THE BSP ASSISTANT.
################################################################################

# Board device selection. MPN_LIST tracks what was selected in the BSP Assistant
# All other variables are derived by BSP Assistant based on the MPN_LIST.
MPN_LIST:=PSE846GPS2DBZC4A CYW55513IUBG
DEVICE:=PSE846GPS2DBZC4A
ADDITIONAL_DEVICES:=CYW55513IUBG
BSP_DEVICE_SUPPORT_LIB:=mtb-dsl-pse8xxgp
DEVICE_COMPONENTS:=55500 55500A1 PSE84
DEVICE_CYW55513IUBG_CORES:=CORE_NAME_CM33_0
DEVICE_CYW55513IUBG_DIE:=55500A1
DEVICE_CYW55513IUBG_FLASH_KB:=0
DEVICE_CYW55513IUBG_IPBLOCKS:=43XXX_BT 43XXX_BT_V1 43XXX_COEX 43XXX_COEX_V1 43XXX_WIFI 43XXX_WIFI_V1 55500A0_IOSS 55500A0_IOSS_V1 55500A0_SRSS 55500A0_SRSS_V1 BT_WIFI_ANA_PMU BT_WIFI_ANA_PMU_V1 BT_WIFI_AUDIO BT_WIFI_AUDIO_V1 BT_WIFI_DMIC BT_WIFI_DMIC_V1 BT_WIFI_I2C BT_WIFI_I2C_V1 BT_WIFI_SPI BT_WIFI_SPI_V1 BT_WIFI_UART BT_WIFI_UART_V1 H28ADCCOMP H28ADCCOMP_V1 MXSCB_VER2_S40E MXSCB_VER2_S40E_V2 MXSMIF_VER3_S40E MXSMIF_VER3_S40E_V3 MXTCPWM_VER2 MXTCPWM_VER2_V2 MXTDM MXTDM_V2
DEVICE_CYW55513IUBG_SRAM_KB:=768
DEVICE_DEFINES:=BLHS_SUPPORT TRXV5
DEVICE_LIST:=PSE846GPS2DBZC4A CYW55513IUBG
DEVICE_PSE846GPS2DBZC4A_CORES:=CORE_NAME_CM33_0 CORE_NAME_CM55_0
DEVICE_PSE846GPS2DBZC4A_DIE:=EXPLORER
DEVICE_PSE846GPS2DBZC4A_FEATURES:=CM33_0_CMSE_PRESENT CM33_0_DSP_PRESENT CM33_0_FPU_PRESENT CM55_0_DSP_PRESENT CM55_0_FPU_PRESENT CM55_0_MVE_PRESENT EPC2
DEVICE_PSE846GPS2DBZC4A_FLASH_KB:=0
DEVICE_PSE846GPS2DBZC4A_IPBLOCKS:=M0SECCPUSS M0SECCPUSS_V2 M33SYSCPUSS M33SYSCPUSS_V2 M55APPCPUSS M55APPCPUSS_V1 MXCM33 MXCM33_V2 MXCM55 MXCM55_V1 MXCRYPTO MXCRYPTO_V2 MXDEBUG600 MXDEBUG600_V1 MXDFT MXDFT_V3 MXDW MXDW_V1 MXETH MXETH_V3 MXFAULT MXFAULT_V1 MXI3C MXI3C_V1 MXIPC MXIPC_V1 MXNNLITE MXNNLITE_V2 MXPDM MXPDM_V1 MXS22GFXSS MXS22GFXSS_V1 MXS22IOSS MXS22IOSS_V1 MXS22LPCOMP MXS22LPCOMP_V1 MXS22LPPASS MXS22LPPASS_V1 MXS22RRAMC MXS22RRAMC_V1 MXS22SCB MXS22SCB_V1 MXS22SRSS MXS22SRSS_V1 MXS22USBHS MXS22USBHS_V1 MXSAXIDMAC MXSAXIDMAC_V1 MXSDHC MXSDHC_V2 MXSMIF MXSMIF_V6 MXSOCMEM MXSOCMEM_V1 MXSPERI MXSPERI_V2 MXSRAMC MXSRAMC_V2 MXTCPWM_VER2 MXTCPWM_VER2_V2 MXTDM MXTDM_V3 MXTTCANFD MXTTCANFD_V4 MXU55 MXU55_V1
DEVICE_PSE846GPS2DBZC4A_RRAM_KB:=512
DEVICE_PSE846GPS2DBZC4A_SRAM_KB:=1024
DEVICE_TOOL_IDS:=audio-fe-configurator bsp-assistant bt-configurator deepcraftmodelconverter deepcraftstudio device-configurator dfuh-tool edge-protect-configurator library-manager ml-configurator project-creator qspi-configurator smartio-configurator
RECIPE_DIR:=$(SEARCH_mtb-dsl-pse8xxgp)/make
################################################################################
# \file checks.mk
#
# \brief
# This file performs environment, app and bwc checks
#
################################################################################
# \copyright
# (c) 2018-2025, Cypress Semiconductor Corporation (an Infineon company)
# or an affiliate of Cypress Semiconductor Corporation. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
################################################################################

ifeq ($(WHICHFILE),true)
$(info Processing $(lastword $(MAKEFILE_LIST)))
endif

################################################################################
# Tools/toolchains definition (legacy support)
################################################################################

#
# Tool locations
#
CY_COMPILER_DEFAULT_DIR:=$(CY_TOOL_gcc_BASE_ABS)
CY_COMPILER_DIR?=$(eval $(call CY_MACRO_DEPRECATED_TOOLS))$(CY_COMPILER_DEFAULT_DIR)

mtb_path_normalize=$(mtb__path_normalize)

################################################################################
# Legacy CY Names
################################################################################

# character variables
CY_EMPTY:=$(MTB__EMPTY)
CY_SPACE:=$(MTB__SPACE)
CY_INDENT:=$(MTB__INDENT)
CY_TAB:=$(MTB__TAB)
CY_NEWLINE:=$(MTB__NEWLINE)
CY_COMMA:=$(MTB__COMMA)
CY_NEWLINE_MARKER:=$(MTB__NEWLINE_MARKER)

# command variables
CY_NOISE:=$(MTB__NOISE)
CY_CMD_TERM:=$(MTB__SILENT_OUTPUT)
CY_CONFIG_JOB_CONTROL:=$(MTB__JOB_BACKGROUND)
CY_FIND:=$(MTB__FIND)
CY_BASH:=$(MTB_TOOLS__BASH_CMD)

# file ops functions
CY_MACRO_FILE_READ=$(mtb__file_read)
CY_MACRO_FILE_WRITE=$(mtb__file_write)
CY_GET_FILE_PATH=$(mtb__get_file_path)

# string functons
CY_MACRO_EQUALITY=$(mtb__equals)
CY_MACRO_LC=$(mtb__lower_case)
CY_MACRO_UC=$(mtb__upper_case)

# paths
CY_INTERNAL_BUILD_LOC:=$(MTB_TOOLS__OUTPUT_BASE_DIR)
CY_INTERNAL_APPLOC:=$(MTB_TOOLS__PRJ_DIR)
CY_INTERNAL_TOOLS:=$(MTB_TOOLS__TOOLS_DIR)
################################################################################
# \file main.mk
#
# \brief
# Defines the public facing build targets common to all recipes and includes
# the core makefiles.
#
################################################################################
# \copyright
# (c) 2018-2025, Cypress Semiconductor Corporation (an Infineon company) or
# an affiliate of Cypress Semiconductor Corporation. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
################################################################################

ifeq ($(WHICHFILE),true)
$(info Processing $(lastword $(MAKEFILE_LIST)))
endif

################################################################################
# Application support
################################################################################

ifeq ($(MTB_TYPE),PROJECT)
_MTB_RECIPE__APPLICATION_RELATIVE=..
ifeq ($(MTB_APPLICATION_SUBPROJECTS),)
ifneq ($(filter $(MAKECMDGOALS),all build qbuild program qprogram clean eclipse vscode),)
# We are directly calling make target from the project that belongs to multi-core
# application - pass this target to the application level
MTB_CORE__APPLICATION_BOOTSTRAP=true
endif
endif
else
_MTB_RECIPE__APPLICATION_RELATIVE=.
endif

clean_proj:
	rm -rf $(MTB_TOOLS__OUTPUT_BASE_DIR)

# Backwards-compatibility variables
include $(MTB_TOOLS__CORE_DIR)/make/core/bwc.mk

################################################################################
# User-facing make targets
################################################################################

all: build

getlibs:

prebuild:

build build_proj qbuild qbuild_proj:

program program_proj qprogram qprogram_proj:

debug qdebug:

clean clean_proj:

# Note: Define the help target in BSP/recipe for custom help
help:

eclipse vscode ewarm ewarm8 uvision uvision5:

check get_app_info get_env_info printlibs check_toolchain:

memcalc application_postbuild mtb_conditional_postbuild project_postbuild:

ifneq (,$(MTB_IDE__TARG_FILE))
$(call mtb__path_normalize,$(MTB_IDE__TARG_FILE)):
endif

include $(MTB_TOOLS__CORE_DIR)/make/core/application_bootstrap.mk

FORCE:
_MTB_CORE__SKIP_BUILD_MK_FILES:=
ifeq ($(MTB_CORE__APPLICATION_BOOTSTRAP),)

_MTB_CORE__QBUILD_MK_FILE=$(MTB_TOOLS__OUTPUT_CONFIG_DIR)/cyqbuild.mk
_MTB_CORE__NINJA_FILE=$(MTB_TOOLS__OUTPUT_CONFIG_DIR)/$(APPNAME).ninja
ifneq ($(filter $(MAKECMDGOALS),all build build_proj app program program_proj debug erase attach eclipse vscode ewarm8 uvision5 ewarm uvision),)
$(_MTB_CORE__NINJA_FILE): FORCE prebuild
ifeq ($(MAKE_RESTARTS),)
$(_MTB_CORE__QBUILD_MK_FILE): FORCE prebuild
endif
endif

# optimization if command is not one of these (i.e. clean) then don't load files like build.mk and program.mk
ifeq ($(filter $(MAKECMDGOALS),all build build_proj qbuild qbuild_proj app program program_proj qprogram qprogram_proj debug qdebug erase attach eclipse vscode ewarm8 uvision5 ewarm uvision codegen ide_postbuild),)
_MTB_CORE__SKIP_BUILD_MK_FILES:=1
endif

$(_MTB_CORE__QBUILD_MK_FILE) $(_MTB_CORE__NINJA_FILE):| start_build

##########################
# Include make files
##########################

#
# Include utilities used by all make files
#
include $(MTB_TOOLS__CORE_DIR)/make/core/core_utils.mk

include $(MTB_TOOLS__RECIPE_DIR)/make/recipe/core_selection.mk

# The GCC_ARM readelf is used by all toolchain build for memory calculation. So always include GCC_ARM toolchain.
-include $(MTB_TOOLS__RECIPE_DIR)/make/toolchains/GCC_ARM.mk
ifneq ($(TOOLCHAIN),GCC_ARM)
include $(MTB_TOOLS__RECIPE_DIR)/make/toolchains/$(TOOLCHAIN).mk
endif

include $(MTB_TOOLS__RECIPE_DIR)/make/recipe/recipe_toolchain_file_types.mk

include $(MTB_TOOLS__RECIPE_DIR)/make/recipe/defines.mk

include $(MTB_TOOLS__RECIPE_DIR)/make/recipe/recipe_setup.mk

_MTB_CORE__LIB_MK=$(wildcard $(foreach dir,$(SEARCH_MTB_MK),$(dir)/library.mk))
-include $(_MTB_CORE__LIB_MK)

ifeq ($(MTB_LIBRARY__SKIP_LOAD_MAIN_MK),)

#
# Configurator-related routines
#
include $(MTB_TOOLS__CORE_DIR)/make/core/config.mk

#
# Export interface version set up for IDE file generation
#
_MTB_CORE__EXPORT_SUPPORTED_INTERFACES:=1 2 3 4 5
_MTB_CORE__ALL_SUPPORTED_EXPORT_VERSION:=$(filter $(filter $(_MTB_CORE__EXPORT_SUPPORTED_INTERFACES),$(CY_TOOL_mtbideexport_EXPORT_SUPPORTED_INTERFACES)),$(MTB_RECIPE__EXPORT_INTERFACES))

ifneq ($(_MTB_CORE__ALL_SUPPORTED_EXPORT_VERSION),)
_MTB_CORE__EXPORT_INTERFACE_VERSION:=$(lastword $(_MTB_CORE__ALL_SUPPORTED_EXPORT_VERSION))
else
_MTB_CORE__EXPORT_INTERFACE_VERSION:=1
ifeq ($(CY_TOOL_mtbideexport_EXPORT_INTERFACE),3.1)
ifeq ($(MTB_RECIPE__INTERFACE_VERSION),2)
_MTB_CORE__EXPORT_INTERFACE_VERSION:=2
endif #($(MTB_RECIPE__INTERFACE_VERSION),2)
ifeq ($(filter 2,$(MTB_RECIPE__EXPORT_INTERFACES)),2)
_MTB_CORE__EXPORT_INTERFACE_VERSION:=2
endif #($(filter 2,$(MTB_RECIPE__EXPORT_INTERFACES)),2)
endif #($(CY_TOOL_mtbideexport_EXPORT_INTERFACE),3.1)
endif #($(_MTB_CORE__ALL_SUPPORTED_EXPORT_VERSION),)

ifeq ($(filter $(MAKECMDGOALS),get_app_info getlibs),)
ifeq ($(MTB_RECIPE__NINJA_SUPPORT),)
$(error $(MTB__NEWLINE)$(MTB__NEWLINE)Error: The current version of core-make is incompatible with the current version of recipe-make.\
$(MTB__NEWLINE)See https://community.infineon.com/t5/ModusToolbox/ModusToolbox-incompatible-core-make-version-error-message/td-p/918743 for more information.$(MTB__NEWLINE)$(MTB__NEWLINE))
endif
endif
# Set ninja as default if all assets support a matching version
_MTB_CORE__NINJA_SUPPORT:=1 2
_MTB_CORE__NINJA_VERSIONS_SUPPORTED:=$(filter $(filter $(MTB_RECIPE__NINJA_SUPPORT),$(_MTB_CORE__NINJA_SUPPORT)),$(MTB_TOOLS__NINJA_SUPPORT))
NINJA?=$(_MTB_CORE__NINJA_VERSIONS_SUPPORTED)

#
# Targets that require auto-discovery
#
ifeq ($(NINJA),)
_MTB_CORE__AUTO_DISCOVERY_FILE:=$(_MTB_CORE__QBUILD_MK_FILE)
else
_MTB_CORE__AUTO_DISCOVERY_FILE:=$(_MTB_CORE__NINJA_FILE)
endif
build build_proj qbuild qbuild_proj app program program_proj: $(_MTB_CORE__AUTO_DISCOVERY_FILE)

################################################################################
# Include make files continued only for first build stage
################################################################################

# Check that there's only 1 version of tools and inform the user if there is not.
ifneq ($(sort $(notdir $(wildcard $(CY_TOOLS_PATHS)))),$(notdir $(CY_TOOLS_DIR)))
$(info INFO: Multiple tools versions were found in "$(sort $(CY_TOOLS_PATHS))".\
				This build is currently using "$(CY_TOOLS_DIR)".\
				Check that this is the correct version that should be used in this build.\
				To stop seeing this message, set the CY_TOOLS_PATHS environment variable to the location of\
				the tools directory. This can be done either as an environment variable or set in the application Makefile.)
endif

#
# Help documentation
#
include $(MTB_TOOLS__CORE_DIR)/make/core/help.mk

include $(MTB_TOOLS__CORE_DIR)/make/core/prebuild.mk
include $(MTB_TOOLS__RECIPE_DIR)/make/recipe/recipe.mk

#
# Device transtion related targets
#
include $(MTB_TOOLS__CORE_DIR)/make/core/transition.mk

##########################
# Environment check
##########################

#
# Toolchain compatibility check
#
check_toolchain:
	$(if $(filter $(TOOLCHAIN),$(MTB_SUPPORTED_TOOLCHAINS) $(CY_SUPPORTED_TOOLCHAINS)),\
	$(info Toolchain validation: PASS),\
	$(error Toolchain validation: FAIL. The TOOLCHAIN=$(TOOLCHAIN) value is not supported. \
					Supported TOOLCHAIN values are: \
					$(sort $(MTB_SUPPORTED_TOOLCHAINS) $(CY_SUPPORTED_TOOLCHAINS))))

ifeq ($(CY_PYTHON_REQUIREMENT),true)
ifeq ($(CY_PYTHON_PATH),)

ifeq ($(OS),Windows_NT)
#
# CygWin/MSYS
#

#
# On Windows, when using windows store python, cygwin or msys are not
# able to run the python executable downloaded from windows store. So,
# we run python from command prompt (in cygwin/msys) by prepending
# cmd /c.
# Do not remove the space at the end of the following variable assignment
#
CY_PYTHON_FROM_CMD=cmd /c 

#
# Other Windows environments
#
else
CY_PYTHON_FROM_CMD=
endif

# Look for python install in the cypress tools directory
ifeq ($(wildcard $(CY_TOOL_python_EXE_ABS)),)
CY_PYTHON_SEARCH_PATH=NotFoundError
else
CY_PYTHON_SEARCH_PATH=$(CY_TOOL_python_EXE_ABS)
endif

#
# Check for python 3 intallation in the user's PATH
#   python - Mapped python3 to python
#   python3 - Standard python3
#   py -3 - Windows python installer from python.org
#
ifeq ($(CY_PYTHON_SEARCH_PATH),NotFoundError)
CY_PYTHON_SEARCH_PATH:=$(shell \
	if [[ $$($(CY_PYTHON_FROM_CMD)python --version 2>&1) == "Python 3"* ]]; then\
		echo $(MTB_TOOLS__CORE_DIR)/make/scripts/python.bash;\
	elif [[ $$($(CY_PYTHON_FROM_CMD)python3 --version 2>&1) == "Python 3"* ]]; then\
		echo $(MTB_TOOLS__CORE_DIR)/make/scripts/python3.bash;\
	elif [[ $$(py -3 --version 2>&1) == "Python 3"* ]]; then\
		echo $(MTB_TOOLS__CORE_DIR)/make/scripts/py.bash;\
	else\
		echo NotFoundError;\
	fi)
endif

ifeq ($(CY_PYTHON_SEARCH_PATH),NotFoundError)
$(info )
$(info Python 3 was not found in the user's PATH and it was not explicitly defined in the CY_PYTHON_PATH variable.\
This target requires a python 3 installation. You can obtain python 3 from "https://www.python.org" or you may\
obtain it using the following alternate methods.$(MTB_NEWLINE)\
$(MTB_NEWLINE)\
Windows: Windows Store$(MTB_NEWLINE)\
macOS: brew install python3 $(MTB_NEWLINE)\
Linux (Debian/Ubuntu): sudo apt-get install python3 $(MTB_NEWLINE)\
)
$(call mtb__error,)
endif

export CY_PYTHON_PATH=$(CY_PYTHON_SEARCH_PATH)

# User specified python path
else

ifeq ($(shell [[ $$($(CY_PYTHON_FROM_CMD)$(CY_PYTHON_PATH) --version 2>&1) == "Python 3"* ]] && { echo true; } || { echo false; }),false)
$(info The path "$(CY_PYTHON_PATH)" is either an invalid path or contains an incorrect version of python.$(MTB_NEWLINE)\
Please provide the path to the python 3 executable. For example, "usr/bin/python3".$(MTB_NEWLINE) )
$(call mtb__error,)
endif

endif # ifeq ($(CY_PYTHON_PATH),)
endif # ifeq ($(CY_PYTHON_REQUIREMENT),true)

start_build: check_recipe check_toolchain 
	@:
	$(info Initializing build: $(APPNAME)$(LIBNAME) $(CONFIG) $(TARGET) $(TOOLCHAIN))

check_recipe: check_toolchain
ifeq ($(wildcard $(MTB_TOOLS__RECIPE_DIR)),)
	$(info )
	$(call mtb__error,Cannot find recipe-make. Run "make getlibs" and/or check\
	the location is correct in the CY_BASELIB_PATH variable)
endif

################################################################################
# Include make files continued for second build stage
################################################################################

##########################
# User input check
##########################

ifeq ($(_MTB_CORE__SKIP_BUILD_MK_FILES),)

ifneq ($(APPNAME),)
ifneq ($(LIBNAME),)
$(call mtb__error,An application cannot define both APPNAME and LIBNAME. Define one or the other)
endif
endif
ifneq ($(filter -I%,$(INCLUDES)),)
$(call mtb__error,INCLUDES must be directories without -I prepended)
endif
ifneq ($(filter -D%,$(DEFINES)),)
$(call mtb__error,DEFINES must be specified without -D prepended)
endif
ifneq ($(filter -I%,$(CFLAGS)),)
$(call mtb__error,Include paths must be specified in the INCLUDES variable instead\
of directly in CFLAGS. These must be directories without -I prepended)
endif
ifneq ($(filter -D%,$(CFLAGS)),)
$(call mtb__error,Defines must be specified in the DEFINES variable instead\
of directly in CFLAGS. These must be specified without -D prepended)
endif
ifneq ($(filter -I%,$(CXXFLAGS)),)
$(call mtb__error,Include paths must be specified in the INCLUDES variable instead\
of directly in CXXFLAGS. These must be directories without -I prepended)
endif
ifneq ($(filter -D%,$(CXXFLAGS)),)
$(call mtb__error,Defines must be specified in the DEFINES variable instead\
of directly in CXXFLAGS. These must be specified without -D prepended)
endif
ifneq ($(filter -I%,$(ASFLAGS)),)
$(call mtb__error,Include paths must be specified in the INCLUDES variable instead\
of directly in ASFLAGS. These must be directories without -I prepended)
endif
ifneq ($(filter -D%,$(ASFLAGS)),)
$(call mtb__error,Defines must be specified in the DEFINES variable instead\
of directly in ASFLAGS. These must be specified without -D prepended)
endif

##########################
# Search and build
##########################
#
# Build-related routines
#
_MTB_CORE__LOAD_QBUILD_MK_FILE:=

ifeq ($(NINJA),)
_MTB_CORE__LOAD_QBUILD_MK_FILE:=1
endif

# IDE export will use old auto-discovery if unless new mtbninja can also generate the qbuild.mk file.
ifneq ($(filter $(MAKECMDGOALS),eclipse vscode ewarm8 uvision5 ewarm uvision),)
_MTB_CORE__LOAD_QBUILD_MK_FILE:=1
endif
ifneq ($(CY_SIMULATOR_GEN_AUTO),)
_MTB_CORE__LOAD_QBUILD_MK_FILE:=1
endif

ifneq ($(ASSET_ARCHIVES),)
_MTB_CORE__ASSET_ARCHIVES=--archive-assets
else
_MTB_CORE__ASSET_ARCHIVES=
endif

ifneq ($(_MTB_CORE__LOAD_QBUILD_MK_FILE),)
include $(_MTB_CORE__QBUILD_MK_FILE)
ifneq ($(MTB_GENERATE_DEPENDENCIES),)
include $(MTB_TOOLS__CORE_DIR)/make/core/search_filter_v2.mk
else
include $(MTB_TOOLS__CORE_DIR)/make/core/search_filter_v1.mk
endif
endif

ifeq ($(NINJA),)
ifneq ($(MTB_GENERATE_DEPENDENCIES),)
include $(MTB_TOOLS__CORE_DIR)/make/core/build_v2.mk
else
include $(MTB_TOOLS__CORE_DIR)/make/core/build_v1.mk
endif
include $(MTB_TOOLS__CORE_DIR)/make/core/search.mk

else
include $(MTB_TOOLS__CORE_DIR)/make/core/ninja.mk
endif

include $(MTB_TOOLS__CORE_DIR)/make/core/postbuild.mk
#
# Setup JLink path for IDE export and make program
#
include $(MTB_TOOLS__CORE_DIR)/make/core/jlink.mk

#
# Optional recipe-specific program routine
#
-include $(MTB_TOOLS__RECIPE_DIR)/make/recipe/program.mk

ifneq ($(_MTB_CORE__EXPORT_INTERFACE_VERSION),1)
uvision: uvision5
ewarm: ewarm8
endif
-include $(MTB_TOOLS__RECIPE_DIR)/make/recipe/interface_version_$(_MTB_CORE__EXPORT_INTERFACE_VERSION)/recipe_ide.mk
include $(MTB_TOOLS__CORE_DIR)/make/core/interface_version_$(_MTB_CORE__EXPORT_INTERFACE_VERSION)/ide.mk

endif #ifneq ($(_MTB_CORE__SKIP_BUILD_MK_FILES),)

endif #ifeq ($(MTB_LIBRARY__SKIP_LOAD_MAIN_MK),)

endif #ifeq ($(MTB_CORE__APPLICATION_BOOTSTRAP),)

# runs all code generation
codegen: $(_MTB_CORE__NINJA_FILE)

#
# Identify the phony targets
#
.PHONY: all getlibs clean clean_proj help
.PHONY: modlibs config config_bt config_usbdev config_secure config_ezpd config_lin
.PHONY: bsp check get_env_info printlibs check_toolchain check_recipe start_build
.PHONY: app memcalc help_default mtb_conditional_postbuild

.PHONY: build build_proj qbuild qbuild_proj
.PHONY: program program_proj qprogram debug qdebug erase attach codegen
################################################################################
# \file bwc.mk
#
# \brief
# Backwards-compatibility variables
#
################################################################################
# \copyright
# (c) 2018-2025, Cypress Semiconductor Corporation (an Infineon company) or
# an affiliate of Cypress Semiconductor Corporation. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
################################################################################

ifeq ($(WHICHFILE),true)
$(info Processing $(lastword $(MAKEFILE_LIST)))
endif

##########################
# Tool paths
##########################

#
# Special handling for GCC
# 	app makefile - CY_COMPILER_PATH (if selected toolchain is GCC)
# 	startex.mk - CY_COMPILER_DIR
# 	app makefile and again in main.mk if not set - CY_COMPILER_GCC_ARM_DIR
#
ifneq ($(CY_COMPILER_GCC_ARM_DIR),)
CY_INTERNAL_GCC_PATH=$(CY_COMPILER_GCC_ARM_DIR)
CY_USE_CUSTOM_GCC=true
else
CY_INTERNAL_GCC_PATH=$(CY_COMPILER_DIR)
endif

ifeq ($(TOOLCHAIN),GCC_ARM)
ifneq ($(CY_COMPILER_PATH),)
CY_INTERNAL_GCC_PATH=$(CY_COMPILER_PATH)
CY_USE_CUSTOM_GCC=true
endif
endif

ifeq ($(CY_USE_CUSTOM_GCC),true)
CY_INTERNAL_TOOL_gcc_BASE:=$(CY_INTERNAL_GCC_PATH)
else
ifneq ($(CY_TOOL_gcc_BASE_ABS),)
CY_INTERNAL_TOOL_gcc_BASE:=$(CY_TOOL_gcc_BASE_ABS)
else
CY_INTERNAL_TOOL_gcc_BASE:=$(CY_INTERNAL_GCC_PATH)
endif
endif

ifeq ($(CY_USE_CUSTOM_GCC),true)
CY_INTERNAL_TOOL_arm-none-eabi-gcc_EXE:=$(CY_INTERNAL_GCC_PATH)/bin/arm-none-eabi-gcc
else
ifneq ($(CY_TOOL_arm-none-eabi-gcc_EXE_ABS),)
CY_INTERNAL_TOOL_arm-none-eabi-gcc_EXE:=$(CY_TOOL_arm-none-eabi-gcc_EXE_ABS)
else
CY_INTERNAL_TOOL_arm-none-eabi-gcc_EXE:=$(CY_INTERNAL_GCC_PATH)/bin/arm-none-eabi-gcc
endif
endif

ifeq ($(CY_USE_CUSTOM_GCC),true)
CY_INTERNAL_TOOL_arm-none-eabi-g++_EXE:=$(CY_INTERNAL_GCC_PATH)/bin/arm-none-eabi-g++
else
ifneq ($(CY_TOOL_arm-none-eabi-g++_EXE_ABS),)
CY_INTERNAL_TOOL_arm-none-eabi-g++_EXE:=$(CY_TOOL_arm-none-eabi-g++_EXE_ABS)
else
CY_INTERNAL_TOOL_arm-none-eabi-g++_EXE:=$(CY_INTERNAL_GCC_PATH)/bin/arm-none-eabi-g++
endif
endif

ifeq ($(CY_USE_CUSTOM_GCC),true)
CY_INTERNAL_TOOL_arm-none-eabi-ar_EXE:=$(CY_INTERNAL_GCC_PATH)/bin/arm-none-eabi-ar
else
ifneq ($(CY_TOOL_arm-none-eabi-ar_EXE_ABS),)
CY_INTERNAL_TOOL_arm-none-eabi-ar_EXE:=$(CY_TOOL_arm-none-eabi-ar_EXE_ABS)
else
CY_INTERNAL_TOOL_arm-none-eabi-ar_EXE:=$(CY_INTERNAL_GCC_PATH)/bin/arm-none-eabi-ar
endif
endif

ifeq ($(CY_USE_CUSTOM_GCC),true)
CY_INTERNAL_TOOL_arm-none-eabi-gdb_EXE:=$(CY_INTERNAL_GCC_PATH)/bin/arm-none-eabi-gdb
else
ifneq ($(CY_TOOL_arm-none-eabi-gdb_EXE_ABS),)
CY_INTERNAL_TOOL_arm-none-eabi-gdb_EXE:=$(CY_TOOL_arm-none-eabi-gdb_EXE_ABS)
else
CY_INTERNAL_TOOL_arm-none-eabi-gdb_EXE:=$(CY_INTERNAL_GCC_PATH)/bin/arm-none-eabi-gdb
endif
endif

ifeq ($(CY_USE_CUSTOM_GCC),true)
CY_INTERNAL_TOOL_arm-none-eabi-objcopy_EXE:=$(CY_INTERNAL_GCC_PATH)/bin/arm-none-eabi-objcopy
else
ifneq ($(CY_TOOL_arm-none-eabi-objcopy_EXE_ABS),)
CY_INTERNAL_TOOL_arm-none-eabi-objcopy_EXE:=$(CY_TOOL_arm-none-eabi-objcopy_EXE_ABS)
else
CY_INTERNAL_TOOL_arm-none-eabi-objcopy_EXE:=$(CY_INTERNAL_GCC_PATH)/bin/arm-none-eabi-objcopy
endif
endif

ifeq ($(CY_USE_CUSTOM_GCC),true)
CY_INTERNAL_TOOL_arm-none-eabi-readelf_EXE:=$(CY_INTERNAL_GCC_PATH)/bin/arm-none-eabi-readelf
else
ifneq ($(CY_TOOL_arm-none-eabi-readelf_EXE_ABS),)
CY_INTERNAL_TOOL_arm-none-eabi-readelf_EXE:=$(CY_TOOL_arm-none-eabi-readelf_EXE_ABS)
else
CY_INTERNAL_TOOL_arm-none-eabi-readelf_EXE:=$(CY_INTERNAL_GCC_PATH)/bin/arm-none-eabi-readelf
endif
endif

##########################
# Eclipse launch configs
##########################

CY_ECLIPSE_GDB=$${cy_tools_path:CY_TOOL_arm-none-eabi-gdb_EXE}

# Special case to account for IDE 2.1 + tools 2.2 (or later)
ifeq ($(CY_MAKE_IDE),eclipse)
ifeq ($(CY_MAKE_IDE_VERSION),)
CY_ECLIPSE_GDB=$${cy_tools_path:gcc\}/bin/arm-none-eabi-gdb
endif
endif

##########################
# Pre-post build
##########################

ifneq ($(CY_BSP_PREBUILD),)
bsp_prebuild: _mtb_build__legacy_bsp_prebuild
_mtb_build__legacy_bsp_prebuild: _mtb_build_prebuild_mkdirs
	$(CY_BSP_PREBUILD)
endif

ifneq ($(PREBUILD),)
project_prebuild: _mtb_build__legacy_project_prebuild
_mtb_build__legacy_project_prebuild: bsp_prebuild
	$(PREBUILD)
endif

ifneq ($(CY_BSP_POSTBUILD),)
bsp_postbuild: _mtb_build__legacy_bsp_postbuild
_mtb_build__legacy_bsp_postbuild: recipe_postbuild
	$(CY_BSP_POSTBUILD)
endif

ifneq ($(POSTBUILD),)
project_postbuild: _mtb_build__legacy_project_postbuild
_mtb_build__legacy_project_postbuild: bsp_postbuild
	$(POSTBUILD)
endif

##########################
# Bug fix
##########################
# Bug fixes for issues found in MTB 3.0 that will fixed in MTB 3.1.
# These are ordinarily defined in tools-make there are redefined here to fix a bug related to cdb file generation.
# Remove at the next major version release.

#
# Writes to file
# $(1) : File to write
# $(2) : String
#
ifeq ($(MTB_FILE_TYPE),file)
mtb__file_write=$(file >$1,$2)
else
mtb__file_write=$(shell echo -e '$(subst ','"'"',$(subst $(MTB__NEWLINE),\n,$(subst \,\\,$2)))' >$1)
endif

#
# Appends to file
# $(1) : File to write
# $(2) : String
#
ifeq ($(MTB_FILE_TYPE),file)
mtb__file_append=$(file >>$1,$2)
else
mtb__file_append=$(shell echo -e '$(subst ','"'"',$(subst $(MTB__NEWLINE),\n,$(subst \,\\,$2)))' >>$1)
endif

# Empty target for BWC for recipe that depends on this target.
_mtb_build_gensrc:

#
# Python check for interface version 3.0 only
#
ifeq ($(_MTB_CORE__EXPORT_INTERFACE_VERSION),1)

#
# Find Python path
# Note: This check has a dependency on target.mk and features.mk and
# is hence placed after these files are included.
#
ifeq ($(filter uvision5,$(MAKECMDGOALS)),uvision5)
CY_PYTHON_REQUIREMENT=true
endif
ifeq ($(filter ewarm8,$(MAKECMDGOALS)),ewarm8)
CY_PYTHON_REQUIREMENT=true
endif
ifeq ($(filter eclipse,$(MAKECMDGOALS)),eclipse)
# IDE does not require project generation. Hence no python
ifneq ($(CY_MAKE_IDE),eclipse)
CY_PYTHON_REQUIREMENT=true
endif
endif
endif # ifeq ($(_MTB_CORE__EXPORT_INTERFACE_VERSION),1)

-include $(MTB_TOOLS__RECIPE_DIR)/make/recipe/recipe_version.mk
-include $(MTB_TOOLS__RECIPE_DIR)/make/udd/features.mk
################################################################################
# \file application_bootstrap.mk
#
# \brief
# bootstrap make target that need to call up to the application
#
################################################################################
# \copyright
# (c) 2024-2025, Cypress Semiconductor Corporation (an Infineon company) or
# an affiliate of Cypress Semiconductor Corporation. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
################################################################################

.SECONDEXPANSION:

build_application_bootstrap:
	$(MTB__NOISE)$(MAKE) -C .. build
	$(MTB__NOISE)echo;\
	echo "Note: Running the \"build_proj\" target in this sub-project will only build this sub-project, and not the entire application."

qbuild_application_bootstrap:
	$(MTB__NOISE)$(MAKE) -C .. qbuild
	$(MTB__NOISE)echo;\
	echo "Note: Running the \"qbuild_proj\" target in this sub-project will only build this sub-project, and not the entire application."

program_application_bootstrap qprogram_application_bootstrap clean_application_bootstrap eclipse_application_bootstrap vscode_application_bootstrap:
	$(MTB__NOISE)$(MAKE) -C .. $(patsubst %_application_bootstrap,%,$@)

ifeq ($(MTB_CORE__APPLICATION_BOOTSTRAP),true)
build qbuild program qprogram clean eclipse vscode: $$@_application_bootstrap
else
build qbuild clean program qprogram: $$@_proj
eclipse vscode: $$@_generate
endif


.PHONY: eclipse_application_bootstrap vscode_application_bootstrap program_application_bootstrap qprogram_application_bootstrap build_application_bootstrap qbuild_application_bootstrap clean_application_bootstrap
.PHONY:eclipse_generate vscode_generate
################################################################################
# \file core_utils.mk
#
# \brief
# Global utilities used across the application recipes and BSPs
#
################################################################################
# \copyright
# (c) 2018-2025, Cypress Semiconductor Corporation (an Infineon company) or
# an affiliate of Cypress Semiconductor Corporation. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
################################################################################

ifeq ($(WHICHFILE),true)
$(info Processing $(lastword $(MAKEFILE_LIST)))
endif


################################################################################
# Components
################################################################################

# args
# $1 vfp_select variable
# $2 what to do if not set
_mtb_core__vfp_select_map=$(if $1,$(if $(call mtb__equals,$1,hardfp),HARDFP,SOFTFP),$2)
CY_COMPONENT_VFP=$(call _mtb_core__vfp_select_map,$(VFP_SELECT),$(call _mtb_core__vfp_select_map,$(MTB_RECIPE__VFP_SELECT_DEFAULT),SOFTFP))

MTB_CORE__FULL_COMPONENT_LIST=$(sort $(MTB_RECIPE__CORE) $(MTB_RECIPE__CORE_NAME) $(CY_COMPONENT_VFP) $(COMPONENTS) $(TOOLCHAIN) $(TARGET) $(CONFIG) $(MTB_RECIPE__COMPONENT) $(DEVICE_COMPONENTS) $(BSP_COMPONENTS))

_MTB_CORE__FULL_SEARCH_ROOTS=$(strip $(SEARCH) $(SEARCH_MTB_MK))

################################################################################
# Defines
################################################################################

#
# VFP-specific defines
#
ifeq ($(VFP_SELECT),softfloat)
DEFINES+=MTB_SOFTFLOAT
endif

################################################################################
# Macros
################################################################################

#
# Convert a relative or absolute path to absolute path
# 
# $1 : the path to convert
#
ifeq ($(OS),Windows_NT)
# NOTE: Cannot use $(abspath) function on windows as it might generate a cygwin path.
# Which we would require a very slow function to convert back to windows path for each path.
# Instead we run cygpath once and just prepend that to the path.
_MTB_CORE__WIN_PROJECT_ABSPATH:=$(call mtb__path_normalize,.)
_MTB_CORE__WIN_ABSPATH_FILTER:=A:/% B:/% C:/% D:/% E:/% F:/% G:/% H:/% I:/% J:/% K:/% L:/% M:/% N:/% O:/% P:/% Q:/% R:/% S:/% T:/% U:/% V:/% W:/% X:/% Y:/% Z:/%
mtb_core__abspath=$(if $(filter $(_MTB_CORE__WIN_ABSPATH_FILTER),$1),$1,$(_MTB_CORE__WIN_PROJECT_ABSPATH)/$1)
else
mtb_core__abspath=$(abspath $1)
endif

mtb_core__search_in_path=$(if $(shell type -P $(1)),$(1),)

#
# Prints for bypassing TARGET/DEVICE checks
# $(1) : String to print
#
ifneq (,$(filter build build_proj qbuild qbuild_proj program program_proj debug,$(MAKECMDGOALS)))
_MTB_CORE__FAIL_ON_ERROR:=true
endif
ifeq ($(_MTB_CORE__FAIL_ON_ERROR),true)
mtb__error=$(error $(1))
else
mtb__error=$(info WARNING: $(1))
endif

#
# Get unquoted path with escaped spaces
# $(1) : path for which quotes and escapes should be removed but spaces should be escaped
#
mtb_core__escaped_path=$(subst $(MTB__OPEN_PAREN),\$(MTB__OPEN_PAREN),$(subst $(MTB__CLOSE_PAREN),\$(MTB__CLOSE_PAREN),$(subst $(MTB__SPACE),\$(MTB__SPACE),$(1))))


# escape " and \ for json
mtb_core__json_escaped_string=$(subst ",\",$(subst \,\\,$(strip $1)))

# recursive wildcard
# $(1) directory to search
# $(2) pattern (I.E. *.c)
mtb_core__rwildcard=$(strip $(foreach d,$(wildcard $1*),$(call mtb_core__rwildcard,$d/,$2) $(filter $2,$d)))

################################################################################
# Misc.
################################################################################

# Create a maker that can be used by a replace operation to insert a newline
MTB__NEWLINE_MARKER:=__!__

################################################################################
# Utility targets
################################################################################

bsp:
	@:
	$(error Make bsp target is no longer supported. Use BSP assistant tool instead.)

update_bsp:
	@:
	$(error Make bsp target is no longer supported. Use BSP assistant tool instead.)


################################################################################
# Test/debug targets
################################################################################

CY_TOOLS_LIST+=bash git find ls cp mkdir rm cat sed awk perl file whereis

check:
	@:
	$(info )
	$(foreach tool,$(CY_TOOLS_LIST),$(if $(shell which $(tool)),\
		$(info SUCCESS: "$(tool)" found in PATH),$(info FAILED : "$(tool)" was not found in PATH)$(info )))
	$(info )
	$(info Tools check complete.)
	$(info )

get_env_info:
	$(MTB__NOISE)echo;\
	echo "make location :" $$(which make);\
	echo "make version  :" $(MAKE_VERSION);\
	echo "git location  :" $$(which git);\
	echo "git version   :" $$(git --version);\
	echo "git remote    :";\
	git remote -v;\
	echo "git rev-parse :" $$(git rev-parse HEAD)

printlibs:

# Defined in recipe's program.mk
progtool:

# Empty libs on purpose. May be defined by the application
shared_libs:

ifeq ($(CY_PROTOCOL),)
MTB_CORE__CY_PROTOCOL_VERSION:=2
else
MTB_CORE__CY_PROTOCOL_VERSION:=$(CY_PROTOCOL)
endif
MTB_CORE__SUPPORTED_PROTOCAL_VERSIONS=1

ifeq ($(MTB_QUERY),)
# undefined MTB_QUERY. Use the latest
MTB_CORE__MTB_QUERY=$(lastword $(MTB_CORE__SUPPORTED_PROTOCAL_VERSIONS))
# MTB_QUERY version is supported
else
ifeq ($(filter $(MTB_QUERY),$(MTB_CORE__SUPPORTED_PROTOCAL_VERSIONS)),$(MTB_QUERY))
MTB_CORE__MTB_QUERY=$(MTB_QUERY)
else
# MTB_QUERY is newer than max supported version. Use the latest
MTB_CORE__MTB_QUERY=$(lastword $(MTB_CORE__SUPPORTED_PROTOCAL_VERSIONS))
$(warning Requested MTB_QUERY version is newer than is supported.)
endif
endif

# CY_PROTOCOl=2, MTB_QUERY=1. Supports ModusToolbox 3.0
get_app_info_2_1:
	@:
	$(info MTB_MPN_LIST=$(MPN_LIST))
	$(info MTB_DEVICE_LIST=$(DEVICE_LIST))
	$(info MTB_DEVICE=$(DEVICE))
	$(info MTB_SEARCH=$(MTB_TOOLS__SEARCH))
	$(info MTB_TOOLCHAIN=$(TOOLCHAIN))
	$(info MTB_TARGET=$(TARGET))
	$(info MTB_CONFIG=$(CONFIG))
	$(info MTB_APP_NAME=$(APPNAME)$(LIBNAME))
	$(info MTB_COMPONENTS=$(MTB_CORE__FULL_COMPONENT_LIST))
	$(info MTB_DISABLED_COMPONENTS=$(DISABLE_COMPONENTS))
	$(info MTB_ADDITIONAL_DEVICES=$(ADDITIONAL_DEVICES))
	$(info MTB_LIBS=$(CY_GETLIBS_PATH))
	$(info MTB_DEPS=$(CY_GETLIBS_DEPS_PATH))
	$(info MTB_WKS_SHARED_NAME=$(CY_GETLIBS_SHARED_NAME))
	$(info MTB_WKS_SHARED_DIR=$(CY_GETLIBS_SHARED_PATH))
	$(info MTB_FLOW_VERSION=$(FLOW_VERSION))
	$(info MTB_QUERY=$(MTB_CORE__MTB_QUERY))
	$(info MTB_TOOLS_DIR=$(MTB_TOOLS__TOOLS_DIR))
	$(info MTB_DEVICE_PROGRAM_IDS=$(strip $(DEVICE_TOOL_IDS) $(CY_SUPPORTED_TOOL_TYPES)))
	$(info MTB_BSP_TOOL_TYPES=$(_MTB_CORE__SUPPORTED_TOOL_ID))
	$(info MTB_MW_TOOL_TYPES=)
	$(info MTB_IGNORE=$(strip $(CY_IGNORE) $(MTB_TOOLS__OUTPUT_BASE_DIR)))
	$(info MTB_TYPE=$(MTB_TYPE))
	$(info MTB_CORE_TYPE=$(MTB_RECIPE__CORE))
	$(info MTB_CORE_NAME=$(MTB_RECIPE__CORE_NAME))
	$(info MTB_BUILD_SUPPORT=$(MTB_BUILD_SUPPORT))
	$(info MTB_CACHE_DIR=$(MTB_TOOLS__CACHE_DIR))
	$(info MTB_OFFLINE_DIR=$(MTB_TOOLS__OFFLINE_DIR))
	$(info MTB_GLOBAL_DIR=$(MTB_TOOLS__GLOBAL_DIR))
	$(info MTB_APP_PATH=$(MTB_TOOLS__REL_PRJ_PATH))
	$(info MTB_APPINFO_DEPENDENCIES=$(MAKEFILE_LIST))
	$(info MTB_BUILD_LOCATION=$(MTB_TOOLS__OUTPUT_BASE_DIR))
	$(info MTB_SKIP_CODE_GEN=$(SKIP_CODE_GEN))

get_app_info: get_app_info_$(MTB_CORE__CY_PROTOCOL_VERSION)_$(MTB_CORE__MTB_QUERY)
	@:

.PHONY: get_app_info get_app_info_2_1

#
# Identify the phony targets
#
.PHONY: bsp update_bsp check get_env_info get_app_info printlibs shared_libs
################################################################################
# \file core_selection.mk
#
# \brief
# Determine which MCU core is being targeted.
#
################################################################################
# \copyright
# (c) 2018-2025, Cypress Semiconductor Corporation (an Infineon company) or
# an affiliate of Cypress Semiconductor Corporation. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
################################################################################

#
# Define the default core
#
ifeq ($(CORE),)
MTB_RECIPE__CORE?=CM33
else
MTB_RECIPE__CORE=$(CORE)
endif

ifeq ($(CORE_NAME),)
MTB_RECIPE__CORE_NAME?=$(MTB_RECIPE__CORE)_0
else
MTB_RECIPE__CORE_NAME=$(CORE_NAME)
endif

COMPONENTS+=$(MTB_RECIPE__CORE) $(MTB_RECIPE__CORE_NAME)
################################################################################
# \file GCC_ARM.mk
#
# \brief
# GCC ARM toolchain configuration
#
################################################################################
# \copyright
# (c) 2018-2025, Cypress Semiconductor Corporation (an Infineon company) or
# an affiliate of Cypress Semiconductor Corporation. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
################################################################################

ifeq ($(WHICHFILE),true)
$(info Processing $(lastword $(MAKEFILE_LIST)))
endif

################################################################################
# Macros
################################################################################

# The base path to the GCC cross compilation executables
_MTB_TOOLCHAIN_GCC_ARM__INSTALL_DIR:=$(wildcard $(call mtb_core__escaped_path,$(CY_TOOL_gcc_BASE_ABS)))
ifneq ($(_MTB_TOOLCHAIN_GCC_ARM__INSTALL_DIR),)
MTB_TOOLCHAIN_GCC_ARM__BASE_DIR:=$(call mtb_core__escaped_path,$(CY_TOOL_gcc_BASE_ABS))
endif

ifeq ($(TOOLCHAIN),GCC_ARM)
_MTB_TOOLCHAIN_GCC_ARM__USER_1_DIR :=$(wildcard $(call mtb_core__escaped_path,$(CY_COMPILER_PATH)))
ifneq ($(_MTB_TOOLCHAIN_GCC_ARM__USER_1_DIR),)
MTB_TOOLCHAIN_GCC_ARM__BASE_DIR:=$(call mtb_core__escaped_path,$(CY_COMPILER_PATH))
endif
endif

_MTB_TOOLCHAIN_GCC_ARM__USER_2_DIR :=$(wildcard $(call mtb_core__escaped_path,$(CY_COMPILER_GCC_ARM_DIR)))
ifneq ($(_MTB_TOOLCHAIN_GCC_ARM__USER_2_DIR),)
MTB_TOOLCHAIN_GCC_ARM__BASE_DIR:=$(call mtb_core__escaped_path,$(CY_COMPILER_GCC_ARM_DIR))
endif

check_toolchain_install:
ifeq ($(MTB_TOOLCHAIN_GCC_ARM__BASE_DIR),)
	$(info CY_TOOL_gcc_BASE_ABS=$(CY_TOOL_gcc_BASE_ABS) [$(if $(wildcard $(call mtb_core__escaped_path,$(CY_TOOL_gcc_BASE_ABS))),exists,absent)])
	$(info CY_COMPILER_PATH=$(CY_COMPILER_PATH) [$(if $(wildcard $(call mtb_core__escaped_path,$(CY_COMPILER_PATH))),exists,absent)])
	$(info CY_COMPILER_GCC_ARM_DIR=$(CY_COMPILER_GCC_ARM_DIR) [$(if $(wildcard $(call mtb_core__escaped_path,$(CY_COMPILER_GCC_ARM_DIR))),exists,absent)])
endif

# Elf to bin conversion tool
MTB_TOOLCHAIN_GCC_ARM__ELF2BIN=$(MTB_TOOLCHAIN_GCC_ARM__BASE_DIR)/bin/arm-none-eabi-objcopy

# Run ELF2BIN conversion
# $(1) : artifact elf
# $(2) : artifact bin
mtb_toolchain_GCC_ARM__elf2bin=$(MTB_TOOLCHAIN_GCC_ARM__ELF2BIN) -O binary $1 $2


################################################################################
# Tools
################################################################################

# The base path to the GCC cross compilation executables
ifeq ($(TOOLCHAIN),GCC_ARM)
CY_CROSSPATH:=$(MTB_TOOLCHAIN_GCC_ARM__BASE_DIR)
endif

# Build tools
MTB_TOOLCHAIN_GCC_ARM__CC :=$(MTB_TOOLCHAIN_GCC_ARM__BASE_DIR)/bin/arm-none-eabi-gcc
MTB_TOOLCHAIN_GCC_ARM__CXX:=$(MTB_TOOLCHAIN_GCC_ARM__BASE_DIR)/bin/arm-none-eabi-g++
MTB_TOOLCHAIN_GCC_ARM__AS :=$(MTB_TOOLCHAIN_GCC_ARM__CC)
MTB_TOOLCHAIN_GCC_ARM__AR :=$(MTB_TOOLCHAIN_GCC_ARM__BASE_DIR)/bin/arm-none-eabi-ar
MTB_TOOLCHAIN_GCC_ARM__LD :=$(MTB_TOOLCHAIN_GCC_ARM__CXX)

MTB_TOOLCHAIN_GCC_ARM__READELF:=$(MTB_TOOLCHAIN_GCC_ARM__BASE_DIR)/bin/arm-none-eabi-readelf
MTB_TOOLCHAIN_GCC_ARM__GDB    :=$(MTB_TOOLCHAIN_GCC_ARM__BASE_DIR)/bin/arm-none-eabi-gdb
MTB_TOOLCHAIN_GCC_ARM__OBJCOPY:=$(MTB_TOOLCHAIN_GCC_ARM__BASE_DIR)/bin/arm-none-eabi-objcopy


################################################################################
# Options
################################################################################

# DEBUG/NDEBUG selection
ifeq ($(CONFIG),Debug)
_MTB_TOOLCHAIN_GCC_ARM__DEBUG_FLAG:=-DDEBUG
_MTB_TOOLCHAIN_GCC_ARM__OPTIMIZATION:=-Og
else ifeq ($(CONFIG),Release)
_MTB_TOOLCHAIN_GCC_ARM__DEBUG_FLAG:=-DNDEBUG
_MTB_TOOLCHAIN_GCC_ARM__OPTIMIZATION:=-Os
else
_MTB_TOOLCHAIN_GCC_ARM__DEBUG_FLAG:=
_MTB_TOOLCHAIN_GCC_ARM__OPTIMIZATION:=
endif

#
# Flags common to compile and link
#
_MTB_TOOLCHAIN_GCC_ARM__COMMON_FLAGS:=\
	-mthumb\
	-ffunction-sections\
	-fdata-sections\
	-ffat-lto-objects\
	-g\
	-Wall\
	-pipe

_MTB_TOOLCHAIN_GCC_ARM__NEWLIBNANO:=--specs=nano.specs

#
# CPU core specifics
#
ifeq ($(MTB_RECIPE__CORE),CM0)
# Arm Cortex-M0 CPU
_MTB_TOOLCHAIN_GCC_ARM__FLAGS_CORE:=-mcpu=cortex-m0 $(_MTB_TOOLCHAIN_GCC_ARM__NEWLIBNANO)
_MTB_TOOLCHAIN_GCC_ARM__VFP_FLAGS:=
endif

ifeq ($(MTB_RECIPE__CORE),CM0P)
# Arm Cortex-M0+ CPU
_MTB_TOOLCHAIN_GCC_ARM__FLAGS_CORE:=-mcpu=cortex-m0plus $(_MTB_TOOLCHAIN_GCC_ARM__NEWLIBNANO)
_MTB_TOOLCHAIN_GCC_ARM__VFP_FLAGS:=
endif

ifeq ($(MTB_RECIPE__CORE),CM4)
# Arm Cortex-M4 CPU
_MTB_TOOLCHAIN_GCC_ARM__FLAGS_CORE:=-mcpu=cortex-m4 $(_MTB_TOOLCHAIN_GCC_ARM__NEWLIBNANO)
ifeq ($(VFP_SELECT),hardfp)
# FPv4 FPU, hardfp, single-precision
_MTB_TOOLCHAIN_GCC_ARM__VFP_FLAGS:=-mfloat-abi=hard -mfpu=fpv4-sp-d16
else ifeq ($(VFP_SELECT),softfloat)
# Software FP
_MTB_TOOLCHAIN_GCC_ARM__VFP_FLAGS:=
else
# FPv4 FPU, softfp, single-precision
_MTB_TOOLCHAIN_GCC_ARM__VFP_FLAGS:=-mfloat-abi=softfp -mfpu=fpv4-sp-d16
endif
endif

ifeq ($(MTB_RECIPE__CORE),CM7)
# Arm Cortex-M7 CPU
_MTB_TOOLCHAIN_GCC_ARM__FLAGS_CORE:=-mcpu=cortex-m7 $(_MTB_TOOLCHAIN_GCC_ARM__NEWLIBNANO)
ifeq ($(VFP_SELECT),hardfp)
ifeq ($(VFP_SELECT_PRECISION),singlefp)
# FPv5 FPU, hardfp, single-precision
_MTB_TOOLCHAIN_GCC_ARM__VFP_FLAGS:=-mfloat-abi=hard -mfpu=fpv5-sp-d16
else
# FPv5 FPU, hardfp, double-precision
_MTB_TOOLCHAIN_GCC_ARM__VFP_FLAGS:=-mfloat-abi=hard -mfpu=fpv5-d16
endif
else ifeq ($(VFP_SELECT),softfloat)
# Software FP
_MTB_TOOLCHAIN_GCC_ARM__VFP_FLAGS=
else
ifeq ($(VFP_SELECT_PRECISION),singlefp)
# FPv5 FPU, softfp, single-precision
_MTB_TOOLCHAIN_GCC_ARM__VFP_FLAGS:=-mfloat-abi=softfp -mfpu=fpv5-sp-d16
else
# FPv5 FPU, softfp, double-precision
_MTB_TOOLCHAIN_GCC_ARM__VFP_FLAGS:=-mfloat-abi=softfp -mfpu=fpv5-d16
endif
endif
endif

ifeq ($(MTB_RECIPE__CORE),CM33)
ifeq ($(filter $(MTB_RECIPE__CORE_NAME)_DSP_PRESENT,$(DEVICE_$(DEVICE)_FEATURES)),)
_MTB_TOOLCHAIN_GCC_ARM__DSP_FLAG_SUFFIX=+nodsp
else
_MTB_TOOLCHAIN_GCC_ARM__DSP_FLAG_SUFFIX=
endif
# Arm Cortex-M33 CPU
_MTB_TOOLCHAIN_GCC_ARM__FLAGS_CORE:=-mcpu=cortex-m33$(_MTB_TOOLCHAIN_GCC_ARM__DSP_FLAG_SUFFIX) $(_MTB_TOOLCHAIN_GCC_ARM__NEWLIBNANO)
ifeq ($(filter $(MTB_RECIPE__CORE_NAME)_FPU_PRESENT,$(DEVICE_$(DEVICE)_FEATURES)),)
# Software FP
_MTB_TOOLCHAIN_GCC_ARM__VFP_FLAGS=
else
ifeq ($(VFP_SELECT),hardfp)
# FPv5 FPU, hardfp, single-precision only
_MTB_TOOLCHAIN_GCC_ARM__VFP_FLAGS:=-mfloat-abi=hard -mfpu=fpv5-sp-d16
else ifeq ($(VFP_SELECT),softfloat)
# Software FP
_MTB_TOOLCHAIN_GCC_ARM__VFP_FLAGS=
else
# FPv5 FPU, softfp, single-precision only
_MTB_TOOLCHAIN_GCC_ARM__VFP_FLAGS:=-mfloat-abi=softfp -mfpu=fpv5-sp-d16
endif
endif
endif

ifeq ($(MTB_RECIPE__CORE),CM55)
# Check if MVE is supported
ifeq ($(filter $(MTB_RECIPE__CORE_NAME)_MVE_PRESENT,$(DEVICE_$(DEVICE)_FEATURES)),)
ifneq ($(MVE_SELECT),NO_MVE)
$(call mtb__error, "MVE_SELECT=$(MVE_SELECT)" but "$(MTB_RECIPE__CORE)" core does not support MVE. Set "MVE_SELECT=NO_MVE" to disable MVE support for "$(MTB_RECIPE__CORE)" core.)
endif
endif
ifeq ($(MVE_SELECT),NO_MVE)
# Disable MVE
_MTB_TOOLCHAIN_GCC_ARM__MVE_FLAGS=+nomve
else ifeq ($(MVE_SELECT),MVE-I)
ifeq ($(filter $(MTB_RECIPE__CORE_NAME)_FPU_PRESENT,$(DEVICE_$(DEVICE)_FEATURES)),)
# Force switch to softfloat mode if FPU is not available
_MTB_TOOLCHAIN_GCC_ARM__MVE_FLAGS=+nofp
else
ifeq ($(VFP_SELECT),softfloat)
# Enable MVE-I and disable FPU
_MTB_TOOLCHAIN_GCC_ARM__MVE_FLAGS=+nofp
else
# Integer precision MVE
_MTB_TOOLCHAIN_GCC_ARM__MVE_FLAGS=+nomve.fp
endif
endif
else
ifeq ($(filter $(MTB_RECIPE__CORE_NAME)_FPU_PRESENT,$(DEVICE_$(DEVICE)_FEATURES)),)
$(info INFO: MVE_SELECT=MVE-F is set but FPU is not available on $(MTB_RECIPE__CORE) core. Valid options for $(MTB_RECIPE__CORE) core are MVE_SELECT=MVE-I or MVE_SELECT=NO_MVE.)
else ifeq ($(VFP_SELECT),softfloat)
$(info INFO: MVE_SELECT=MVE-F is set but VFP_SELECT=softfloat. Set VFP_SELECT=softfp or VFP_SELECT=hardfp to enable MVE-F support.)
endif
# Integer, half-, and single-precision floating-point MVE
_MTB_TOOLCHAIN_GCC_ARM__MVE_FLAGS=
endif
# Arm Cortex-M55 CPU + extensions
_MTB_TOOLCHAIN_GCC_ARM__FLAGS_CORE:=-mcpu=cortex-m55$(_MTB_TOOLCHAIN_GCC_ARM__MVE_FLAGS) $(_MTB_TOOLCHAIN_GCC_ARM__NEWLIBNANO)
ifeq ($(filter $(MTB_RECIPE__CORE_NAME)_FPU_PRESENT,$(DEVICE_$(DEVICE)_FEATURES)),)
# Software FP
ifeq ($(MVE_SELECT),MVE-I)
_MTB_TOOLCHAIN_GCC_ARM__VFP_FLAGS=-mfloat-abi=hard -mfpu=auto
else
_MTB_TOOLCHAIN_GCC_ARM__VFP_FLAGS=
endif
else
ifeq ($(VFP_SELECT),softfp)
ifeq ($(VFP_SELECT_PRECISION),singlefp)
# FPv5 FPU, softfp, single-precision
_MTB_TOOLCHAIN_GCC_ARM__VFP_FLAGS:=-mfloat-abi=softfp -mfpu=fpv5-sp-d16
else
# FPv5 FPU, softfp, double-precision
_MTB_TOOLCHAIN_GCC_ARM__VFP_FLAGS:=-mfloat-abi=softfp -mfpu=fpv5-d16
endif
else ifeq ($(VFP_SELECT),softfloat)
# Software FP
ifeq ($(MVE_SELECT),MVE-I)
_MTB_TOOLCHAIN_GCC_ARM__VFP_FLAGS=-mfloat-abi=hard -mfpu=auto
else
_MTB_TOOLCHAIN_GCC_ARM__VFP_FLAGS=
endif
else
ifeq ($(VFP_SELECT_PRECISION),singlefp)
# FPv5 FPU, hardfp, single-precision
_MTB_TOOLCHAIN_GCC_ARM__VFP_FLAGS:=-mfloat-abi=hard -mfpu=fpv5-sp-d16
else
# FPv5 FPU, hardfp, double-precision
_MTB_TOOLCHAIN_GCC_ARM__VFP_FLAGS:=-mfloat-abi=hard -mfpu=fpv5-d16
endif
endif
endif
endif

# Command line flags for c-files
MTB_TOOLCHAIN_GCC_ARM__CFLAGS:=\
	-c\
	$(_MTB_TOOLCHAIN_GCC_ARM__FLAGS_CORE)\
	$(_MTB_TOOLCHAIN_GCC_ARM__OPTIMIZATION)\
	$(_MTB_TOOLCHAIN_GCC_ARM__VFP_FLAGS)\
	$(_MTB_TOOLCHAIN_GCC_ARM__COMMON_FLAGS)

# Command line flags for cpp-files
MTB_TOOLCHAIN_GCC_ARM__CXXFLAGS:=\
	$(MTB_TOOLCHAIN_GCC_ARM__CFLAGS)\
	-fno-rtti\
	-fno-exceptions

# Command line flags for s-files
MTB_TOOLCHAIN_GCC_ARM__ASFLAGS:=\
	-c\
	$(_MTB_TOOLCHAIN_GCC_ARM__FLAGS_CORE)\
	$(_MTB_TOOLCHAIN_GCC_ARM__VFP_FLAGS)\
	$(_MTB_TOOLCHAIN_GCC_ARM__COMMON_FLAGS)

# Command line flags for archiving
MTB_TOOLCHAIN_GCC_ARM__ARFLAGS:=rs

# Command line flags for linking
MTB_TOOLCHAIN_GCC_ARM__LDFLAGS:=\
	$(_MTB_TOOLCHAIN_GCC_ARM__FLAGS_CORE)\
	$(_MTB_TOOLCHAIN_GCC_ARM__VFP_FLAGS)\
	$(_MTB_TOOLCHAIN_GCC_ARM__COMMON_FLAGS)\
	-Wl,--gc-sections

# Toolchain-specific suffixes
MTB_TOOLCHAIN_GCC_ARM__SUFFIX_S  :=S
MTB_TOOLCHAIN_GCC_ARM__SUFFIX_s  :=s
MTB_TOOLCHAIN_GCC_ARM__SUFFIX_C  :=c
MTB_TOOLCHAIN_GCC_ARM__SUFFIX_H  :=h
MTB_TOOLCHAIN_GCC_ARM__SUFFIX_CPP:=cpp
MTB_TOOLCHAIN_GCC_ARM__SUFFIX_CXX:=cxx
MTB_TOOLCHAIN_GCC_ARM__SUFFIX_CC :=cc
MTB_TOOLCHAIN_GCC_ARM__SUFFIX_HPP:=hpp
MTB_TOOLCHAIN_GCC_ARM__SUFFIX_O  :=o
MTB_TOOLCHAIN_GCC_ARM__SUFFIX_A  :=a
MTB_TOOLCHAIN_GCC_ARM__SUFFIX_D  :=d
MTB_TOOLCHAIN_GCC_ARM__SUFFIX_LS :=ld
MTB_TOOLCHAIN_GCC_ARM__SUFFIX_MAP:=map
MTB_TOOLCHAIN_GCC_ARM__SUFFIX_TARGET:=elf
MTB_TOOLCHAIN_GCC_ARM__SUFFIX_PROGRAM:=hex

# Toolchain specific flags
MTB_TOOLCHAIN_GCC_ARM__OUTPUT_OPTION:=-o
MTB_TOOLCHAIN_GCC_ARM__ARCHIVE_LIB_OUTPUT_OPTION:=-o
MTB_TOOLCHAIN_GCC_ARM__MAPFILE:=-Wl,-Map,
MTB_TOOLCHAIN_GCC_ARM__STARTGROUP:=-Wl,--start-group
MTB_TOOLCHAIN_GCC_ARM__ENDGROUP:=-Wl,--end-group
MTB_TOOLCHAIN_GCC_ARM__LSFLAGS:=-T
MTB_TOOLCHAIN_GCC_ARM__INCRSPFILE:=@
MTB_TOOLCHAIN_GCC_ARM__INCRSPFILE_ASM:=@
MTB_TOOLCHAIN_GCC_ARM__OBJRSPFILE:=@

# Produce a makefile dependency rule for each input file
MTB_TOOLCHAIN_GCC_ARM__DEPENDENCIES=-MMD -MP -MF "$(@:.$(MTB_TOOLCHAIN_GCC_ARM__SUFFIX_O)=.$(MTB_TOOLCHAIN_GCC_ARM__SUFFIX_D))" -MT "$@"
MTB_TOOLCHAIN_GCC_ARM__EXPLICIT_DEPENDENCIES=-MMD -MP -MF "$$(@:.$(MTB_TOOLCHAIN_GCC_ARM__SUFFIX_O)=.$(MTB_TOOLCHAIN_GCC_ARM__SUFFIX_D))" -MT "$$@"

# Additional includes in the compilation process based on this toolchain
MTB_TOOLCHAIN_GCC_ARM__INCLUDES:=

# TODO: Set MTB_RECIPE__xyzzy, replace MTB_TOOLCHAIN_xyzzy with recipe's var
# Additional libraries in the link process based on this toolchain
MTB_TOOLCHAIN_GCC_ARM__DEFINES:=$(_MTB_TOOLCHAIN_GCC_ARM__DEBUG_FLAG)

MTB_TOOLCHAIN_GCC_ARM__VSCODE_INTELLISENSE_MODE:=gcc-arm
MTB_TOOLCHAIN_GCC_ARM__VSCODE_PROBLEM_MATCHER:=gcc
################################################################################
# \file recipe_toolchain_file_types.mk
#
# \brief
# Standard recipe setup of toolchain specific file suffixes.
#
################################################################################
# \copyright
# (c) 2018-2025, Cypress Semiconductor Corporation (an Infineon company) or
# an affiliate of Cypress Semiconductor Corporation. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
################################################################################

# Compiler, assember, linker, etc. file extensions.
MTB_RECIPE__SUFFIX_S  :=$(MTB_TOOLCHAIN_$(TOOLCHAIN)__SUFFIX_S)
MTB_RECIPE__SUFFIX_s  :=$(MTB_TOOLCHAIN_$(TOOLCHAIN)__SUFFIX_s)
MTB_RECIPE__SUFFIX_C  :=$(MTB_TOOLCHAIN_$(TOOLCHAIN)__SUFFIX_C)
MTB_RECIPE__SUFFIX_H  :=$(MTB_TOOLCHAIN_$(TOOLCHAIN)__SUFFIX_H)
MTB_RECIPE__SUFFIX_CPP:=$(MTB_TOOLCHAIN_$(TOOLCHAIN)__SUFFIX_CPP)
MTB_RECIPE__SUFFIX_CXX:=$(MTB_TOOLCHAIN_$(TOOLCHAIN)__SUFFIX_CXX)
MTB_RECIPE__SUFFIX_CC :=$(MTB_TOOLCHAIN_$(TOOLCHAIN)__SUFFIX_CC)
MTB_RECIPE__SUFFIX_HPP:=$(MTB_TOOLCHAIN_$(TOOLCHAIN)__SUFFIX_HPP)
MTB_RECIPE__SUFFIX_O  :=$(MTB_TOOLCHAIN_$(TOOLCHAIN)__SUFFIX_O)
MTB_RECIPE__SUFFIX_A  :=$(MTB_TOOLCHAIN_$(TOOLCHAIN)__SUFFIX_A)
MTB_RECIPE__SUFFIX_AR :=$(MTB_TOOLCHAIN_$(TOOLCHAIN)__SUFFIX_AR)
MTB_RECIPE__SUFFIX_D  :=$(MTB_TOOLCHAIN_$(TOOLCHAIN)__SUFFIX_D)
MTB_RECIPE__SUFFIX_LS :=$(MTB_TOOLCHAIN_$(TOOLCHAIN)__SUFFIX_LS)
MTB_RECIPE__SUFFIX_MAP:=$(MTB_TOOLCHAIN_$(TOOLCHAIN)__SUFFIX_MAP)
MTB_RECIPE__SUFFIX_TARGET:=$(MTB_TOOLCHAIN_$(TOOLCHAIN)__SUFFIX_TARGET)
MTB_RECIPE__SUFFIX_PROGRAM:=$(MTB_TOOLCHAIN_$(TOOLCHAIN)__SUFFIX_PROGRAM)
################################################################################
# \file defines.mk
#
# \brief
# Defines, needed for the PSOC(TM) Edge build recipe.
#
################################################################################
# \copyright
# (c) 2021-2025, Cypress Semiconductor Corporation (an Infineon company) or
# an affiliate of Cypress Semiconductor Corporation. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
################################################################################

ifeq ($(WHICHFILE),true)
$(info Processing $(lastword $(MAKEFILE_LIST)))
endif

include $(MTB_TOOLS__RECIPE_DIR)/make/recipe/defines_common.mk

ifneq ($(OTA_SUPPORT),)
# OTA post-build script needs python.
CY_PYTHON_REQUIREMENT=true
endif

################################################################################
# General
################################################################################
_MTB_RECIPE__PROGRAM_INTERFACE_SUPPORTED:=KitProg3 JLink
#
# Compactibility interface for this recipe make
#
MTB_RECIPE__INTERFACE_VERSION:=2
MTB_RECIPE__EXPORT_INTERFACES:=3 4 5

MTB_RECIPE__NINJA_SUPPORT:=1 2

ifeq ($(MTB_TYPE),PROJECT)
_MTB_RECIPE__IS_MULTI_CORE_APPLICATION:=true
endif

#
# List the supported toolchains
#
ifdef CY_SUPPORTED_TOOLCHAINS
MTB_SUPPORTED_TOOLCHAINS?=$(CY_SUPPORTED_TOOLCHAINS)
else
MTB_SUPPORTED_TOOLCHAINS?=GCC_ARM IAR ARM LLVM_ARM
endif

ifeq ($(TOOLCHAIN),ARM)
PC_SYMBOL=__main
SP_SYMBOL=Image$$$$ARM_LIB_STACK$$$$ZI$$$$Limit
else ifeq ($(TOOLCHAIN),IAR)
PC_SYMBOL=Reset_Handler
SP_SYMBOL=CSTACK$$$$Limit
else ifeq ($(TOOLCHAIN),GCC_ARM)
PC_SYMBOL=Reset_Handler
SP_SYMBOL=__StackTop
endif

#
# Define the default device mode
#
VCORE_ATTRS?=SECURE

#
# Architecure specifics
#
_MTB_RECIPE__OPENOCD_CHIP_NAME:=cat1d
_MTB_RECIPE__JLINK_DEVICE_CM0_CFG:=PSE84x_CM0p
_MTB_RECIPE__OPENOCD_DEVICE_CFG:=infineon/pse84xgxs2.cfg
ifneq ($(filter EPC4,$(DEVICE_$(DEVICE)_FEATURES)),)
_MTB_RECIPE__OPENOCD_DEVICE_CFG:=infineon/pse84xgxs4.cfg
endif
ifeq (EXPLORER_A0,$(_MTB_RECIPE__DEVICE_DIE))
_MTB_RECIPE__JLINK_DEVICE_CM0_CFG:=PSE84x_A0_CM0p
_MTB_RECIPE__OPENOCD_DEVICE_CFG:=infineon/pse84_a0.cfg
endif
ifeq ($(APPTYPE), ram)
_MTB_RECIPE__APPTYPE_DIR:=ram
_MTB_RECIPE__BITFILE_LIFECYCLE_SUBDIR:=
_MTB_RECIPE__PREBUILT_SECURE_APP=secure_region.hex
_MTB_RECIPE__PREBUILT_CM0_IMAGE=cm0_boot_app.elf
ifeq ($(BITFILE_PROVISIONED),false)
_MTB_RECIPE__BITFILE_LIFECYCLE_SUBDIR:=virgin
else ifeq ($(BITFILE_PROVISIONED),true)
_MTB_RECIPE__BITFILE_LIFECYCLE_SUBDIR:=_normal
else
_MTB_RECIPE__BITFILE_LIFECYCLE_SUBDIR:=normal
endif
else #ifeq ($(APPTYPE), flash)
_MTB_RECIPE__APPTYPE_DIR:=flash
# Generate specific configs for bare bitfile with MVP bootrom
ifeq ($(BITFILE_PROVISIONED),false)
_MTB_RECIPE__PREBUILT_SECURE_APP=secure_region_rram.bin
_MTB_RECIPE__PREBUILT_CM0_IMAGE=cm0_boot_app_rram.elf
_MTB_RECIPE__BITFILE_LIFECYCLE_SUBDIR:=virgin
else ifeq ($(BITFILE_PROVISIONED),true)
_MTB_RECIPE__BITFILE_LIFECYCLE_SUBDIR:=_normal
_MTB_RECIPE__PREBUILT_SECURE_APP=secure_region.hex
else
_MTB_RECIPE__BITFILE_LIFECYCLE_SUBDIR:=normal
endif
endif

# Always use secure alias for programming PSE84x_CM33_S
_MTB_RECIPE__JLINK_DEVICE_CFG_PROGRAM:=PSE84xGxS2_CM33_S
ifneq ($(filter EPC4,$(DEVICE_$(DEVICE)_FEATURES)),)
_MTB_RECIPE__JLINK_DEVICE_CFG_PROGRAM:=PSE84xGxS4_CM33_S
endif
ifeq (EXPLORER_A0,$(_MTB_RECIPE__DEVICE_DIE))
_MTB_RECIPE__JLINK_DEVICE_CFG_PROGRAM:=PSE84x_A0_CM33_S
else
# Explorer B0
ifneq ($(filter PSE84_PSVP,$(DEFINES)),)
_MTB_RECIPE__JLINK_DEVICE_CFG_PROGRAM:=PSE84x_PSVP_CM33_S
endif
endif

ifeq ($(MTB_RECIPE__CORE),CM33)
# CM33 core
_MTB_RECIPE__JLINK_DEVICE_CFG:=PSE84xGxS2_CM33_S
ifneq ($(filter EPC4,$(DEVICE_$(DEVICE)_FEATURES)),)
_MTB_RECIPE__JLINK_DEVICE_CFG:=PSE84xGxS4_CM33_S
endif
ifeq (EXPLORER_A0,$(_MTB_RECIPE__DEVICE_DIE))
_MTB_RECIPE__JLINK_DEVICE_CFG:=PSE84x_A0_CM33_S
else
# Explorer B0
ifneq ($(filter PSE84_PSVP,$(DEFINES)),)
_MTB_RECIPE__JLINK_DEVICE_CFG:=PSE84x_PSVP_CM33_S
endif
endif
ifneq ($(filter NON_SECURE,$(VCORE_ATTRS)),)
_MTB_RECIPE__OPENOCD_RESET_TARGET:=cm33_ns
else
_MTB_RECIPE__OPENOCD_RESET_TARGET:=cm33
endif
else
# CM55 core
_MTB_RECIPE__OPENOCD_RESET_TARGET:=cm55
_MTB_RECIPE__JLINK_DEVICE_CFG:=PSE84x_CM55
ifeq (EXPLORER_A0,$(_MTB_RECIPE__DEVICE_DIE))
_MTB_RECIPE__JLINK_DEVICE_CFG:=PSE84x_A0_CM55
endif
endif # MTB_RECIPE_CORE

ifneq ($(filter PSE84_PSVP,$(DEFINES)),)
_MTB_RECIPE__OPENOCD_BOARD=set BOARD psvp
endif

ifeq ($(MTB_PROBE_INTERFACE),jtag)
_MTB_RECIPE__OPENOCD_PROBE_FREQUENCY?=adapter speed 8000;
else
_MTB_RECIPE__OPENOCD_PROBE_FREQUENCY?=adapter speed 12000;
endif

# MVE support
# If MVE is not available on device then MVE_SELECT=NO_MVE.
# If MVE is available on device and VFP_SELECT=softfloat, then MVE_SELECT=MVE-I,
# else MVE_SELECT=<empty> (MVE-F mode).
ifeq ($(filter $(CORE_NAME)_MVE_PRESENT,$(DEVICE_$(DEVICE)_FEATURES)),)
MVE_SELECT?=NO_MVE
else
ifeq ($(VFP_SELECT),softfloat)
MVE_SELECT?=MVE-I
else
MVE_SELECT?=
endif
endif
################################################################################
# \file defines_common.mk
#
# \brief
# Common variables and targets for defines.mk
#
################################################################################
# \copyright
# (c) 2018-2025, Cypress Semiconductor Corporation (an Infineon company) or
# an affiliate of Cypress Semiconductor Corporation. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
################################################################################

ifeq ($(WHICHFILE),true)
$(info Processing $(lastword $(MAKEFILE_LIST)))
endif

################################################################################
# BSP
################################################################################

ifneq (1,$(words $(DEVICE_$(DEVICE)_CORES)))
_MTB_RECIPE__IS_MULTI_CORE_DEVICE:=true
endif

ifneq (,$(filter StandardSecure,$(DEVICE_$(DEVICE)_FEATURES)))
_MTB_RECIPE__IS_SECURE_DEVICE:=true
endif
ifneq (,$(filter SecureBoot,$(DEVICE_$(DEVICE)_FEATURES)))
_MTB_RECIPE__IS_SECURE_DEVICE:=true
endif

_MTB_RECIPE__DEVICE_DIE:=$(DEVICE_$(DEVICE)_DIE)

_MTB_RECIPE__DEVICE_FLASH_KB:=$(DEVICE_$(DEVICE)_FLASH_KB)

ifeq ($(MTB_RECIPE__CORE),CM55)
MTB_RECIPE__VFP_SELECT_DEFAULT=hardfp
endif

ifneq ($(filter $(_MTB_RECIPE__DEVICE_DIE)_PSVP,$(DEFINES)),)
_MTB_RECIPE__OPENOCD_BOARD=set BOARD psvp
endif################################################################################
# \file recipe_setup.mk
#
# \brief
# Standardized recipe / toolchain variable setup.
#
################################################################################
# \copyright
# (c) 2018-2025, Cypress Semiconductor Corporation (an Infineon company) or
# an affiliate of Cypress Semiconductor Corporation. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
################################################################################

ifeq ($(WHICHFILE),true)
$(info Processing $(lastword $(MAKEFILE_LIST)))
endif

################################################################################
# Final variables that will control the build process
################################################################################

# Elf to bin conversion tool
MTB_RECIPE__ELF2BIN:=$(MTB_TOOLCHAIN_$(TOOLCHAIN)__ELF2BIN)

# Run ELF2BIN conversion
# $(1) : artifact elf
# $(2) : artifact bin
mtb_recipe__elf2bin=$(mtb_toolchain_$(TOOLCHAIN)__elf2bin)

# Compilers, assembler, linker, etc.
CC:=$(MTB_TOOLCHAIN_$(TOOLCHAIN)__CC)
CXX:=$(MTB_TOOLCHAIN_$(TOOLCHAIN)__CXX)
AS:=$(MTB_TOOLCHAIN_$(TOOLCHAIN)__AS)
AS_UC:=$(MTB_TOOLCHAIN_$(TOOLCHAIN)__AS_UC)
AS_LC:=$(MTB_TOOLCHAIN_$(TOOLCHAIN)__AS_LC)
AR:=$(MTB_TOOLCHAIN_$(TOOLCHAIN)__AR)
LD:=$(MTB_TOOLCHAIN_$(TOOLCHAIN)__LD)

ifeq ($(AS_UC),)
AS_UC:=$(AS)
endif
ifeq ($(AS_LC),)
AS_LC:=$(AS)
endif
ifeq ($(AS),)
ifeq ($(TOOLCHAIN),ARM)
AS:=$(AS_LC)
else
AS:=$(AS_UC)
endif
endif

# Toolchain specific flags
MTB_RECIPE__OUTPUT_OPTION:=$(MTB_TOOLCHAIN_$(TOOLCHAIN)__OUTPUT_OPTION)
MTB_RECIPE__ARCHIVE_LIB_OUTPUT_OPTION:=$(MTB_TOOLCHAIN_$(TOOLCHAIN)__ARCHIVE_LIB_OUTPUT_OPTION)
MTB_RECIPE__MAPFILE:=$(MTB_TOOLCHAIN_$(TOOLCHAIN)__MAPFILE)
MTB_RECIPE__STARTGROUP:=$(MTB_TOOLCHAIN_$(TOOLCHAIN)__STARTGROUP)
MTB_RECIPE__ENDGROUP:=$(MTB_TOOLCHAIN_$(TOOLCHAIN)__ENDGROUP)
MTB_RECIPE__LSFLAGS:=$(MTB_TOOLCHAIN_$(TOOLCHAIN)__LSFLAGS)
MTB_RECIPE__INCRSPFILE:=$(MTB_TOOLCHAIN_$(TOOLCHAIN)__INCRSPFILE)
MTB_RECIPE__OBJRSPFILE:=$(MTB_TOOLCHAIN_$(TOOLCHAIN)__OBJRSPFILE)

ifneq ($(APPNAME),)

# LS provided by the user's app
ifneq ($(LINKER_SCRIPT),)
_MTB_RECIPE__LINKER_SCRIPT_USER:=$(LINKER_SCRIPT)
ifeq ($(MTB_RECIPE__LINKER_SCRIPT),)
ifneq ($(wildcard $(call mtb_core__escaped_path,$(_MTB_RECIPE__LINKER_SCRIPT_USER))),)
MTB_RECIPE__LINKER_SCRIPT:=$(_MTB_RECIPE__LINKER_SCRIPT_USER)
else
$(call mtb__error,Unable to find linker script '$(LINKER_SCRIPT)'.)
endif
endif # ($(_MTB_RECIPE__LINKER_SCRIPT_USER),)
endif # ($(LINKER_SCRIPT),)

# LS provided by custom BSP logic.
ifneq ($(MTB_BSP__LINKER_SCRIPT),)
_MTB_RECIPE__LINKER_SCRIPT_BSP:=$(MTB_BSP__LINKER_SCRIPT)
ifeq ($(MTB_RECIPE__LINKER_SCRIPT),)
ifneq ($(wildcard $(call mtb_core__escaped_path,$(_MTB_RECIPE__LINKER_SCRIPT_BSP))),)
MTB_RECIPE__LINKER_SCRIPT:=$(_MTB_RECIPE__LINKER_SCRIPT_BSP)
else
$(call mtb__error,Unable to find linker script '$(MTB_BSP__LINKER_SCRIPT)'.)
endif
endif # ($(_MTB_RECIPE__LINKER_SCRIPT_BSP),)
endif # ($(MTB_BSP__LINKER_SCRIPT),)

# LS provided by the user's BSP (complex multi-core type)
_MTB_RECIPE__LINKER_SCRIPT_MC1:=$(MTB_TOOLS__TARGET_DIR)/COMPONENT_$(MTB_RECIPE__CORE)/TOOLCHAIN_$(TOOLCHAIN)/linker.$(MTB_RECIPE__SUFFIX_LS)
ifeq ($(MTB_RECIPE__LINKER_SCRIPT),)
ifneq ($(wildcard $(call mtb_core__escaped_path,$(_MTB_RECIPE__LINKER_SCRIPT_MC1))),)
MTB_RECIPE__LINKER_SCRIPT:=$(_MTB_RECIPE__LINKER_SCRIPT_MC1)
endif
endif

# LS provided by the user's BSP (simple multi-core)
_MTB_RECIPE__LINKER_SCRIPT_MC2:=$(MTB_TOOLS__TARGET_DIR)/COMPONENT_$(MTB_RECIPE__CORE_NAME)/TOOLCHAIN_$(TOOLCHAIN)/linker.$(MTB_RECIPE__SUFFIX_LS)
ifeq ($(MTB_RECIPE__LINKER_SCRIPT),)
ifneq ($(wildcard $(call mtb_core__escaped_path,$(_MTB_RECIPE__LINKER_SCRIPT_MC2))),)
MTB_RECIPE__LINKER_SCRIPT:=$(_MTB_RECIPE__LINKER_SCRIPT_MC2)
endif
endif

# LS provided by the user's BSP (single-core)
_MTB_RECIPE__LINKER_SCRIPT_SC:=$(MTB_TOOLS__TARGET_DIR)/TOOLCHAIN_$(TOOLCHAIN)/linker.$(MTB_RECIPE__SUFFIX_LS)
ifeq ($(MTB_RECIPE__LINKER_SCRIPT),)
ifneq ($(wildcard $(call mtb_core__escaped_path,$(_MTB_RECIPE__LINKER_SCRIPT_SC))),)
MTB_RECIPE__LINKER_SCRIPT:=$(_MTB_RECIPE__LINKER_SCRIPT_SC)
endif
endif

ifeq ($(wildcard $(call mtb_core__escaped_path,$(MTB_RECIPE__LINKER_SCRIPT))),)
$(call mtb__error,Unable to find linker.$(MTB_RECIPE__SUFFIX_LS) in $(_MTB_RECIPE__LINKER_SCRIPT_MC1)$(MTB__COMMA) $(_MTB_RECIPE__LINKER_SCRIPT_MC2)$(MTB__COMMA) or $(_MTB_RECIPE__LINKER_SCRIPT_SC).)
endif

ifeq ($(TOOLCHAIN),A_Clang)
include $(MTB_RECIPE__LINKER_SCRIPT)
endif

else # ($(APPNAME),)
MTB_RECIPE__LINKER_SCRIPT=
endif # ($(APPNAME),)


# Compiler, assember, linker, etc. arguments.
MTB_RECIPE__CFLAGS=$(MTB_TOOLCHAIN_$(TOOLCHAIN)__CFLAGS) $(CFLAGS)
MTB_RECIPE__CXXFLAGS=$(MTB_TOOLCHAIN_$(TOOLCHAIN)__CXXFLAGS) $(CXXFLAGS)
ifneq ($(MTB_TOOLCHAIN_$(TOOLCHAIN)__ASFLAGS_UC),)
MTB_RECIPE__ASFLAGS_UC=$(MTB_TOOLCHAIN_$(TOOLCHAIN)__ASFLAGS_UC) $(ASFLAGS)
else
MTB_RECIPE__ASFLAGS_UC=$(MTB_TOOLCHAIN_$(TOOLCHAIN)__ASFLAGS) $(ASFLAGS)
endif
ifneq ($(MTB_TOOLCHAIN_$(TOOLCHAIN)__ASFLAGS_LC),)
MTB_RECIPE__ASFLAGS_LC=$(MTB_TOOLCHAIN_$(TOOLCHAIN)__ASFLAGS_LC) $(ASFLAGS)
else
MTB_RECIPE__ASFLAGS_LC=$(MTB_TOOLCHAIN_$(TOOLCHAIN)__ASFLAGS) $(ASFLAGS)
endif
ifneq ($(MTB_TOOLCHAIN_$(TOOLCHAIN)__INCRSPFILE_ASM_UC),)
MTB_RECIPE__INCRSPFILE_ASM_UC=$(MTB_TOOLCHAIN_$(TOOLCHAIN)__INCRSPFILE_ASM_UC)
else
MTB_RECIPE__INCRSPFILE_ASM_UC=$(MTB_TOOLCHAIN_$(TOOLCHAIN)__INCRSPFILE_ASM)
endif
ifneq ($(MTB_TOOLCHAIN_$(TOOLCHAIN)__INCRSPFILE_ASM_LC),)
MTB_RECIPE__INCRSPFILE_ASM_LC=$(MTB_TOOLCHAIN_$(TOOLCHAIN)__INCRSPFILE_ASM_LC)
else
MTB_RECIPE__INCRSPFILE_ASM_LC=$(MTB_TOOLCHAIN_$(TOOLCHAIN)__INCRSPFILE_ASM)
endif
# intentionally does not have $(ARFLAGS).
# ARFLAGS have a non-empty default value. See https://www.gnu.org/software/make/manual/html_node/Implicit-Variables.html
# Add ARFLAGS will cause BWC issues.
MTB_RECIPE__ARFLAGS=$(MTB_TOOLCHAIN_$(TOOLCHAIN)__ARFLAGS)
ifneq ($(APPNAME),)
MTB_RECIPE__LDFLAGS=$(MTB_TOOLCHAIN_$(TOOLCHAIN)__LDFLAGS) $(LDFLAGS)
else
MTB_RECIPE__LDFLAGS=
endif # ($(APPNAME),)

ifneq ($(APPNAME),)
ifeq ($(TOOLCHAIN),A_Clang)
MTB_RECIPE__LDFLAGS+=$(ACLANG_MEM_LDFLAGS)
else
MTB_RECIPE__LDFLAGS+=$(MTB_RECIPE__LSFLAGS)"$(MTB_RECIPE__LINKER_SCRIPT)"
endif # ($(TOOLCHAIN),A_Clang)
endif # ($(APPNAME),)

# For BWC, be careful with _ [legacy] vs __ [new/standard]
ifneq ($(MTB_RECIPE_CFLAGS),)
MTB_RECIPE__CFLAGS:=$(MTB_RECIPE_CFLAGS)
endif

ifneq ($(MTB_RECIPE_CXXFLAGS),)
MTB_RECIPE__CXXFLAGS:=$(MTB_RECIPE_CXXFLAGS)
endif

ifneq ($(MTB_RECIPE_ASFLAGS),)
MTB_RECIPE__ASFLAGS:=$(MTB_RECIPE_ASFLAGS)
endif

ifneq ($(MTB_RECIPE_ARFLAGS),)
MTB_RECIPE__ARFLAGS:=$(MTB_RECIPE_ARFLAGS)
endif

ifneq ($(APPNAME),)
ifneq ($(MTB_RECIPE_LDFLAGS),)
MTB_RECIPE__LDFLAGS:=$(MTB_RECIPE_LDFLAGS)
endif # ($(MTB_RECIPE_LDFLAGS),)
endif # ($(APPNAME),)

# N.B., can't use := because it may references $@
MTB_RECIPE__DEPENDENCIES=$(MTB_TOOLCHAIN_$(TOOLCHAIN)__DEPENDENCIES)
MTB_RECIPE__EXPLICIT_DEPENDENCIES=$(MTB_TOOLCHAIN_$(TOOLCHAIN)__EXPLICIT_DEPENDENCIES)

MTB_RECIPE__TOOLCHAIN_INCLUDES:=$(MTB_TOOLCHAIN_$(TOOLCHAIN)__INCLUDES)
MTB_RECIPE__TOOLCHAIN_DEFINES:=$(MTB_TOOLCHAIN_$(TOOLCHAIN)__DEFINES)

MTB_RECIPE__TOOLCHAIN_VSCODE_INTELLISENSE_MODE:=$(MTB_TOOLCHAIN_$(TOOLCHAIN)__VSCODE_INTELLISENSE_MODE)
MTB_RECIPE__TOOLCHAIN_VSCODE_PROBLEM_MATCHER:=$(MTB_TOOLCHAIN_$(TOOLCHAIN)__VSCODE_PROBLEM_MATCHER)
################################################################################
# \file library.mk
#
# \brief
# Makefile to identify the presence of MTB_HAL
#
################################################################################
# \copyright
# Copyright 2022-2024 Cypress Semiconductor Corporation (an Infineon company) or
# an affiliate of Cypress Semiconductor Corporation
#
# SPDX-License-Identifier: Apache-2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
################################################################################

COMPONENTS+=MTB_HAL MTB_DEVICE_SUPPORT
################################################################################
# \file config.mk
#
# \brief
# Configurator-related routines
#
################################################################################
# \copyright
# (c) 2018-2025, Cypress Semiconductor Corporation (an Infineon company) or
# an affiliate of Cypress Semiconductor Corporation. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
################################################################################

ifeq ($(WHICHFILE),true)
$(info Processing $(lastword $(MAKEFILE_LIST)))
endif

################################################################################
# online simulator launch
################################################################################

##########################
# online-simulator
##########################

# CY_ALL_TOOLS_DIRS wildcard/filter-out tools that don't exist on disk. Provide an absolute path to these tools so that they won't be filtered out
ifeq ($(OS),Windows_NT)
_MTB_CORE__SIM_CMD=$(subst \,/,${COMSPEC})
 _MTB_CORE__SIM_ARGS=/c start
else
ifneq ($(findstring Darwin,$(shell uname)),)
_MTB_CORE__SIM_CMD=/usr/bin/open
_MTB_CORE__SIM_ARGS=
else
_MTB_CORE__SIM_CMD=/usr/bin/xdg-open
_MTB_CORE__SIM_ARGS=
endif
endif

online_simulator:
ifeq ($(MTB_RECIPE__SIM_URL),)
	$(error $(MTB__NEWLINE)Infineon simulator not supported for the current device)
else
	$(if $(wildcard $(_MTB_CORE__SIM_CMD)),,$(error $(_MTB_CORE__SIM_CMD) not found. The online simulator be accessed through the following URL: $(MTB_RECIPE__SIM_URL_RAW)))
	$(info $(MTB__NEWLINE)Opening the Infineon online simulator $(MTB_RECIPE__SIM_URL_RAW))
	$(MTB__NOISE) $(_MTB_CORE__SIM_CMD) $(_MTB_CORE__SIM_ARGS) $(MTB_RECIPE__SIM_URL) $(MTB__JOB_BACKGROUND)
endif

.PHONY: online_simulator
################################################################################
# \file help.mk
#
# \brief
# Default help documentation
#
################################################################################
# \copyright
# (c) 2018-2025, Cypress Semiconductor Corporation (an Infineon company) or
# an affiliate of Cypress Semiconductor Corporation. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
################################################################################

ifeq ($(WHICHFILE),true)
$(info Processing $(lastword $(MAKEFILE_LIST)))
endif

#
# General targets
#
CY_HELP_all=Same as build.
CY_HELP_all_VERBOSE=This target is equivalent to the "build" target.
CY_HELP_getlibs=Updates all dependencies for the application.
CY_HELP_getlibs_VERBOSE=This target finds and processes all .mtb files and uses the git command to clone or pull\
					the code as appropriate. The target generates .mtb files for indirect dependencies.\
					Then, it checks out the specific tag listed in the .mtb file. The Project Creator and\
					Library Manager invoke this process automatically.
CY_HELP_build=Builds the application.
CY_HELP_build_VERBOSE=The build process involves source auto-discovery, code generation, prebuild, and postbuilds.\
					For faster incremental builds, use the "qbuild" target to skip the auto-generation step.\
					For multi-core applications, running this target builds all projects in the application, and generates a combined hex file.
CY_HELP_build_proj=Build the current project.
CY_HELP_build_proj_VERBOSE=Build the current project in the application. In single-core applications, this target is the same as the "build" target.
CY_HELP_qbuild=Builds the application using the previous build's source list.
CY_HELP_qbuild_VERBOSE=When no other sources need to be auto-discovered, this target can be used to skip\
					the auto-discovery step for a faster incremental build. This also skips any prebuild steps.
CY_HELP_qbuild_proj=Builds the current project using the previous build's source list.\
					In single-core applications, this target is the same as the "qbuild" target.
CY_HELP_qbuild_proj_VERBOSE=When no other sources need to be auto-discovered, this target can be used to skip\
					the auto-discovery step for a faster incremental build. This also skips any prebuild steps.
CY_HELP_program=Builds the application and programs it to the target device. In multi-core applications, this will program the combined hex file.
CY_HELP_program_VERBOSE=The build process performs the same operations as the "build" target. Upon completion,\
					the artifact is programmed to the board.
CY_HELP_program_proj=Builds the current project and programs it to the target device." In single-core applications, this target is the same as the "program" target.
CY_HELP_program_proj_VERBOSE=The build process performs the same operations as the "build" target. Upon completion,\
					the artifact is programmed to the board.
CY_HELP_qprogram=Programs a built application to the target device without rebuilding.
CY_HELP_qprogram_VERBOSE=This target allows programming an existing artifact to the board without a build step.
CY_HELP_qprogram_proj=Programs the current built project to the target device without rebuilding.\
					In single-core applications, this target is the same as the "qprogram" target.
CY_HELP_qprogram_proj_VERBOSE=This target allows programming an existing artifact to the board without a build step.
CY_HELP_clean=Cleans the application and project "build" directories.
CY_HELP_clean_VERBOSE=The directories and all its contents are deleted from disk.
CY_HELP_clean_proj=Clean the current project's "build" directory.\
					In signle-core applications, this target is the same as the "clean" target.
CY_HELP_clean_proj_VERBOSE=The directory and all its contents are deleted from disk.
CY_HELP_help=Prints this help documentation. Use the CY_HELP=<Name of make target or variable> to see the verbose documentation for a\
					particular make target or variable. For example, CY_HELP=build.
CY_HELP_help_VERBOSE=
CY_HELP_prebuild=Generates code for the application.
CY_HELP_prebuild_VERBOSE=Runs custom prebuild commands to generate source code.

#
# IDE targets
#
CY_HELP_eclipse=Generates Eclipse IDE launch configs and project files.
CY_HELP_eclipse_VERBOSE=This target generates .cproject and .project files if they do not exist in the application root directory.\
					It also creates a set of launch configurations, as well as formatting for IntelliSense.
CY_HELP_vscode=Generates VS Code IDE files.
CY_HELP_vscode_VERBOSE=This target generates VS Code files for debug/program launches, IntelliSense, and custom tasks.\
					These overwrite the existing files in the application directory except for settings.json.
CY_HELP_ewarm8=Deprecated as of core-make 3.3.0, replaced by "ewarm".
CY_HELP_ewarm8_VERBOSE=
CY_HELP_uvision5=Deprecated as of core-make 3.3.0, replaced by "uvision".
CY_HELP_uvision5_VERBOSE=
CY_HELP_ewarm=Generates an IAR Embedded Workbench v8 or later IDE .ipcf file. Available since core-make 3.3.0.
CY_HELP_ewarm_VERBOSE=$(MTB__SPACE)$(MTB__SPACE)This target generates a .ipcf file that allows you to export your application to the IAR\
					Embedded Workbench v8 IDE or later. The .ipcf file is overwritten every time this target is run.\
					The CY_IDE_PRJNAME variable controls the .ipcf file name. By default it is equal to APPNAME.\
					If you already have .ipcf file with non-default name and you want to refresh it then\
					ensure that you set the CY_IDE_PRJNAME variable with the .ipcf file name.\
					This target requires setting the TOOLCHAIN make variable to IAR. Setting the CY_IDE_PRJNAME make variable is optional.\
					$(MTB__NEWLINE)$(MTB__NEWLINE)Example: make ewarm TOOLCHAIN=IAR CY_IDE_PRJNAME=Empty_Application\
					$(MTB__NEWLINE)$(MTB__NEWLINE)Notes:\
					$(MTB__NEWLINE)$(MTB__SPACE)$(MTB__SPACE)1. For older versions of core-make use "make ewarm8".\
					$(MTB__NEWLINE)$(MTB__SPACE)$(MTB__SPACE)2. Application export using ModusToolbox 3.0 requires Python3 to be installed\
					and present either in the PATH variable or set explicitly using CY_PYTHON_PATH make variable.
CY_HELP_uvision=Generates a Keil uVision v5 or later IDE .cprj file. Available since core-make 3.3.0.
CY_HELP_uvision_VERBOSE=$(MTB__SPACE)$(MTB__SPACE)This target generates a CMSIS a .cprj file that allows you to export your application\
					to Keil uVision v5 IDE or later. The .cprj file is overwritten every time this target is run. Files in the default\
					cmsis output directory will be automatically excluded when calling "make uvision".\
					The CY_IDE_PRJNAME variable controls the .cprj file name. By default it is equal to APPNAME.\
					If you already have .cprj file with non-default name and you want to refresh it then\
					ensure that you set the CY_IDE_PRJNAME variable with the .cprj file name.\
					This target requires you to set the TOOLCHAIN make variable to ARM. Setting the CY_IDE_PRJNAME make variable is optional.\
					$(MTB__NEWLINE)$(MTB__NEWLINE)Example: make uvision TOOLCHAIN=ARM CY_IDE_PRJNAME=Empty_Application.\
					$(MTB__NEWLINE)$(MTB__NEWLINE)Notes:\
					$(MTB__NEWLINE)$(MTB__SPACE)$(MTB__SPACE)1. For older versions of core-make use "make uvision5".\
					$(MTB__NEWLINE)$(MTB__SPACE)$(MTB__SPACE)2. Application export using ModusToolbox 3.0 requires Python3 to be installed\
					and present either in the PATH variable or set explicitly using CY_PYTHON_PATH make variable.

#
# Utility targets
#
CY_HELP_progtool=Opens a prompt to interact with the fw-loader tool. Only available for devices that use KitProg3.
CY_HELP_progtool_VERBOSE=This target helps you to interact with the device using the fw-loader tool. When launched,\
					the tool lists supported commands and connected devices, and then prompts you to run fw-loader\
					command(s) on the device.
CY_HELP_check=This target checks your system to ensure all required tools, including bash, git, perl, etc., are available.
CY_HELP_check_VERBOSE=Not all tools are necessary for every build recipe. This target allows you\
					to get an idea of which tools are missing if a build fails in an unexpected way.
CY_HELP_printlibs=Prints the status of the library repos.
CY_HELP_printlibs_VERBOSE=This target parses through the library repos and prints the SHA1 commit ID for each library.\
					It also shows whether the repo is clean (no changes) or dirty (modified or new files).

#
# Project defined targets
#
CY_HELP_project_prebuild=Project-specific prebuild target.
CY_HELP_project_prebuild_VERBOSE=This target defines the commands that run for a project during the prebuild step.\
					Leave this target empty if no prebuild commands are required for the project.
CY_HELP_project_postbuild=Project specific postbuild target.
CY_HELP_project_postbuild_VERBOSE=This target defines the commands that run for a project during the postbuild step\
					between the linking and hex file generation. Leave this target empty if no postbuild commands are\
					required for the project.

#
# Basic configuration
#
CY_HELP_TARGET=Specifies the target board/kit. (e.g. CY8CPROTO-062-4343W)
CY_HELP_TARGET_VERBOSE=Current target in this application is, [ $(TARGET) stored at $(SEARCH_TARGET_$(TARGET)) ].\
						$(MTB__NEWLINE)$(MTB__NEWLINE)Note: To change the TARGET for an application, use the Library Manager GUI or CLI.
CY_HELP_CORE=Specifies the name of the Arm core for which a project is building (e.g. CM4).
CY_HELP_CORE_VERBOSE=Use this variable to select compiler and linker options to build a project for a specified Arm core.\
				$(MTB__NEWLINE)$(MTB__NEWLINE)Example Usage: make build CORE=CM4
CY_HELP_CORE_NAME=Specifies the name of the on-chip core for which a project is building (e.g. CM7_0).
CY_HELP_CORE_NAME_VERBOSE=Use this variable to select compiler and linker options to build a project for a specified on-chip core.\
				$(MTB__NEWLINE)$(MTB__NEWLINE)Example Usage: make build CORE_NAME=CM7_0.
CY_HELP_APPNAME=Specifies the name of the app. (e.g. "AppV1" -> AppV1.elf)
CY_HELP_APPNAME_VERBOSE=This variable is used to set the name of the application artifact (programmable image).\
				$(MTB__NEWLINE)$(MTB__NEWLINE)Example Usage: make build APPNAME="AppV1"\
				$(MTB__NEWLINE)$(MTB__NEWLINE)Note: This variable may also be used when generating launch configs when invoking the "eclipse" target.\
				$(MTB__NEWLINE)Example Usage: make eclipse APPNAME="AppV1"
CY_HELP_CY_IDE_PRJNAME=This variable contains the name that will be used to create the application name and support files for an IDE\
				during application export.
CY_HELP_CY_IDE_PRJNAME_VERBOSE=Use this variable to provide a custom name of an application for the IDE during application export.\
				If CY_IDE_PRJNAME is not set on the command line, then APPNAME (which is specified in the Makefile) is used as the\
				default. This name can be important for some IDEs to set a correct meaningful name for the application, support files,\
				and launch configurations in the IDE.
CY_HELP_TOOLCHAIN=Specifies the toolchain for building the application. (e.g. GCC_ARM)
CY_HELP_TOOLCHAIN_VERBOSE=Supported toolchains for this target are: [ $(sort $(MTB_SUPPORTED_TOOLCHAINS) $(CY_SUPPORTED_TOOLCHAINS)) ].\
							$(MTB__NEWLINE)$(MTB__NEWLINE)Example Usage: make build TOOLCHAIN=IAR
CY_HELP_MTB_SUPPORTED_TOOLCHAINS=Specifies the list of supported toolchains for building the application. (e.g. GCC_ARM IAR ARM)
CY_HELP_MTB_SUPPORTED_TOOLCHAINS_VERBOSE=This can be used to override the default list of supported toolchains.\
						$(MTB__NEWLINE)$(MTB__NEWLINE)Example Usage (within Makefile): MTB_SUPPORTED_TOOLCHAINS=GCC_ARM IAR ARM
CY_HELP_CONFIG=Specifies the configuration option for the build [Debug Release].
CY_HELP_CONFIG_VERBOSE=The CONFIG variable is not limited to Debug/Release. It can be\
						other values. However in those instances, the build system will not configure the optimization flags.\
						Debug=lowest optimization, Release=highest optimization. The optimization flags are toolchain-specific.\
						If you go with your custom config then you can manually set the optimization flag in the CFLAGS.\
						$(MTB__NEWLINE)$(MTB__NEWLINE)Example Usage: make build CONFIG=Release
CY_HELP_VERBOSE=Specifies whether the build is silent [false] or verbose [true].
CY_HELP_VERBOSE_VERBOSE=Setting VERBOSE to true may help in debugging build errors/warnings. By default it is set to false.\
						$(MTB__NEWLINE)$(MTB__NEWLINE)Example Usage: make build VERBOSE=true

#
# Advanced configuration
#
CY_HELP_SOURCES=Specifies C/C++ and assembly files outside of the application directory.
CY_HELP_SOURCES_VERBOSE=This can be used to include files external to the application directory.\
						The path can be both absolute or relative to the application directory.\
						$(MTB__NEWLINE)$(MTB__NEWLINE)Example Usage (within Makefile): SOURCES+=path/to/file/Source1.c
CY_HELP_INCLUDES=Specifies include paths outside of the application directory.
CY_HELP_INCLUDES_VERBOSE=Note: These MUST NOT have -I prepended.\
						The path can be either absolute or relative to the application directory.\
						$(MTB__NEWLINE)$(MTB__NEWLINE)Example Usage (within Makefile): INCLUDES+=path/to/headers
CY_HELP_DEFINES=Specifies additional defines passed to the compiler.
CY_HELP_DEFINES_VERBOSE=Note: These MUST NOT have -D prepended.\
						$(MTB__NEWLINE)$(MTB__NEWLINE)Example Usage (within Makefile): DEFINES+=EXAMPLE_DEFINE=0x01
CY_HELP_MVE_SELECT=Selects M-Profile Vector Extension (MVE) operating mode [NO_MVE MVE-I MVE-F].
CY_HELP_MVE_SELECT_VERBOSE=If not defined, this value defaults to MVE-F.\
							$(MTB__NEWLINE)$(MTB__NEWLINE)Example Usage (within Makefile): MVE_SELECT=MVE-I.\
							MVE_SELECT is ignored for IAR toolchain.
CY_HELP_VFP_SELECT=Selects hard/soft ABI or full software for floating-point operations [softfp hardfp softfloat].
CY_HELP_VFP_SELECT_VERBOSE=If not defined, this value defaults to hardfp for CM55 core and softfp for the other cores.\
							$(MTB__NEWLINE)$(MTB__NEWLINE)Example Usage (within Makefile): VFP_SELECT=hardfp
CY_HELP_VFP_SELECT_PRECISION=Selects single-precision or double-precision operating mode for floating-point operations.
CY_HELP_VFP_SELECT_PRECISION_VERBOSE=If not defined, this value defaults to double-precision.\
							Enable single-precision mode by using the "singlefp" option.\
							$(MTB__NEWLINE)$(MTB__NEWLINE)Example Usage (within Makefile): VFP_SELECT_PRECISION=singlefp
CY_HELP_CFLAGS=Prepends additional C compiler flags.
CY_HELP_CFLAGS_VERBOSE=Example Usage (within Makefile): CFLAGS+= -Werror -Wall -O2
CY_HELP_CXXFLAGS=Prepends additional C++ compiler flags.
CY_HELP_CXXFLAGS_VERBOSE=Example Usage (within Makefile): CXXFLAGS+= -finline-functions
CY_HELP_ASFLAGS=Prepends additional assembler flags.
CY_HELP_ASFLAGS_VERBOSE=Example Usage (within Makefile): ASFLAGS+= -masm=armasm
CY_HELP_LDFLAGS=Prepends additional linker flags.
CY_HELP_LDFLAGS_VERBOSE=Example Usage (within Makefile): LDFLAGS+= -nodefaultlibs
CY_HELP_LDLIBS=Includes application-specific prebuilt libraries.
CY_HELP_LDLIBS_VERBOSE=Note: If additional libraries need to be added using -l or -L, add to the\
						CY_RECIPE_EXTRA_LIBS make variable. Usage is similar to CFLAGS.\
						$(MTB__NEWLINE)$(MTB__NEWLINE) Example Usage (within Makefile): LDLIBS+=../MyBinaryFolder/binary.o
CY_HELP_LINKER_SCRIPT=Specifies a custom linker script location.
CY_HELP_LINKER_SCRIPT_VERBOSE=This linker script overrides the default. Note: Additional\
					linker scripts can be added for GCC via the LDFLAGS variable as a -L option.\
					$(MTB__NEWLINE)$(MTB__NEWLINE)Example Usage (within Makefile): LINKER_SCRIPT=path/to/file/Custom_Linker1.ld
CY_HELP_PREBUILD=DEPRECATED. Replaced with "project_prebuild" make target.
CY_HELP_PREBUILD_VERBOSE=DEPRECATED. Replaced with "project_prebuild" make target.
CY_HELP_POSTBUILD=DEPRECATED. Replaced with "project_postbuild" make target.
CY_HELP_POSTBUILD_VERBOSE=DEPRECATED. Replaced with "project_postbuild" make target.
CY_HELP_COMPONENTS=Adds component-specific files to the build.
CY_HELP_COMPONENTS_VERBOSE=Create a directory named COMPONENT_<VALUE> and place your files.\
					Then include the <VALUE> to this make variable to have that feature library\
					be included in the build. For example, to include a directory named COMPONENT_ACCELEROMETER into auto-discovery,\
					then add the following make variable to the Makefile COMPONENT=ACCELEROMETER. If the make variable\
					does not include the <VALUE>, then that library will not be included in the build.\
					$(MTB__NEWLINE)$(MTB__NEWLINE)Example Usage (within Makefile): COMPONENTS+=CUSTOM_CONFIGURATION
CY_HELP_DISABLE_COMPONENTS=Removes component-specific files from the build.
CY_HELP_DISABLE_COMPONENTS_VERBOSE=Include a <VALUE> to this make variable to have that feature library\
					be excluded in the build. For example, To exclude the contents of COMPONENT_BSP_DESIGN_MODUS\
					directory, set DISABLE_COMPONENTS=BSP_DESIGN_MODUS as shown.\
					$(MTB__NEWLINE)$(MTB__NEWLINE)Example Usage (within Makefile): DISABLE_COMPONENTS=BSP_DESIGN_MODUS
CY_HELP_SEARCH=List of paths to include in auto-discovery. (e.g. ../mtb_shared/lib1)
CY_HELP_SEARCH_VERBOSE=The SEARCH variable can also be used by the application to include other directories to auto-discovery.\
					$(MTB__NEWLINE)$(MTB__NEWLINE)Example Usage (within Makefile): SEARCH+=directory_containing_source_files
CY_HELP_SKIP_CODE_GEN=Disables code generation for configurators when building.
CY_HELP_SKIP_CODE_GEN_VERBOSE=When set to a non-empty value, the build process will not run code generation for configurators.\
					$(MTB__NEWLINE)NOTE: By default code examples specify the GeneratedSource directory in .gitignore file.\
					If this variable is used, the GeneratedSouce directory should be removed from the .gitignore file.
CY_HELP_MERGE=List of projects in the application to include when generating a combined hex file.
CY_HELP_MERGE_VERBOSE=By Default, building a multi-core application will generate a combined hex file from its sub-projects.\
					This variable can be set from the application Makefile to override the set of projects to generate a combined hex file from.
CY_HELP_VCORE_ATTRS=Virtual core attribute.
CY_HELP_VCORE_ATTRS_VERBOSE=Currently supported values are "SECURE", "NON_SECURE", and ""(empty string).\
					It is used to specify the core property for ARM Cortex-M security extension.
CY_HELP_NSC_VENEER=The path of the veneer object file used for Non-Secure-Callbacks.
CY_HELP_NSC_VENEER_VERBOSE=When specified for a secure project, it specifies the path of the veneer object file to generate.\
					When specified for a non-secure project, it specifies the path of the veneer object file to include.
CY_HELP_NINJA=Whether To compile and link the source files using ninja build system.\
					By default this will be enabled when using ModusToolbox tools package 3.4, latest core-make, and latest recipe-make.\
					This can be disabled by setting NINJA to empty string.
CY_HELP_NINJA_VERBOSE=When enabled, "make" will use ninja to manage compile and link commands.\
					In some operating systems, this can speed-up the build process considerably.
#
# BSP variables
#
CY_HELP_DEVICE=Device ID for the primary MCU on the target board/kit. Set by bsp.mk.
CY_HELP_DEVICE_VERBOSE=The device identifier is mandatory for all board/kits.
CY_HELP_ADDITIONAL_DEVICES=IDs for additional devices on the target board/kit. Set by bsp.mk.
CY_HELP_ADDITIONAL_DEVICES_VERBOSE=These include devices such as radios on the board/kit. This variable is optional.
CY_HELP_BSP_PROGRAM_INTERFACE=Specifies the debugging and programming interface to use. The default value and valid values all depend on the BSP.\
					Should be set in the bsp.mk file.
CY_HELP_BSP_PROGRAM_INTERFACE_VERBOSE=Possible values include KitProg3, JLink, and FTDI. Most BSPs will only support a subset of this list.\
					Should be set in the bsp.mk file.

#
# Getlibs variables
#
# I thought CY_GETLIBS_NO_CACHE and CY_GETLIBS_CACHE_PATH were obsolete?
#
CY_HELP_CY_GETLIBS_NO_CACHE=Disables the cache when running getlibs when this variable is set to non-empty.
CY_HELP_CY_GETLIBS_NO_CACHE_VERBOSE=To improve the library creation time, the getlibs target uses a cache\
					located in the user's home directory ($$HOME for macOS/Linux and $$USERPROFILE for Windows). Disabling the\
					cache will result in slower application creation time but may be necessary for bringing in non-Infineon libraries.\
					$(MTB__NEWLINE)$(MTB__NEWLINE)Example Usage: make getlibs CY_GETLIBS_NO_CACHE=true
CY_HELP_CY_GETLIBS_OFFLINE=This feature is no longer supported starting in ModusToolbox 3.1 and has been replaced with Local Content Storage feature.
CY_HELP_CY_GETLIBS_OFFLINE_VERBOSE=
CY_HELP_MTB_USE_LOCAL_CONTENT=If set to a non-empty value, enable local content storage.
CY_HELP_MTB_USE_LOCAL_CONTENT_VERBOSE=Enable local content storage to allow use of ModusToolbox without requiring internet access.\
					$(MTB__NEWLINE)See the LCS Manager CLI User Guide for more information.\
					$(MTB__NEWLINE)This feature is new as of ModusToolbox 3.1.
CY_HELP_CY_GETLIBS_PATH=Path to the intended location of libs info directory.
CY_HELP_CY_GETLIBS_PATH_VERBOSE=The directory contains local libraries and metadata files about shared libraries.\
					The default location is in a directory named /libs.
CY_HELP_CY_GETLIBS_DEPS_PATH=Path to where the library-manager stores .mtb files.
CY_HELP_CY_GETLIBS_DEPS_PATH_VERBOSE=Setting this path allows relocating the directory that the library-manager uses to store\
					the .mtb files in your application. The default location is in a directory named /deps.
CY_HELP_CY_GETLIBS_CACHE_PATH=Absolute path to the cache directory.
CY_HELP_CY_GETLIBS_CACHE_PATH_VERBOSE=The build system caches all cloned repos in a directory named /cache \
					(Default: <HOME>/.modustoolbox/cache). Setting this variable allows the cache to be relocated to\
					elsewhere on disk. Usage is similar to CY_GETLIBS_PATH. To disable the cache entirely, \
					set the CY_GETLIBS_NO_CACHE variable to [true].
CY_HELP_CY_GETLIBS_OFFLINE_PATH=This feature is no longer supported starting in ModusToolbox 3.1 and has been replaced with Local Content Storage feature.
CY_HELP_CY_GETLIBS_OFFLINE_PATH_VERBOSE=
CY_HELP_CY_GETLIBS_SHARED_PATH=Relative path to the shared repo location.
CY_HELP_CY_GETLIBS_SHARED_PATH_VERBOSE=All .mtb files have the format, <URI><COMMIT><LOCATION>.\
					If the <LOCATION> field begins with $$$$ASSET_REPO$$$$, then the repo is deposited in the path\
					specified by the CY_GETLIBS_SHARED_PATH variable. The default is set from the project Makefile.
CY_HELP_CY_GETLIBS_SHARED_NAME=Directory name of the shared repo location.
CY_HELP_CY_GETLIBS_SHARED_NAME_VERBOSE=All .mtb files have the format, <URI><COMMIT><LOCATION>.\
					If the <LOCATION> field begins with $$$$ASSET_REPO$$$$, then the repo is deposited in the directory\
					specified by the CY_GETLIBS_SHARED_NAME variable. By default this is set from the project Makefile.

#
# Path variables
#
CY_HELP_CY_APP_PATH=Relative path to the top-level of the project. (e.g. ./)
CY_HELP_CY_APP_PATH_VERBOSE=Setting this path to other than ./ allows the auto-discovery mechanism\
					to search from a root directory location that is higher than the application directory.\
					For example, CY_APP_PATH=../../ allows auto-discovery of files from a location that is\
					two directories above the location of the Makefile.
CY_HELP_CY_COMPILER_PATH=DEPRECATED. Use CY_COMPILER_GCC_ARM_DIR CY_COMPILER_ARM_DIR CY_COMPILER_IAR_DIR instead.
CY_HELP_CY_COMPILER_PATH_VERBOSE=
CY_HELP_CY_COMPILER_GCC_ARM_DIR=Absolute path to the gcc-arm toolchain directory.
CY_HELP_CY_COMPILER_GCC_ARM_DIR_VERBOSE=Setting this path overrides the default GCC_ARM toolchain directory.\
					It is used when the compiler is located at a non-default directory.\
					Make uses this variable for the path to the assembler, compiler, linker, objcopy, and other toolchain binaries.\
					For example, CY_COMPILER_GCC_ARM_DIR=C:/Program Files (x86)GNU Arm Embedded Toolchain/10 2021.10\
					NOTE: when set in the Makefile, no quotes are required.
CY_HELP_CY_COMPILER_IAR_DIR=Absolute path to the IAR toolchain directory.
CY_HELP_CY_COMPILER_IAR_DIR_VERBOSE=Setting this path overrides the default IAR toolchain directory.\
					It is used when the compiler is located at a non-default directory.\
					Make uses this variable for the path to the assembler, compiler, and linker, and other toolchain binaries.\
					For example, CY_COMPILER_IAR_DIR=C:/Program Files/IAR Systems/Embedded Workbench 9.1/arm\
					NOTE: when set in the Makefile, no quotes are required.
CY_HELP_CY_COMPILER_ARM_DIR=Absolute path to the ARM toolchain directory.
CY_HELP_CY_COMPILER_ARM_DIR_VERBOSE=Setting this path overrides the default ARM toolchain directory.\
					It is used when the compiler is located at a non-default directory.\
					Make uses this variable for the path to the assembler, compiler, linker, objcopy, and other toolchain binaries.\
					For example, CY_COMPILER_ARM_DIR=C:/Program Files/ARMCompiler6.16\
					NOTE: when set in the Makefile, no quotes are required.
CY_HELP_CY_COMPILER_LLVM_ARM_DIR=Absolute path to the LLVM_ARM toolchain directory.
CY_HELP_CY_COMPILER_LLVM_ARM_DIR_VERBOSE=Setting this path overrides the default LLVM_ARM toolchain directory.\
					It is used when the compiler is located at a non-default directory.\
					Make uses this variable for the path to the assembler, compiler, linker, objcopy, and other toolchain binaries.\
					For example, CY_COMPILER_LLVM_ARM_DIR=C:/LLVM-ET-Arm-19.1.5-Windows-x86_64\
					NOTE: when set in the Makefile, no quotes are required.
CY_HELP_CY_TOOLS_DIR=Absolute path to the tools root directory.
CY_HELP_CY_TOOLS_DIR_VERBOSE=Applications must specify the directory of the tools install, which contains the\
					included makefiles and the necessary tools and scripts to build an application. Application Makefiles\
					are configured to automatically search in the standard locations for various platforms.\
					If the tools are not located in the standard location, you may explicitly set this.\
					$(MTB__NEWLINE)$(MTB__NEWLINE)Example Usage: make build CY_TOOLS_DIR="path/to/ModusToolbox/tools_x.y"
CY_HELP_CY_BUILD_LOCATION=Absolute path to the build output directory (Default: ./build).
CY_HELP_CY_BUILD_LOCATION_VERBOSE=The build output directory is structured as /<TARGET>/<CONFIG>/. Setting this variable\
					allows the build artifacts to be located in the directory pointed to by this variable.\
					Content of this directory is automatically excluded from auto-discovery.
CY_HELP_CY_PYTHON_PATH=Specifies the path to the Python executable.
CY_HELP_CY_PYTHON_PATH_VERBOSE=For make targets that depend on Python, the build system looks for a Python 3 in the user's PATH\
					and uses that to invoke python. If however CY_PYTHON_PATH is defined, it will use that python executable.\
					$(MTB__NEWLINE)$(MTB__NEWLINE)Example Usage: CY_PYTHON_PATH="path/to/python/executable/python.exe"
CY_HELP_MTB_JLINK_DIR=Specifies the path to the SEGGER J-Link software install directory "JLink".
CY_HELP_MTB_JLINK_DIR_VERBOSE=Setting this path allows the make system to locate the JLink executable when calling make program.\
					If not specified, make will default to the JLink executable in the PATH variable.\
					When generating launch config for IDE, this will override the default JLink path.\
					$(MTB__NEWLINE)$(MTB__NEWLINE)Example Usage: MTB_JLINK_DIR:=C:/Program Files/SEGGER/JLink

#
# Miscellaneous variables
#
CY_HELP_CY_IGNORE=Adds to the directory and file ignore list. (e.g. ./file1.c ./inc1)
CY_HELP_CY_IGNORE_VERBOSE=Directories and files listed in this variable are ignored in the auto-discovery.\
					This mechanism works in combination with any existing .cyignore files in the application.\
					$(MTB__NEWLINE)$(MTB__NEWLINE)Example Usage: make build CY_IGNORE="path/to/file/ignore_file"
CY_HELP_CY_SIMULATOR_GEN_AUTO=If set to non-empty, automatically generate a simulator archive (if supported by the target device).
CY_HELP_CY_SIMULATOR_GEN_AUTO_VERBOSE=When enabled, build make target will generate a debugging tgz archive for the\
					Infineon online simulator as part of the postbuild process.

# Pass these to CY_HELP to get the full verbose info

CY_HELP_TARGETS_ALL=all getlibs build build_proj qbuild qbuild_proj program program_proj qprogram qprogram_proj \
					debug qdebug attach clean prebuild help check project_prebuild project_postbuild \
					eclipse vscode ewarm uvision modlibs check printlibs
CY_HELP_BASIC_CFG_ALL=TARGET CORE CORE_NAME APPNAME TOOLCHAIN CONFIG VERBOSE
CY_HELP_ADVANCED_CFG_ALL=SOURCES INCLUDES DEFINES VFP_SELECT CFLAGS CXXFLAGS ASFLAGS LDFLAGS LDLIBS LINKER_SCRIPT \
					PREBUILD POSTBUILD COMPONENTS DISABLE_COMPONENTS SEARCH MERGE DEVICE ADDITIONAL_DEVICES
CY_HELP_GETLIBS_ALL=CY_GETLIBS_NO_CACHE CY_HELP_MTB_USE_LOCAL_CONTENT CY_GETLIBS_OFFLINE CY_GETLIBS_PATH CY_GETLIBS_DEPS_PATH CY_GETLIBS_CACHE_PATH \
					CY_GETLIBS_OFFLINE_PATH CY_GETLIBS_SHARED_PATH CY_GETLIBS_SHARED_NAME 
CY_HELP_PATHS_ALL=CY_APP_PATH CY_COMPILER_GCC_ARM_DIR CY_COMPILER_ARM_DIR CY_COMPILER_IAR_DIR \
					CY_COMPILER_PATH CY_TOOLS_DIR CY_BUILD_LOCATION CY_PYTHON_PATH
CY_HELP_MISC_ALL=CY_IGNORE
CY_HELP_PRINT_ALL=$(CY_HELP_TARGETS_ALL) $(CY_HELP_BASIC_CFG_ALL) $(CY_HELP_ADVANCED_CFG_ALL) \
					$(CY_HELP_GETLIBS_ALL) $(CY_HELP_PATHS_ALL) $(CY_HELP_MISC_ALL)

ifneq ($(CY_HELP),)
mtb_help_topic:
	@:
	$(foreach topic,$(CY_HELP),\
	$(if $(CY_HELP_$(topic)),\
	$(info $(MTB__NEWLINE)Topic-specific help for "$(topic)")\
	$(info $(MTB__SPACE)$(MTB__SPACE)Brief: $(CY_HELP_$(topic)))\
	$(info $(MTB__NEWLINE)$(CY_HELP_$(topic)_VERBOSE)),\
	$(info $(MTB__NEWLINE)Topic-specific help for "$(topic) not found")\
	))

help: mtb_help_topic
.PHONY: mtb_help_topic

else
mtb_help_header:
	@:
	$(info                                                                                    )
	$(info ==============================================================================     )
	$(info $(MTB__SPACE)ModusToolbox Build System                                             )
	$(info ==============================================================================     )
	$(info $(MTB__SPACE)(c) 2018-2025, Cypress Semiconductor Corporation (an Infineon company))
	$(info $(MTB__SPACE)or an affiliate of Cypress Semiconductor Corporation.  All rights reserved. )
	$(info $(MTB__SPACE)SPDX-License-Identifier: Apache-2.0                                     )
	$(info                                                                                    )
	$(info $(MTB__SPACE)Licensed under the Apache License, Version 2.0 (the "License");         )
	$(info $(MTB__SPACE)you may not use this file except in compliance with the License.        )
	$(info $(MTB__SPACE)You may obtain a copy of the License at                                 )
	$(info                                                                                    )
	$(info $(MTB__SPACE)$(MTB__SPACE)    http://www.apache.org/licenses/LICENSE-2.0               )
	$(info                                                                                    )
	$(info $(MTB__SPACE)Unless required by applicable law or agreed to in writing, software     )
	$(info $(MTB__SPACE)distributed under the License is distributed on an "AS IS" BASIS,       )
	$(info $(MTB__SPACE)WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.)
	$(info $(MTB__SPACE)See the License for the specific language governing permissions and     )
	$(info $(MTB__SPACE)limitations under the License.                                          )
	$(info ==============================================================================     )
	$(info                                                                                    )
	$(info $(MTB__SPACE)This is the help documentation for the Cypress build system.            )
	$(info $(MTB__SPACE)It lists the supported make targets and make variables.                 )
	$(info                                                                                    )
	$(info $(MTB__SPACE)Usage:   make [target][variable]                                        )
	$(info $(MTB__SPACE)Example: make build TARGET=CY8CPROTO-062-4343W                          )
	$(info                                                                                    )
	$(info $(MTB__SPACE)The CY_HELP make variable can be used for information on a particular   )
	$(info $(MTB__SPACE)make target or variable                                                 )
	$(info                                                                                    )
	$(info $(MTB__SPACE)Usage:   make help CY_HELP=[target/variable]                            )
	$(info $(MTB__SPACE)Example: make help CY_HELP=APPNAME                                      )
	$(info                                                               )
	$(info =======================================                       )
	$(info $(MTB__SPACE)General make targets                               )
	$(info =======================================                       )
	$(info $(MTB__SPACE)all                 $(CY_HELP_all))
	$(info $(MTB__SPACE)getlibs             $(CY_HELP_getlibs))
	$(info $(MTB__SPACE)build               $(CY_HELP_build))
	$(info $(MTB__SPACE)build_proj          $(CY_HELP_build_proj))
	$(info $(MTB__SPACE)qbuild              $(CY_HELP_qbuild))
	$(info $(MTB__SPACE)qbuild_proj         $(CY_HELP_qbuild_proj))
	$(info $(MTB__SPACE)program             $(CY_HELP_program))
	$(info $(MTB__SPACE)program_proj        $(CY_HELP_program_proj))
	$(info $(MTB__SPACE)qprogram            $(CY_HELP_qprogram))
	$(info $(MTB__SPACE)qprogram_proj       $(CY_HELP_qprogram_proj))
	$(info $(MTB__SPACE)clean               $(CY_HELP_clean))
	$(info $(MTB__SPACE)clean_proj          $(CY_HELP_clean_proj))
	$(info $(MTB__SPACE)help                $(CY_HELP_help))
	$(info $(MTB__SPACE)prebuild            $(CY_HELP_prebuild))
	$(info                                                               )
	$(info =======================================                       )
	$(info $(MTB__SPACE)IDE make targets                                   )
	$(info =======================================                       )
	$(info $(MTB__SPACE)eclipse             $(CY_HELP_eclipse))
	$(info $(MTB__SPACE)vscode              $(CY_HELP_vscode))
	$(info $(MTB__SPACE)ewarm               $(CY_HELP_ewarm))
	$(info $(MTB__SPACE)ewarm8              $(CY_HELP_ewarm8))
	$(info $(MTB__SPACE)uvision             $(CY_HELP_uvision))
	$(info $(MTB__SPACE)uvision5            $(CY_HELP_uvision5))
	$(info                                                               )
	$(info =======================================                       )
	$(info $(MTB__SPACE)Utility make targets                               )
	$(info =======================================                       )
	$(info $(MTB__SPACE)progtool            $(CY_HELP_progtool))
	$(info $(MTB__SPACE)printlibs           $(CY_HELP_printlibs))
	$(info $(MTB__SPACE)check               $(CY_HELP_check))
	$(info                                                               )
	$(info =======================================                       )
	$(info $(MTB__SPACE)Basic configuration make variables                 )
	$(info =======================================                       )
	$(info $(MTB__SPACE)TARGET              $(CY_HELP_TARGET))
	$(info $(MTB__SPACE)CORE                $(CY_HELP_CORE))
	$(info $(MTB__SPACE)CORE_NAME           $(CY_HELP_CORE_NAME))
	$(info $(MTB__SPACE)APPNAME             $(CY_HELP_APPNAME))
	$(info $(MTB__SPACE)TOOLCHAIN           $(CY_HELP_TOOLCHAIN))
	$(info $(MTB__SPACE)CONFIG              $(CY_HELP_CONFIG))
	$(info $(MTB__SPACE)VERBOSE             $(CY_HELP_VERBOSE))
	$(info                                                               )
	$(info =======================================                       )
	$(info $(MTB__SPACE)Advanced configuration make variables              )
	$(info =======================================                       )
	$(info $(MTB__SPACE)SOURCES             $(CY_HELP_SOURCES))
	$(info $(MTB__SPACE)INCLUDES            $(CY_HELP_INCLUDES))
	$(info $(MTB__SPACE)DEFINES             $(CY_HELP_DEFINES))
	$(info $(MTB__SPACE)MVE_SELECT          $(CY_HELP_MVE_SELECT))
	$(info $(MTB__SPACE)VFP_SELECT          $(CY_HELP_VFP_SELECT))
	$(info $(MTB__SPACE)VFP_SELECT_PRECISION $(CY_HELP_VFP_SELECT_PRECISION))
	$(info $(MTB__SPACE)CFLAGS              $(CY_HELP_CFLAGS))
	$(info $(MTB__SPACE)CXXFLAGS            $(CY_HELP_CXXFLAGS))
	$(info $(MTB__SPACE)ASFLAGS             $(CY_HELP_ASFLAGS))
	$(info $(MTB__SPACE)LDFLAGS             $(CY_HELP_LDFLAGS))
	$(info $(MTB__SPACE)LDLIBS              $(CY_HELP_LDLIBS))
	$(info $(MTB__SPACE)LINKER_SCRIPT       $(CY_HELP_LINKER_SCRIPT))
	$(info $(MTB__SPACE)PREBUILD            $(CY_HELP_PREBUILD))
	$(info $(MTB__SPACE)POSTBUILD           $(CY_HELP_POSTBUILD))
	$(info $(MTB__SPACE)COMPONENTS          $(CY_HELP_COMPONENTS))
	$(info $(MTB__SPACE)DISABLE_COMPONENTS  $(CY_HELP_DISABLE_COMPONENTS))
	$(info $(MTB__SPACE)SEARCH              $(CY_HELP_SEARCH))
	$(info $(MTB__SPACE)SKIP_CODE_GEN       $(CY_HELP_SKIP_CODE_GEN))
	$(info $(MTB__SPACE)MERGE               $(CY_HELP_MERGE))
	$(info $(MTB__SPACE)VCORE_ATTRS         $(CY_HELP_VCORE_ATTRS))
	$(info $(MTB__SPACE)NSC_VENEER          $(CY_HELP_NSC_VENEER))
	$(info $(MTB__SPACE)NINJA               $(CY_HELP_NINJA))
	$(info                                                               )
	$(info =======================================                       )
	$(info $(MTB__SPACE)BSP make variables                                 )
	$(info =======================================                       )
	$(info $(MTB__SPACE)DEVICE              $(CY_HELP_DEVICE))
	$(info $(MTB__SPACE)ADDITIONAL_DEVICES  $(CY_HELP_ADDITIONAL_DEVICES))
	$(info $(MTB__SPACE)BSP_PROGRAM_INTERFACE $(CY_HELP_BSP_PROGRAM_INTERFACE))
	$(info                                                               )
	$(info =======================================                       )
	$(info $(MTB__SPACE)Getlibs make variables                             )
	$(info =======================================                       )
ifeq ($(MTB_TOOLS__INTERFACE_VERSION),)
	$(info $(MTB__SPACE)CY_GETLIBS_NO_CACHE $(CY_HELP_CY_GETLIBS_NO_CACHE))
	$(info $(MTB__SPACE)CY_GETLIBS_CACHE_PATH  $(CY_HELP_CY_GETLIBS_CACHE_PATH))
	$(info $(MTB__SPACE)CY_GETLIBS_OFFLINE  $(CY_HELP_CY_GETLIBS_OFFLINE))
	$(info $(MTB__SPACE)CY_GETLIBS_OFFLINE_PATH  $(CY_HELP_CY_GETLIBS_OFFLINE_PATH))
endif
ifeq ($(MTB_TOOLS__INTERFACE_VERSION),1)
	$(info $(MTB__SPACE)MTB_USE_LOCAL_CONTENT $(CY_HELP_MTB_USE_LOCAL_CONTENT))
endif
	$(info $(MTB__SPACE)CY_GETLIBS_PATH     $(CY_HELP_CY_GETLIBS_PATH))
	$(info $(MTB__SPACE)CY_GETLIBS_DEPS_PATH  $(CY_HELP_CY_GETLIBS_DEPS_PATH))
	$(info $(MTB__SPACE)CY_GETLIBS_SHARED_PATH $(CY_HELP_CY_GETLIBS_SHARED_PATH))
	$(info $(MTB__SPACE)CY_GETLIBS_SHARED_NAME $(CY_HELP_CY_GETLIBS_SHARED_NAME))
	$(info                                                               )
	$(info =======================================                       )
	$(info $(MTB__SPACE)Path make variables                                )
	$(info =======================================                       )
	$(info $(MTB__SPACE)CY_APP_PATH         $(CY_HELP_CY_APP_PATH))
	$(info $(MTB__SPACE)CY_COMPILER_PATH    $(CY_HELP_CY_COMPILER_PATH))
	$(info $(MTB__SPACE)CY_COMPILER_GCC_ARM_DIR $(CY_HELP_CY_COMPILER_GCC_ARM_DIR))
	$(info $(MTB__SPACE)CY_COMPILER_IAR_DIR $(CY_HELP_CY_COMPILER_IAR_DIR))
	$(info $(MTB__SPACE)CY_COMPILER_ARM_DIR $(CY_HELP_CY_COMPILER_ARM_DIR))
	$(info $(MTB__SPACE)CY_COMPILER_LLVM_ARM_DIR $(CY_HELP_CY_COMPILER_LLVM_ARM_DIR))
	$(info $(MTB__SPACE)CY_TOOLS_DIR        $(CY_HELP_CY_TOOLS_DIR))
	$(info $(MTB__SPACE)CY_BUILD_LOCATION   $(CY_HELP_CY_BUILD_LOCATION))
	$(info $(MTB__SPACE)CY_PYTHON_PATH      $(CY_HELP_CY_PYTHON_PATH))
	$(info $(MTB__SPACE)MTB_JLINK_DIR       $(CY_HELP_MTB_JLINK_DIR))
	$(info                                                               )
	$(info =======================================                       )
	$(info $(MTB__SPACE)Miscellaneous make variables                       )
	$(info =======================================                       )
	$(info $(MTB__SPACE)CY_IGNORE                $(CY_HELP_CY_IGNORE))
	$(info $(MTB__SPACE)CY_IDE_PRJNAME           $(CY_HELP_CY_IDE_PRJNAME))
	$(info $(MTB__SPACE)CY_SIMULATOR_GEN_AUTO    $(CY_HELP_CY_SIMULATOR_GEN_AUTO))
	$(info )

mtb_help_tools_start: mtb_help_header
	@:
	$(info =======================================                       )
	$(info $(MTB__SPACE)Tools targets                       )
	$(info =======================================                       )
mtb_help_tools_end: mtb_help_tools_start
help: mtb_help_tools_end
endif

.PHONY: help mtb_help_header mtb_help_tools_start mtb_help_tools_end
################################################################################
# \file build.mk
#
# \brief
# Performs the compilation and linking steps.
#
################################################################################
# \copyright
# (c) 2018-2025, Cypress Semiconductor Corporation (an Infineon company) or
# an affiliate of Cypress Semiconductor Corporation. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
################################################################################

ifeq ($(WHICHFILE),true)
$(info Processing $(lastword $(MAKEFILE_LIST)))
endif

################################################################################
# Defines
################################################################################

# Define application target
CY_PREBUILD_TARGET=$(MTB_TOOLS__OUTPUT_CONFIG_DIR)/$(APPNAME).$(MTB_RECIPE__SUFFIX_TARGET)

################################################################################
# Targets
################################################################################

_mtb_build_prebuild_mkdirs:
	$(MTB__NOISE)echo; \
	mkdir -p $(MTB_TOOLS__OUTPUT_CONFIG_DIR) $(MTB__SILENT_OUTPUT)

recipe_prebuild: _mtb_build_prebuild_mkdirs

bsp_prebuild: recipe_prebuild

project_prebuild: bsp_prebuild

_mtb_build_prebuild_postprint: project_prebuild
	$(MTB__NOISE)echo "Prebuild operations complete"

#
# Top-level prebuild dependency
#
prebuild: _mtb_build_prebuild_postprint

.PHONY: prebuild recipe_prebuild project_prebuild bsp_prebuild
.PHONY: _mtb_build_prebuild_mkdirs _mtb_build_prebuild_postprint
################################################################################
# \file recipe.mk
#
# \brief
# Set up a set of defines, includes, software components, linker script,
# Pre and Post build steps and call a macro to create a specific ELF file.
#
################################################################################
# \copyright
# (c) 2021-2025, Cypress Semiconductor Corporation (an Infineon company) or
# an affiliate of Cypress Semiconductor Corporation. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
################################################################################

ifeq ($(WHICHFILE),true)
$(info Processing $(lastword $(MAKEFILE_LIST)))
endif

ifeq ($(MTB_TYPE),PROJECT)
_MTB_RECIPE__APPLICATION_RELATIVE=..
else
_MTB_RECIPE__APPLICATION_RELATIVE=.
endif

# Determine programming interface. Use BSP_PROGRAM_INTERFACE if it is set,
# otherwise use the default one
_MTB_RECIPE__DEFAULT_PROGRAM_INTERFACE?=KitProg3
ifeq (,$(BSP_PROGRAM_INTERFACE))
_MTB_RECIPE__PROGRAM_INTERFACE_SUBDIR:=$(_MTB_RECIPE__DEFAULT_PROGRAM_INTERFACE)
else
_MTB_RECIPE__PROGRAM_INTERFACE_SUBDIR:=$(BSP_PROGRAM_INTERFACE)
endif

ifeq (KitProg3,$(_MTB_RECIPE__PROGRAM_INTERFACE_SUBDIR))
_MTB_RECIPE__PROGRAM_INTERFACE_LAUNCH_SUFFIX:=(KitProg3_MiniProg4)
else ifeq (JLink,$(_MTB_RECIPE__PROGRAM_INTERFACE_SUBDIR))
_MTB_RECIPE__PROGRAM_INTERFACE_LAUNCH_SUFFIX:=(JLink)
else ifeq (FTDI,$(_MTB_RECIPE__PROGRAM_INTERFACE_SUBDIR))
_MTB_RECIPE__PROGRAM_INTERFACE_LAUNCH_SUFFIX:=(FTDI)
endif

# debug interface validation
debug_interface_check:
ifeq ($(filter $(_MTB_RECIPE__PROGRAM_INTERFACE_SUBDIR), $(_MTB_RECIPE__PROGRAM_INTERFACE_SUPPORTED)),)
	$(error "$(_MTB_RECIPE__PROGRAM_INTERFACE_SUBDIR)" interface is not supported for this device. \
	Supported interfaces are "$(_MTB_RECIPE__PROGRAM_INTERFACE_SUPPORTED)")
endif

################################################################################
# Application hex file paths
################################################################################

# Application build output is one level up relative to the project directory
_MTB_RECIPE__APP_HEX_DIR:=$(_MTB_RECIPE__APPLICATION_RELATIVE)/build
_MTB_RECIPE__PRJ_HEX_DIR:=$(_MTB_RECIPE__APP_HEX_DIR)/project_hex

# Override the hex path for qprogram_proj target
ifeq ($(MTB_TYPE),PROJECT)
ifneq ($(MTB_APPLICATION_SUBPROJECTS),)
_MTB_RECIPE__APP_HEX_FILE:=$(call mtb__path_normalize,$(_MTB_RECIPE__APP_HEX_DIR)/app_combined.$(MTB_RECIPE__SUFFIX_PROGRAM))
endif
endif

_MTB_RECIPE__PROJECT_DIR_NAME:=$(notdir $(realpath $(MTB_TOOLS__PRJ_DIR)))

################################################################################
# Compiler and linker arguments
################################################################################

#
# Defines construction
#
ifneq ($(DEFINES),)
_MTB_RECIPE__USER_DEFINES=$(addprefix -D,$(DEFINES))
endif
ifneq ($(LIBNAME),)
_MTB_RECIPE__USER_NAME=-DCY_LIBNAME_$(subst -,_,$(LIBNAME))
else
_MTB_RECIPE__USER_NAME=-DCY_APPNAME_$(subst -,_,$(APPNAME))
endif

ifneq (,$(MTB_RECIPE__CORE_NAME))
_MTB_RECIPE__CORE_NAME_DEFINES=-DCORE_NAME_$(MTB_RECIPE__CORE_NAME)=1
endif

# Note: _MTB_RECIPE__DEFAULT_COMPONENT is needed as DISABLE_COMPONENTS cannot be empty
_MTB_RECIPE__COMPONENT_LIST=$(filter-out $(DISABLE_COMPONENTS) _MTB_RECIPE__DEFAULT_COMPONENT,$(MTB_CORE__FULL_COMPONENT_LIST))

MTB_RECIPE__DEFINES=$(sort \
	$(_MTB_RECIPE__USER_DEFINES)\
	$(_MTB_RECIPE__USER_NAME)\
	-DTARGET_$(subst -,_,$(TARGET))\
	-DCY_TARGET_BOARD=$(subst -,_,$(TARGET))\
	$(addprefix -DCOMPONENT_,$(subst .,_,$(subst -,_,$(_MTB_RECIPE__COMPONENT_LIST))))\
	$(MTB_RECIPE__TOOLCHAIN_DEFINES)\
	-DCY_SUPPORTS_DEVICE_VALIDATION\
	$(_MTB_RECIPE__CORE_NAME_DEFINES)\
	$(addprefix -D, $(subst -,_,$(DEVICE)) $(BSP_DEFINES) $(DEVICE_DEFINES)))

#
# Includes construction
#
MTB_RECIPE__INCLUDES=\
	$(addprefix -I,$(INCLUDES))\
	$(addprefix -I,$(MTB_CORE__SEARCH_APP_INCLUDES))\
	$(addprefix -I,$(MTB_RECIPE__TOOLCHAIN_INCLUDES))

#
# Sources construction
#
MTB_RECIPE__SOURCE=$(MTB_CORE__SEARCH_APP_SOURCE)

#
# Libraries construction
#
MTB_RECIPE__LIBS=$(LDLIBS) $(MTB_CORE__SEARCH_APP_LIBS)

#
# Prebuild step
#
recipe_prebuild:

#
# Postbuild step
#
ifeq ($(LIBNAME),)

_MTB_RECIPE__PROG_FILE:=$(MTB_TOOLS__OUTPUT_CONFIG_DIR)/$(APPNAME)$(_MTB_RECIPE__PROG_FILE_SUFFIX).$(MTB_RECIPE__SUFFIX_PROGRAM)
_MTB_RECIPE__TARG_FILE:=$(MTB_TOOLS__OUTPUT_CONFIG_DIR)/$(APPNAME).$(MTB_RECIPE__SUFFIX_TARGET)
_MTB_RECIPE__BIN_FILE:=$(MTB_TOOLS__OUTPUT_CONFIG_DIR)/$(APPNAME).bin
ifneq (,$(MTB_IDE__TARG_FILE))
_MTB_RECIPE__TARG_DEPENDENCY_FILE:=$(call mtb__path_normalize,$(MTB_IDE__TARG_FILE))
else
_MTB_RECIPE__TARG_DEPENDENCY_FILE:=$(_MTB_RECIPE__TARG_FILE)
endif

recipe_postbuild: $(_MTB_RECIPE__PROG_FILE) $(_MTB_RECIPE__BIN_FILE)

$(_MTB_RECIPE__PROG_FILE): $(_MTB_RECIPE__TARG_DEPENDENCY_FILE)
ifeq ($(TOOLCHAIN),ARM)
	$(MTB_TOOLCHAIN_ARM__BASE_DIR)/bin/fromelf --output $@ --i32combined $<
else
	$(MTB_TOOLCHAIN_GCC_ARM__OBJCOPY) -O ihex $< $@
endif

$(_MTB_RECIPE__BIN_FILE): $(_MTB_RECIPE__TARG_DEPENDENCY_FILE)
ifeq ($(TOOLCHAIN),ARM)
	$(MTB_TOOLCHAIN_ARM__BASE_DIR)/bin/fromelf --output=$@ --bincombined $<
else
	$(MTB_TOOLCHAIN_GCC_ARM__BASE_DIR)/bin/arm-none-eabi-objcopy -O binary $< $@
endif

# There are 2 dependencies on this file.
# The first is from build_proj and qbuild_proj. In ths case, we are promoting. We add project_postbuild as a dependency becase that could modify the file.
# The second is when generating the combined hex file or fist stage build. In this case, we are not promoting and cannot depend on project_postbuild as that is only defined in second stage.
_MTB_RECIPE__PROMOTE=false

MTB_RECIPE__LAST_CONFIG_DIR:=$(MTB_TOOLS__OUTPUT_BASE_DIR)/last_config
$(MTB_RECIPE__LAST_CONFIG_DIR):|
	$(MTB__NOISE)mkdir -p $(MTB_RECIPE__LAST_CONFIG_DIR)

_MTB_RECIPE__LAST_CONFIG_PROG_FILE:=$(MTB_RECIPE__LAST_CONFIG_DIR)/$(APPNAME).$(MTB_RECIPE__SUFFIX_PROGRAM)
_MTB_RECIPE__LAST_CONFIG_TARG_FILE:=$(MTB_RECIPE__LAST_CONFIG_DIR)/$(APPNAME).$(MTB_RECIPE__SUFFIX_TARGET)
_MTB_RECIPE__LAST_CONFIG_PROG_FILE_D:=$(_MTB_RECIPE__LAST_CONFIG_PROG_FILE).d
_MTB_RECIPE__LAST_CONFIG_BIN_FILE:=$(MTB_RECIPE__LAST_CONFIG_DIR)/$(APPNAME).bin
_MTB_RECIPE__LAST_CONFIG_BIN_FILE_D:=$(_MTB_RECIPE__LAST_CONFIG_BIN_FILE).d

build_proj qbuild_proj: $(_MTB_RECIPE__LAST_CONFIG_PROG_FILE) $(_MTB_RECIPE__LAST_CONFIG_BIN_FILE)

$(_MTB_RECIPE__LAST_CONFIG_PROG_FILE_D): | $(MTB_RECIPE__LAST_CONFIG_DIR)
	$(MTB__NOISE)echo $(_MTB_RECIPE__PROG_FILE) > $@.tmp
	$(MTB__NOISE)if ! cmp -s "$@" "$@.tmp"; then \
		mv -f "$@.tmp" "$@" ; \
	else \
		rm -f "$@.tmp"; \
	fi

$(_MTB_RECIPE__LAST_CONFIG_BIN_FILE_D): | $(MTB_RECIPE__LAST_CONFIG_DIR)
	$(MTB__NOISE)echo $(_MTB_RECIPE__BIN_FILE) > $@.tmp
	$(MTB__NOISE)if ! cmp -s "$@" "$@.tmp"; then \
		mv -f "$@.tmp" "$@" ; \
	else \
		rm -f "$@.tmp"; \
	fi

$(_MTB_RECIPE__LAST_CONFIG_PROG_FILE): $(_MTB_RECIPE__PROG_FILE) $(_MTB_RECIPE__LAST_CONFIG_PROG_FILE_D) | mtb_conditional_postbuild
	$(MTB__NOISE)cp -f $(_MTB_RECIPE__PROG_FILE) $@
	$(MTB__NOISE)cp -f $(_MTB_RECIPE__TARG_DEPENDENCY_FILE) $(_MTB_RECIPE__LAST_CONFIG_TARG_FILE)

$(_MTB_RECIPE__LAST_CONFIG_BIN_FILE): $(_MTB_RECIPE__BIN_FILE) $(_MTB_RECIPE__LAST_CONFIG_BIN_FILE_D) | mtb_conditional_postbuild
	$(MTB__NOISE)cp -f $(_MTB_RECIPE__BIN_FILE) $@

ifeq ($(MTB_APPLICATION_PROMOTE),true)
_MTB_RECIPE__PROMOTE=true
endif
ifneq ($(COMBINE_SIGN_JSON),)
_MTB_RECIPE__PROMOTE=true
endif

_MTB_RECIPE__COPIED_PROJECT_PROG_FILE=$(_MTB_RECIPE__PRJ_HEX_DIR)/$(_MTB_RECIPE__PROJECT_DIR_NAME).$(MTB_RECIPE__SUFFIX_PROGRAM)
_MTB_RECIPE__COPIED_PROJECT_BIN_FILE=$(_MTB_RECIPE__PRJ_HEX_DIR)/$(_MTB_RECIPE__PROJECT_DIR_NAME).bin

ifeq ($(_MTB_RECIPE__PROMOTE),true)
build_proj qbuild_proj: $(_MTB_RECIPE__COPIED_PROJECT_PROG_FILE) $(_MTB_RECIPE__COPIED_PROJECT_BIN_FILE) $(_MTB_RECIPE__LAST_CONFIG_PROG_FILE) $(_MTB_RECIPE__LAST_CONFIG_BIN_FILE)
$(_MTB_RECIPE__COPIED_PROJECT_PROG_FILE) $(_MTB_RECIPE__COPIED_PROJECT_BIN_FILE) : | mtb_conditional_postbuild
endif

$(_MTB_RECIPE__PRJ_HEX_DIR):
	$(MTB__NOISE)mkdir -p $(_MTB_RECIPE__PRJ_HEX_DIR)

$(_MTB_RECIPE__COPIED_PROJECT_PROG_FILE).d : | $(_MTB_RECIPE__PRJ_HEX_DIR)
	$(MTB__NOISE)echo $(_MTB_RECIPE__PROG_FILE) > $@.tmp
	$(MTB__NOISE)if ! cmp -s "$@" "$@.tmp"; then \
		mv -f "$@.tmp" "$@" ; \
	else \
		rm -f "$@.tmp"; \
	fi

$(_MTB_RECIPE__COPIED_PROJECT_BIN_FILE).d : | $(_MTB_RECIPE__PRJ_HEX_DIR)
	$(MTB__NOISE)echo $(_MTB_RECIPE__BIN_FILE) > $@.tmp
	$(MTB__NOISE)if ! cmp -s "$@" "$@.tmp"; then \
		mv -f "$@.tmp" "$@" ; \
	else \
		rm -f "$@.tmp"; \
	fi

# Copy project-specific program image to the application directory
# Conditionally copy the elf file so that it may be used as debugging symbols.
$(_MTB_RECIPE__COPIED_PROJECT_PROG_FILE): $(_MTB_RECIPE__PROG_FILE) $(_MTB_RECIPE__COPIED_PROJECT_PROG_FILE).d
	$(MTB__NOISE)cp -f $(_MTB_RECIPE__PROG_FILE) $@
$(_MTB_RECIPE__COPIED_PROJECT_BIN_FILE): $(_MTB_RECIPE__BIN_FILE) $(_MTB_RECIPE__COPIED_PROJECT_BIN_FILE).d
	$(MTB__NOISE)cp -f $(_MTB_RECIPE__BIN_FILE) $@
ifneq ($(COMBINE_SIGN_JSON),)
	$(MTB__NOISE)cp -f $(_MTB_RECIPE__TARG_DEPENDENCY_FILE) $(_MTB_RECIPE__PRJ_HEX_DIR)/$(_MTB_RECIPE__PROJECT_DIR_NAME).$(MTB_RECIPE__SUFFIX_TARGET)
endif

ifeq ($(COMBINE_SIGN_JSON),)
ifneq ($(MTB_APPLICATION_SUBPROJECTS),)
# Multi-core application build/qbuild targets run application_postbuild
# for the first project in the MTB_PROJECTS list
application_postbuild: $(_MTB_RECIPE__APP_HEX_FILE)

$(_MTB_RECIPE__APP_HEX_FILE): $(foreach project,$(MTB_APPLICATION_SUBPROJECTS),$(_MTB_RECIPE__PRJ_HEX_DIR)/$(project).$(MTB_RECIPE__SUFFIX_PROGRAM) $(_MTB_RECIPE__PRJ_HEX_DIR)/$(project).$(MTB_RECIPE__SUFFIX_PROGRAM).d)
ifeq ($(CY_TOOL_srec_cat_EXE_ABS),)
	$(call mtb__error,Unable to proceed. srec_cat executable not found)
endif
	$(info Generating combined hex file: $(_MTB_RECIPE__APP_HEX_FILE))
	$(MTB__NOISE)$(CY_TOOL_srec_cat_EXE_ABS) $(foreach project,$(MTB_APPLICATION_SUBPROJECTS),$(_MTB_RECIPE__PRJ_HEX_DIR)/$(project).$(MTB_RECIPE__SUFFIX_PROGRAM) -intel) -o $(_MTB_RECIPE__APP_HEX_FILE) -intel --Output_Block_Size 16

endif #($(MTB_APPLICATION_SUBPROJECTS),)
else #($(COMBINE_SIGN_JSON),)

# use ?= as default
_MTB_RECIPE__COMBINE_SIGN_INTERFACE_VERSION?=1
_MTB_RECIPE__COMBINE_SIGN_VERSION:=$(lastword $(filter $(CY_TOOL_signcombinemkgen_SUPPORTED_INTERFACES),$(_MTB_RECIPE__COMBINE_SIGN_INTERFACE_VERSION)))

ifneq ($(CY_TOOL_signcombinemkgen_EXE_ABS),)
_MTB_RECIPE__NORMALIZED_COMBINE_SIGN_JSON=$(_MTB_RECIPE__APPLICATION_RELATIVE)/$(COMBINE_SIGN_JSON)
_MTB_RECIPE__COMBINE_SIGN_MK_FILE:=$(_MTB_RECIPE__APP_HEX_DIR)/$(notdir $(COMBINE_SIGN_JSON)).mk

$(_MTB_RECIPE__COMBINE_SIGN_MK_FILE): $(_MTB_RECIPE__NORMALIZED_COMBINE_SIGN_JSON)
	$(MTB__NOISE)$(CY_TOOL_signcombinemkgen_EXE_ABS) -i $(_MTB_RECIPE__NORMALIZED_COMBINE_SIGN_JSON) -o $(_MTB_RECIPE__COMBINE_SIGN_MK_FILE).tmp -v $(_MTB_RECIPE__COMBINE_SIGN_VERSION)
	$(MTB__NOISE)if ! cmp -s "$@" "$@.tmp"; then \
		mv -f "$@.tmp" "$@" ; \
	else \
		rm -f "$@.tmp"; \
	fi

recipe_prebuild: $(_MTB_RECIPE__COMBINE_SIGN_MK_FILE)

include $(_MTB_RECIPE__COMBINE_SIGN_MK_FILE)
endif #($(CY_TOOL_signcombinemkgen_EXE_ABS),)

# override the default app_combine.hex as the file being programmed.
ifneq ($(MTB_COMBINE_SIGN_DEFAULT)$(MTB_COMBINE_SIGN_$(MTB_COMBINE_SIGN_DEFAULT)_HEX_PATH),)
# Used the hex file from combiner-signer.json
_MTB_RECIPE__APP_HEX_FILE:=$(call mtb__path_normalize,$(MTB_COMBINE_SIGN_$(MTB_COMBINE_SIGN_DEFAULT)_HEX_PATH))
endif

application_postbuild: sign_combine
ifeq ($(MTB_TYPE),COMBINED)
build_proj qbuild_proj: sign_combine
endif
# Running "make build_proj" not as part of an application "make build". In this case, also run sign_combine step.
ifeq ($(MTB_APPLICATION_SUBPROJECTS),)
build_proj qbuild_proj: sign_combine sign_combine_check_inputs
sign_combine: sign_combine_check_inputs
sign_combine_check_inputs : | $(_MTB_RECIPE__COPIED_PROJECT_PROG_FILE) $(_MTB_RECIPE__LAST_CONFIG_PROG_FILE) $(_MTB_RECIPE__COPIED_PROJECT_BIN_FILE) $(_MTB_RECIPE__LAST_CONFIG_BIN_FILE)
endif

endif #($(COMBINE_SIGN_JSON),)
endif #($(LIBNAME),)

ifneq (,$(filter CM33 CM55,$(CORE)))
include $(MTB_TOOLS__RECIPE_DIR)/make/toolchains/arm_v8/$(TOOLCHAIN)_cmse.mk
endif

ifeq ($(APPTYPE),flash)
MTB_RECIPE__DEFINES+=-DFLASH_BOOT -DCY_PDL_FLASH_BOOT
endif

# Print memory usage for GCC_ARM and LLVM_ARM toolchains
ifneq (,$(filter GCC_ARM LLVM_ARM,$(TOOLCHAIN)))
MTB_TOOLCHAIN_$(TOOLCHAIN)__LDFLAGS+=-Wl,--print-memory-usage
endif

################################################################################
# Programmer tool
################################################################################

CY_PROGTOOL_FW_LOADER=$(CY_TOOL_fw-loader_EXE_ABS)
progtool:
	$(MTB__NOISE)echo;\
	echo ==============================================================================;\
	echo "Available commands";\
	echo ==============================================================================;\
	echo;\
	"$(CY_PROGTOOL_FW_LOADER)" --help | sed s/'	'/' '/g;\
	echo ==============================================================================;\
	echo "Connected device(s)";\
	echo ==============================================================================;\
	echo;\
	deviceList=$$("$(CY_PROGTOOL_FW_LOADER)" --device-list | grep "FW Version" | sed s/'	'/' '/g);\
	if [[ ! -n "$$deviceList" ]]; then\
		echo "ERROR: Could not find any connected devices";\
		echo;\
		exit 1;\
	else\
		echo "$$deviceList";\
		echo;\
	fi;\
	echo ==============================================================================;\
	echo "Input command";\
	echo ==============================================================================;\
	echo;\
	echo " Specify the command (and optionally the device name).";\
	echo " E.g. --mode kp3-daplink KitProg3 CMSIS-DAP HID-0123456789ABCDEF";\
	echo;\
	read -p " > " -a params;\
	echo;\
	echo ==============================================================================;\
	echo "Run command";\
	echo ==============================================================================;\
	echo;\
	paramsSize=$${#params[@]};\
	if [[ $$paramsSize > 2 ]]; then\
		if [[ $${params[1]} == "kp3-"* ]]; then\
			deviceName="$${params[@]:2:$$paramsSize}";\
			"$(CY_PROGTOOL_FW_LOADER)" $${params[0]} $${params[1]} "$$deviceName" | sed s/'	'/' '/g;\
		else\
			deviceName="$${params[@]:1:$$paramsSize}";\
			"$(CY_PROGTOOL_FW_LOADER)" $${params[0]} "$$deviceName" | sed s/'	'/' '/g;\
		fi;\
	else\
		"$(CY_PROGTOOL_FW_LOADER)" "$${params[@]}" | sed s/'	'/' '/g;\
	fi;

.PHONY: progtool sign_combine recipe_postbuild application_postbuild
# This file is auto-generated by signcombinemkgen 
COMBINE_SIGN_GENERATOR=signcombinemkgen 
COMBINE_SIGN_MK_VERSION=1

ifneq ($(CY_TOOL_edgeprotecttools_EXE_ABS),)
../build/project_hex/proj_cm33_s_signed.hex : ../build/project_hex/proj_cm33_s.hex
../build/project_hex/proj_cm33_ns_shifted.hex : ../build/project_hex/proj_cm33_ns.hex
../build/app_combined.hex : ../build/project_hex/proj_cm33_s_signed.hex ../build/project_hex/proj_cm33_ns_shifted.hex ../build/project_hex/proj_cm55.hex

sign_combine_check_inputs:
ifeq (,$(MTB_SIGN_COMBINE__SKIP_CHECK))
	$(MTB__NOISE)if [ ! -f ../build/project_hex/proj_cm33_ns.hex ]; then echo "Error: combiner signer input file '../build/project_hex/proj_cm33_ns.hex' not found. Ensure that the full application has been built at least once."; exit 1; fi
	$(MTB__NOISE)if [ ! -f ../build/project_hex/proj_cm33_s.hex ]; then echo "Error: combiner signer input file '../build/project_hex/proj_cm33_s.hex' not found. Ensure that the full application has been built at least once."; exit 1; fi
	$(MTB__NOISE)if [ ! -f ../build/project_hex/proj_cm55.hex ]; then echo "Error: combiner signer input file '../build/project_hex/proj_cm55.hex' not found. Ensure that the full application has been built at least once."; exit 1; fi
else
	$(MTB__NOISE)if [ ! -f ../build/project_hex/proj_cm33_ns.hex ]; then echo "Note: combiner signer input file '../build/project_hex/proj_cm33_ns.hex' not found. Signing and combining only occurs if entire application has been built at least once.."; fi
	$(MTB__NOISE)if [ ! -f ../build/project_hex/proj_cm33_s.hex ]; then echo "Note: combiner signer input file '../build/project_hex/proj_cm33_s.hex' not found. Signing and combining only occurs if entire application has been built at least once.."; fi
	$(MTB__NOISE)if [ ! -f ../build/project_hex/proj_cm55.hex ]; then echo "Note: combiner signer input file '../build/project_hex/proj_cm55.hex' not found. Signing and combining only occurs if entire application has been built at least once.."; fi

../build/project_hex/proj_cm33_ns.hex ../build/project_hex/proj_cm33_s.hex ../build/project_hex/proj_cm55.hex:
endif

../build/sign_combine_dependency.json: sign_combine_check_inputs FORCE
	$(MTB__NOISE)if ! cmp -s "../configs/boot_with_extended_boot.json" "$@"; then cp -f "../configs/boot_with_extended_boot.json" "$@"; fi

# Add dependency on the cycfg.timestamp file in case a personality update a symbol information file.
mtb_signcombine_rwildcard=$(strip $(foreach d,$(wildcard $1*),$(call mtb_signcombine_rwildcard,$d/,$2) $(filter $2,$d)))
# Create a dummy file to force it as out-of-date.
../build/app_combined.hex ../build/project_hex/proj_cm33_ns_shifted.hex ../build/project_hex/proj_cm33_s_signed.hex : ../build/sign_combine_dependency.json $(call mtb_signcombine_rwildcard,$(SEARCH_TARGET_$(TARGET)),%/cycfg.timestamp) | sign_combine_check_inputs
	$(MTB__NOISE)echo "" > $@

../build/.sign_combine_dependency : ../build/app_combined.hex
	mkdir -p ../build ../build/project_hex
ifeq (,$(MTB_SIGN_COMBINE__SKIP_CHECK))
	(cd ../configs && $(CY_TOOL_edgeprotecttools_EXE_ABS) run-config -i boot_with_extended_boot.json --symbol-search ../proj_cm33_s/$(SEARCH_TARGET_$(TARGET)))
else
	if [ -f ../build/project_hex/proj_cm33_ns.hex ] && [ -f ../build/project_hex/proj_cm33_s.hex ] && [ -f ../build/project_hex/proj_cm55.hex ]; then (cd ../configs && $(CY_TOOL_edgeprotecttools_EXE_ABS) run-config -i boot_with_extended_boot.json --symbol-search ../proj_cm33_s/$(SEARCH_TARGET_$(TARGET))); fi
endif
	$(MTB__NOISE)echo "" > $@

sign_combine : ../build/.sign_combine_dependency

else
sign_combine:
	$(MTB__NOISE)echo
	$(MTB__NOISE)echo "Error: EdgeProtect Secure Suite not found. Combine-Sign step not executed."
	$(MTB__NOISE)echo "Run the ModusToolbox Setup program to install the Edge Protect Security suite."
	$(MTB__NOISE)echo
	$(MTB__NOISE)exit 1
endif

.PHONY: sign_combine sign_combine_check_inputs

MTB_COMBINE_SIGN_0_PRJ_NAME=proj_cm33_s
MTB_COMBINE_SIGN_0_CONFIG_NAME=proj_cm33_s
MTB_COMBINE_SIGN_0_BUILD_DEPENDENCY=project
MTB_COMBINE_SIGN_0_HEX_PATH=../build/project_hex/proj_cm33_s_signed.hex
MTB_COMBINE_SIGN_0_EXTRA_ELF_PATH=

MTB_COMBINE_SIGN_1_PRJ_NAME=proj_cm33_ns
MTB_COMBINE_SIGN_1_CONFIG_NAME=proj_cm33_ns
MTB_COMBINE_SIGN_1_BUILD_DEPENDENCY=project
MTB_COMBINE_SIGN_1_HEX_PATH=../build/project_hex/proj_cm33_ns_shifted.hex
MTB_COMBINE_SIGN_1_EXTRA_ELF_PATH=

MTB_COMBINE_SIGN_proj_cm33_ns_HEX_FILES=1
MTB_COMBINE_SIGN_proj_cm33_s_HEX_FILES=0
###############################################################################
# \file GCC_ARM_cmse.mk
#
# \brief
# ARM_v8 cmse Compiler toolchain configuration.
#
################################################################################
# \copyright
# (c) 2023-2025, Cypress Semiconductor Corporation (an Infineon company) or
# an affiliate of Cypress Semiconductor Corporation. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
################################################################################

include $(MTB_TOOLS__RECIPE_DIR)/make/toolchains/arm_v8/cmse.mk

ifeq ($(WHICHFILE),true)
$(info Processing $(lastword $(MAKEFILE_LIST)))
endif

ifneq ($(filter SECURE,$(VCORE_ATTRS)),)
MTB_TOOLCHAIN_GCC_ARM__CFLAGS+=-mcmse
MTB_TOOLCHAIN_GCC_ARM__CXXFLAGS+=-mcmse

ifneq ($(NSC_VENEER),)
MTB_TOOLCHAIN_GCC_ARM__LDFLAGS+=-Wl,--cmse-implib
ifeq ($(NSC_VENEER),$(filter $(NSC_VENEER),$(wildcard $(NSC_VENEER))))
MTB_TOOLCHAIN_GCC_ARM__LDFLAGS+=-Wl,--in-implib -Wl,$(NSC_VENEER)
endif
MTB_TOOLCHAIN_GCC_ARM__LDFLAGS+=-Wl,--out-implib -Wl,$(NSC_VENEER).tmp
endif
endif
###############################################################################
# \file cmse.mk
#
# \brief
# ARM_v8 cmse Compiler toolchain configuration.
#
################################################################################
# \copyright
# (c) 2023-2025, Cypress Semiconductor Corporation (an Infineon company) or
# an affiliate of Cypress Semiconductor Corporation. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
################################################################################

ifeq ($(WHICHFILE),true)
$(info Processing $(lastword $(MAKEFILE_LIST)))
endif

ifneq ($(NSC_VENEER),)
clean_proj: _print_clean_nsc_veneer

_print_clean_nsc_veneer:
	$(info )
	$(info NOTE: This secure project uses a non-secure callable veneer object file: $(NSC_VENEER).)
	$(info This file is not automatically cleaned by the 'make clean'. It is recommended that you save this file into version control.)
	$(info )

ifneq ($(filter SECURE,$(VCORE_ATTRS)),)
# The veneer files need to be copy back from the temp file back into the none temp version.
# The linker generate an error if the input veneer file is the same as output veneer.
# Generate a temp veneer and replace the original as a post build step.
_mtb_cmse_post_build_copy:| $(_MTB_RECIPE__TARG_FILE)
	$(MTB__NOISE)[ ! -f $(NSC_VENEER).tmp ] || cmp -s $(NSC_VENEER).tmp $(NSC_VENEER) || mv -f $(NSC_VENEER).tmp $(NSC_VENEER);\
	rm -f $(NSC_VENEER).tmp

ifeq (,$(filter ide_postbuild,$(MAKECMDGOALS)))
# If running ide_postbuild, don't create veneers. Both UV and EW have GUI settings for trustzone veneer, it managed by the IDE.
recipe_postbuild:_mtb_cmse_post_build_copy
endif

_RECIPE__VENEER_DIR:=$(dir $(NSC_VENEER))

ifneq (,$(_RECIPE__VENEER_DIR))
$(_MTB_RECIPE__TARG_FILE):| $(_RECIPE__VENEER_DIR)
$(_RECIPE__VENEER_DIR):
	$(MTB__NOISE)mkdir -p $(_RECIPE__VENEER_DIR)
endif

.PHONY:_mtb_cmse_post_build_copy

CY_IGNORE+=$(NSC_VENEER)
endif #ifneq ($(filter SECURE,$(VCORE_ATTRS)),)

ifneq ($(filter NON_SECURE,$(VCORE_ATTRS)),)
MTB_RECIPE__LIBS+=$(NSC_VENEER)
endif
endif #ifneq ($(NSC_VENEER),)

################################################################################
# Vulnerabilities check
################################################################################
ifneq ($(filter SECURE,$(VCORE_ATTRS)),)
ifneq ($(VFP_SELECT),softfloat)
$(info Use of the FPU on a secure project may be susceptible to an VLLDM Instruction Security\
Vulnerability (CVE-2021-35465). Verify the toolchain you are using already provides a workaround\
or use VFP_SELECT=softfloat instead of VFP_SELECT=$(VFP_SELECT). For more information see\
https://developer.arm.com/Arm%20Security%20Center/VLLDM%20Instruction%20Security%20Vulnerability)
endif # ($(VFP_SELECT),softfloat)
endif # ($(filter SECURE,$(VCORE_ATTRS)),)
################################################################################
# \file transition.mk
#
# \brief
# Perform device transition for device that support secure modes.
#
################################################################################
# \copyright
# (c) 2021-2025, Cypress Semiconductor Corporation (an Infineon company) or
# an affiliate of Cypress Semiconductor Corporation. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
################################################################################

ifeq ($(WHICHFILE),true)
$(info Processing $(lastword $(MAKEFILE_LIST)))
endif

device_transition_default:
	$(error Device transitions are unnecessary and unsupported for $(DEVICE).)
# Transition the device from one mode to another
device_transition: $(if $(BSP_DEVICE_TRANSITION_TARGET),$(BSP_DEVICE_TRANSITION_TARGET),$(if $(RECIPE_DEVICE_TRANSITION_TARGET),$(RECIPE_DEVICE_TRANSITION_TARGET),device_transition_default))

.PHONY: device_transition_default device_transition
.PHONY: print-all-vars

print-all-vars:
	$(foreach v, $(.VARIABLES), $(info $v))

.PHONY: print-include-vars

print-include-vars:
	echo INCLUDE_DIRS= $(.INCLUDE_DIRS)
	echo INCLUDES= $(INCLUDES)
	echo MTB_RECIPE__INCLUDES= $(MTB_RECIPE__INCLUDES)
	echo _MTB_TOOLS__INCLUDE_GETLIBS= $(_MTB_TOOLS__INCLUDE_GETLIBS)
	echo CFLAGS= $(CFLAGS)
	echo CXXFLAGS= $(CXXFLAGS)
