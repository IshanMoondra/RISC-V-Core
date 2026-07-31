#!/bin/bash

# -----------------------------------------
#  Verilator Compile Script (with DPI-C)
# -----------------------------------------

# Require environment
if [ -z "$SOC_HOME" ] || [ -z "$VERILATOR_BUILD_ROOT" ]; then
    echo "[ERROR] Environment not loaded. Run boot_env.sh please. "
    exit 1
fi

VERILATOR_BUILD="$VERILATOR_BUILD_ROOT/verilator_build"
FILELIST="$SOC_HOME/design_files_v2.f"
DPI_DIR="$SOC_HOME/dpi"

mkdir -p "$VERILATOR_BUILD"
cd "$VERILATOR_BUILD" || exit 1

echo "[INFO] Cleaning previous build..."
rm -rf obj_dir

echo "[INFO] Running Verilator with DPI-C and FST tracing..."

verilator --cc --exe \
    --trace-fst \
    -f "$FILELIST" \
    "$FW_ROOT/tools/verilator_sim_main.cpp" \
    "$DPI_DIR"/uart_terminal_v3.c \
    -CFLAGS "-I$DPI_DIR" \
    -LDFLAGS "-L$DPI_DIR" \
    -O3 \
    -Wall \
    --timing \
    --threads 16 \
    --build \
    -Mdir obj_dir \
    -o simv_verilator \
		--top-module soc_fpga_tb_v1 \
		-DSIM_VERILATOR \
		-Wno-fatal \
		-Wno-EOFNEWLINE \
		-Wno-SYNCASYNCNET \
		-Wno-COMBDLY \
		-Wno-CASEINCOMPLETE \
		-Wno-CASEOVERLAP \
		-Wno-CASEX \
		-Wno-UNUSEDSIGNAL \
		-Wno-UNUSEDPARAM \
		-Wno-UNDRIVEN \
		-Wno-ALWCOMBORDER \
		-Wno-BLKSEQ \
		-Wno-WIDTHEXPAND \
		-Wno-WIDTHTRUNC \
		-Wno-IMPLICIT \
		-Wno-TIMESCALEMOD \
		-Wno-MULTITOP \
		-Wno-DECLFILENAME \
		-Wno-PINCONNECTEMPTY \
		-Wno-PINMISSING \
    2>&1 | tee "$VERILATOR_BUILD/compile.log"

STATUS=${PIPESTATUS[0]}

if [ $STATUS -ne 0 ]; then
    echo "[ERROR] Verilator DPI compile failed."
    exit $STATUS
fi

echo "[INFO] Verilator build complete."
echo "[INFO] Executable: $VERILATOR_BUILD/obj_dir/simv_verilator"

exit $?
