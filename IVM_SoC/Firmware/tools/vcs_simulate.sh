#!/bin/bash

# -----------------------------------------
#  VCS Simulation Script
# -----------------------------------------

# Require environment
if [ -z "$SOC_HOME" ] || [ -z "$VCS_ROOT" ] || [ -z "$VERDI_ROOT" ]; then
    echo "[ERROR] Environment not loaded. Run: source env/setup.sh"
    exit 1
fi

VCS_BUILD="$VCS_ROOT/vcs_build"
VERDI_BUILD="$VERDI_ROOT/verdi_build"

SIMV="$VCS_BUILD/simv"
RUN_LOG="$VCS_BUILD/run.log"
FSDB_FILE="$VERDI_BUILD/soc_fpga_tb_v1.fsdb"

# Firmware / SPI flash image (adjust path if needed)
SPI_FLASH_HEX="$FW_ROOT/build/hex/firmware.hex"

# Basic sanity checks
if [ ! -x "$SIMV" ]; then
    echo "[ERROR] simv not found at: $SIMV"
    echo "        Run the compile step first."
    exit 1
fi

if [ ! -f "$SPI_FLASH_HEX" ]; then
    echo "[WARN] SPI flash hex not found at: $SPI_FLASH_HEX"
    echo "Continuing anyway, but RTL may fatal on missing file."
fi

mkdir -p "$VERDI_BUILD"
rm -rf "$VERDI_BUILD"/*.vcd
rm -rf "$VERDI_BUILD"/*.fsdb

# Run simulation
"$SIMV" \
    +VERDI_ROOT=$VERDI_ROOT \
    -l "$RUN_LOG" \
    +fsdb+autoflush \
    +fsdb+all=on\
    +fsdbfile+$FSDB_FILE \
    +SPI_FLASH_HEX="$SPI_FLASH_HEX" \

exit $?
