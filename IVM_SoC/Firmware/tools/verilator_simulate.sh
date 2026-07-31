#!/bin/bash

# -----------------------------------------
#  Verilator Simulation Script
# -----------------------------------------

# Require environment
if [ -z "$SOC_HOME" ]; then
    echo "[ERROR] Environment not loaded. Run: source env/setup.sh"
    exit 1
fi

# Point to your Verilator build artifacts directory
VERILATOR_BUILD="$VERILATOR_BUILD_ROOT/verilator_build"
SIMV="$VERILATOR_BUILD/obj_dir/simv_verilator"
RUN_LOG="$VERILATOR_BUILD/run.log"

# Firmware / SPI flash image files
SPI_FLASH_HEX="$FW_ROOT/build/hex/firmware.hex"
L2_HEX="$FW_ROOT/build/hex/l2_firmware.hex"

# Basic sanity checks
if [ ! -x "$SIMV" ]; then
    echo "[ERROR] simv_verilator not found at: $SIMV"
    echo "        Run your massive verilator compilation step first."
    exit 1
fi

if [ ! -f "$SPI_FLASH_HEX" ]; then
    echo "[WARN] SPI flash hex not found at: $SPI_FLASH_HEX"
    echo "Continuing anyway, but RTL may fatal on missing file."
fi

if [ ! -f "$L2_HEX" ]; then
    echo "[WARN] L2 hex not found at: $L2_HEX"
    echo "Continuing anyway, but RTL may fatal on missing file."
fi

# Run simulation and redirect stdout/stderr to your target log file
echo "[INFO] Running Verilator simulation..."
# "$SIMV" \
#     +dump_on \
#     +SPI_FLASH_HEX="$SPI_FLASH_HEX" \
#     +L2_HEX="$L2_HEX" \
#     2>&1 | tee "$RUN_LOG"

"$SIMV" \
    +dump_on \
    +SPI_FLASH_HEX="$SPI_FLASH_HEX" \
    +L2_HEX="$L2_HEX" 

# Capture and exit with the exact return code of the simulation
exit ${PIPESTATUS[0]}
