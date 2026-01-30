#!/bin/bash

# -----------------------------------------
#  VCS Compile Script (with DPI-C)
# -----------------------------------------

# Require environment
if [ -z "$SOC_HOME" ] || [ -z "$VCS_ROOT" ]; then
    echo "[ERROR] Environment not loaded. Run: source env/setup.sh"
    exit 1
fi

VCS_BUILD="$VCS_ROOT/vcs_build"
FILELIST="$SOC_HOME/design_files_v2.f"
DPI_DIR="$SOC_HOME/dpi"
DPI_LIB="$DPI_DIR/libdpi.so"

mkdir -p "$VCS_BUILD"

# Build DPI shared library
echo "[INFO] Building DPI-C shared library..."
gcc -shared -fPIC \
    -I"$DPI_DIR" \
    -I"$VCS_HOME/include" \
    -o "$DPI_LIB" \
    "$DPI_DIR"/*.c

if [ $? -ne 0 ]; then
    echo "[ERROR] DPI-C build failed."
    exit 1
fi

echo "[INFO] DPI-C library built: $DPI_LIB"

# Invoke VCS
vcs -full64 -sverilog \
    -f "$FILELIST" \
    +v2k \
    -timescale=1ns/1ps \
    -debug_access+all \
    -kdb \
    -Mdir="$VCS_BUILD/csrc" \
    -incremental \
    -CFLAGS "-I$DPI_DIR -I$VCS_HOME/include" \
    -LDFLAGS "-L$DPI_DIR -ldpi" \
    -sv_lib "$DPI_DIR/libdpi" \
    -l "$VCS_BUILD/compile.log" \
    -o "$VCS_BUILD/simv"

exit $?
