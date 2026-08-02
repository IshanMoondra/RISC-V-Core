#!/bin/bash
set -e

# Require environment
if [ -z "$SOC_HOME" ] || [ -z "$FW_ROOT" ]; then
    echo "[ERROR] Environment not loaded. Run boot_env.sh please. "
    exit 1
fi

# ---------------------------------------------------------------------------
# Configuration: adjust these to match your project layout
# ---------------------------------------------------------------------------

# Docker image version
# IMAGE="ivm-soc-toolchain-v1"
IMAGE="ivm-soc-toolchain-v3"

# Host-side directories
PROJECT_ROOT="$PROJ_ROOT"
IN_DIR="$FW_ROOT"
OUT_DIR="$FW_ROOT/build"

# Ensure output directories exist
mkdir -p "$OUT_DIR"/{elf,bin,hex,map,asm,dump,sym,object}

# Default ISA/ABI (override with flags if needed)
ISA="-march=rv32i -mabi=ilp32"

# Default optimization level
OPT="-O0"
# OPT="-O3"

# Include paths (relative to project root)
# INCLUDES="-I/in/include -I/in/src"
# INCLUDES="-isystem /in/include -isystem /in/src"
INCLUDES="-I/in/include -I/in/src -isystem/in/include -isystem/in/src"

# # Linker script
LINKER="-T/in/linker/linker_soc_v2.ld"

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
    -v "$PROJECT_ROOT":/repo \
		-v "$IN_DIR":/in \
    -v "$OUT_DIR":/out \
    "$IMAGE" \
    /tools/build_v2.sh \
        /in/programs/"$BASENAME" \
        -o /out/"${BASENAME%.*}.hex" \
        $ISA \
        $OPT \
        $INCLUDES \
        $LINKER \
        $EXTRA_FLAGS \
        '/in/src/*.c' \        

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
mv "$OUT_DIR"/*.o   	"$OUT_DIR"/object/ 

mv "$OUT_DIR"/hex/"${BASENAME%.*}".hex   "$OUT_DIR"/hex/l2_firmware.hex

echo "Build complete. Artifacts stored in:"
echo "  $OUT_DIR/elf"
echo "  $OUT_DIR/bin"
echo "  $OUT_DIR/hex"
echo "  $OUT_DIR/map"
echo "  $OUT_DIR/asm"
echo "  $OUT_DIR/dump"
echo "  $OUT_DIR/sym"

echo "New L2 Firmware generated at:"
echo ""$OUT_DIR"/hex/l2_firmware.hex"