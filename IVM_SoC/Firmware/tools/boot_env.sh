#!/bin/bash

export PROJ_ROOT="/raid2/IVM_SOC/Tapeout_V1"
export SOC_HOME="$PROJ_ROOT/RISC-V-Core/IVM_SoC/V2_5"

export RTL_ROOT="$SOC_HOME/Designs"
export DV_ROOT="$SOC_HOME/Testbenches"

export VCS_ROOT="$PROJ_ROOT/vcs"
export VERDI_ROOT="$PROJ_ROOT/verdi"

export VCS_HOME="/opt/cae/bin/vcs"
export VERDI_HOME="/raid/synopsys/verdi/verdi/W-2024.09-SP2-1/"

export FW_ROOT="$PROJ_ROOT/RISC-V-Core/IVM_SoC/Firmware"

export PATH="$VCS_ROOT/scripts:$PATH"
export PATH="$VERDI_ROOT/scripts:$PATH"

echo "Environment loaded. PROJ_ROOT = $PROJ_ROOT"
