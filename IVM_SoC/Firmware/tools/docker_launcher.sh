#!/bin/bash
set -e

# ---------------------------------------------------------------------------
# Configuration: adjust these to match your project layout
# ---------------------------------------------------------------------------

# Docker image version
IMAGE="ivm-soc-toolchain-v1"

# Host-side directories
PROJECT_ROOT="$(pwd)"
SRC_DIR="$PROJECT_ROOT/src"
OUT_DIR="$PROJECT_ROOT/build"

# Ensure output directories exist
mkdir -p "$OUT_DIR"/{elf,bin,hex,map,asm,dump,sym}

# Default ISA/ABI (override with flags if needed)
ISA="-march=rv32i -mabi=ilp32"

# Default optimization level
OPT="-O0"

# Include paths (relative to project root)
INCLUDES="-I include -I drivers -I hal"

# # Linker script
# LINKER="-T linker/uwsoc.ld"

# ---------------------------------------------------------------------------
# Argument parsing
# ---------------------------------------------------------------------------

if [ $# -lt 1 ]; then
    echo "Usage: $0 <source_file> [extra gcc flags]"
    exit 1
fi

SOURCE_FILE=$1
BASENAME=$(basename "$SOURCE_FILE")
shift 1

EXTRA_FLAGS="$@"

# ---------------------------------------------------------------------------
# Run Docker build
# ---------------------------------------------------------------------------

docker run --rm \
    -v "$SRC_DIR":/in \
    -v "$OUT_DIR":/out \
    "$IMAGE" \
    /tool/build.sh \
        /in/"$BASENAME" \
        -o /out/"${BASENAME%.*}.hex" \
        $ISA $OPT $INCLUDES $EXTRA_FLAGS \
        

# ---------------------------------------------------------------------------
# Organize output artifacts
# ---------------------------------------------------------------------------

mv "$OUT_DIR"/*.elf   "$OUT_DIR"/elf/   
mv "$OUT_DIR"/*.bin   "$OUT_DIR"/bin/  
mv "$OUT_DIR"/*.hex   "$OUT_DIR"/hex/  
mv "$OUT_DIR"/*.map   "$OUT_DIR"/map/  
mv "$OUT_DIR"/*.s     "$OUT_DIR"/asm/  
mv "$OUT_DIR"/*.dump  "$OUT_DIR"/dump/ 
mv "$OUT_DIR"/*.sym   "$OUT_DIR"/sym/  

echo "Build complete. Artifacts stored in:"
echo "  $OUT_DIR/elf"
echo "  $OUT_DIR/bin"
echo "  $OUT_DIR/hex"
echo "  $OUT_DIR/map"
echo "  $OUT_DIR/asm"
echo "  $OUT_DIR/dump"
echo "  $OUT_DIR/sym"
