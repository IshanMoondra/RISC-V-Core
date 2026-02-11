#!/bin/bash

# -----------------------------------------
#  VCS Compile Script (Environment‑Driven)
# -----------------------------------------

# Expect environment to be sourced beforehand
if [ -z "$PROJ_ROOT" ] || [ -z "$VCS_ROOT" ]; then
    echo "[ERROR] Environment not loaded. Run: source env/setup.sh"
    exit 1
fi

FILELIST="$SOC_HOME/design_files_v2.f"
VCS_BUILD="$VCS_ROOT/vcs_build"

# Create build directory if missing
mkdir -p "$VCS_BUILD"

# Invoke VCS
vcs -full64 -sverilog \
    -f "$FILELIST" \
    +v2k \
    -timescale=1ns/1ps \
    +lint=TFIPC-L \
    -debug_access+all \
    -kdb \
    -Mdir="$VCS_BUILD/csrc" \
    -incremental \
    -l "$VCS_BUILD/compile.log" \
    -o "$VCS_BUILD/simv"

exit $?
