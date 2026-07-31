#!/bin/bash

if [[ "$HOSTNAME" == "ogras-elab-zeus-ak-3539aeh" ]]; then
		export PROJ_ROOT="/disk/imoondra/IVM_SOC/Tapeout_V1"
		export VERDI_HOME="/cae/apps/data/synopsys-2025/verdi/X-2025.06/"
	elif [[ "$HOSTNAME" == "compute-hal" ]]; then
		export PROJ_ROOT="/raid2/IVM_SOC/Tapeout_V1"
		export VERDI_HOME="/raid/synopsys/verdi/verdi/W-2024.09-SP2-1/"
	elif [[ "$HOSTNAME" == "Ishan_ROG" ]]; then
		export MSYS_NO_PATHCONV=1
		export PROJ_ROOT="/e/GitHub"
		export VERDI_HOME="/e/GitHub"
	elif [[ -f /.dockerenv ]]; then
		export PROJ_ROOT="/repo"
		export VERDI_HOME="/build/verdi/"
	else
		export PROJ_ROOT="~/GlobalFoundries_RTL_Flow/Tapeout_V1"
		export VERDI_HOME="/cae/apps/data/synopsys-2025/verdi/X-2025.06/"
fi

export SOC_HOME="$PROJ_ROOT/RISC-V-Core/IVM_SoC/V2_5"

export RTL_ROOT="$SOC_HOME/Designs"
export DV_ROOT="$SOC_HOME/Testbenches"

export VCS_ROOT="$PROJ_ROOT/vcs"
export VERDI_ROOT="$PROJ_ROOT/verdi"
export VERILATOR_BUILD_ROOT="$PROJ_ROOT/verilator"
export SURFER_ROOT="$PROJ_ROOT/surfer"

export VCS_HOME="/opt/cae/bin/vcs"

export FW_ROOT="$PROJ_ROOT/RISC-V-Core/IVM_SoC/Firmware"

export PATH="$VCS_ROOT/scripts:$PATH"
export PATH="$VERDI_ROOT/scripts:$PATH"

echo "Environment loaded. PROJ_ROOT = $PROJ_ROOT"
