#!/bin/bash

if [ -z "$VERDI_ROOT" ]; then
    echo "[ERROR] Environment not loaded. Run: source env/setup.sh"
    exit 1
fi

VERDI_BUILD="$VERDI_ROOT/verdi_build"
FSDB="$VERDI_BUILD/dump.fsdb"

if [ ! -f "$FSDB" ]; then
    echo "[ERROR] FSDB not found at: $FSDB"
    exit 1
fi

verdi -ssf "$FSDB" &
