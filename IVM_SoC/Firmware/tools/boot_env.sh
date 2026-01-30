#!/bin/bash

export PROJ_ROOT="/absolute/path/to/your/project"
export SOC_HOME="$PROJ_ROOT/path/to/IVM_SOC/Latest/Version"

export RTL_ROOT="$SOC_HOME/Designs"
export DV_ROOT="$SOC_HOME/Testbenches"

export VCS_ROOT="$PROJ_ROOT/vcs"
export VERDI_ROOT="$PROJ_ROOT/verdi"

export FW_ROOT="$PROJ_ROOT/Firmware"

export PATH="$VCS_ROOT/scripts:$PATH"
export PATH="$VERDI_ROOT/scripts:$PATH"

echo "Environment loaded. PROJ_ROOT = $PROJ_ROOT"
