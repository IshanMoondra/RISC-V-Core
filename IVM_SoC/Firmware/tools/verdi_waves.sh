#!/bin/bash

if [ -z "$VERDI_ROOT" ]; then
    echo "[ERROR] Environment not loaded. Run: source env/setup.sh"
    exit 1
fi

VERDI_BUILD="$VERDI_ROOT/verdi_build"
VCD="$VERDI_BUILD/soc_fpga_tb_v1.vcd"
FSDB="$VERDI_BUILD/soc_fpga_tb_v1.fsdb"
FILELIST="$SOC_HOME/design_files_v2.f"

if [ ! -f "$VCD" ]; then
    echo "[ERROR] VCD not found at: $VCD"
    exit 1
fi
# vcd2fsdb $VCD -sv -o $FSDB
verdi -f $FILELIST -ssf "$VCD" -rcfile "$VERDI_BUILD/signal.rc" & 
