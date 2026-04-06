#!/bin/bash

if [ -z "$VERDI_ROOT" ]; then
    echo "[ERROR] Environment not loaded. Run: source env/setup.sh"
    exit 1
fi

VERDI_BUILD="$VERDI_ROOT/verdi_build"
VCD="$VERDI_BUILD/soc_fpga_tb_v1.vcd"
FSDB="$VERDI_BUILD/soc_fpga_tb_v1.fsdb"
FILELIST="$SOC_HOME/design_files_v2.f"

if [ ! -f "$FSDB" ]; then
    echo "[ERROR] FSDB not found at: $FSDB"
    exit 1
fi

# verdi -sv -f $FILELIST -ssf "$VCD" -rcfile "$VERDI_BUILD/signal.rc" -verdi_top soc_fpga_tb_v1 & 
Verdi-Ultra -sv -f $FILELIST -ssf "$FSDB" -rc "$VERDI_BUILD/signal.rc" -verdi_top soc_fpga_tb_v1 & 
