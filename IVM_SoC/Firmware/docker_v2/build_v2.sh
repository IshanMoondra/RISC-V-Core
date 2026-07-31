#!/bin/bash
set -e
# set -x 

source /repo/RISC-V-Core/IVM_SoC/Firmware/tools/boot_env.sh

usage() {
    echo "Usage: $0 input_files... [-o output_file] [-byte 0|1] [gcc_flags...]"
    exit 1
}

if [ $# -lt 1 ]; then
    usage
fi

INPUT_FILES=()
OUTPUT_FILE=""
BYTE_MODE=0
GCC_FLAGS=""

# --- Parse arguments ---------------------------------------------------------

while [[ $# -gt 0 ]]; do
    case "$1" in
        -o)
            OUTPUT_FILE="$2"
            shift 2
            ;;
        -byte)
            BYTE_MODE="$2"
            shift 2
            ;;
        -*)
            GCC_FLAGS+=" $1"
            shift 1
            ;;
        *)
            INPUT_FILES+=("$1")
            shift 1
            ;;
    esac
done

if [ ${#INPUT_FILES[@]} -eq 0 ]; then
    usage
fi

# --- Expand wildcard patterns inside Docker ---
expanded=()
for f in "${INPUT_FILES[@]}"; do
    # This expands patterns like /in/src/*.cpp
    for match in $f; do
        expanded+=("$match")
    done
done
INPUT_FILES=("${expanded[@]}")

# --- Output names ------------------------------------------------------------

BASE=$(basename "${INPUT_FILES[0]}")
STEM="${BASE%.*}"

ELF="${STEM}.elf"
BIN="${STEM}.bin"
MAP="${STEM}.map"
ASM="${STEM}.s"
DUMP="${STEM}.dump"
SYM="${STEM}.sym"

# --- Compile each file -------------------------------------------------------

OBJS=()

echo "Compiling sources..."
for SRC in "${INPUT_FILES[@]}"; do
    OBJ="/out/$(basename "${SRC%.*}").o"
    riscv-none-elf-gcc -c $GCC_FLAGS "$SRC" -o "$OBJ"
    OBJS+=("$OBJ")
done

# --- Link --------------------------------------------------------------------

echo "Linking ELF..."
riscv-none-elf-gcc \
    "${OBJS[@]}" \
    $GCC_FLAGS \
    -Wl,-Map="/out/$MAP" \
    -o "/out/$ELF"

# --- Assembly listing --------------------------------------------------------

echo "Generating assembly listing..."
riscv-none-elf-objdump -d "/out/$ELF" > "/out/$ASM"

# --- Binary ------------------------------------------------------------------

echo "Generating binary..."
riscv-none-elf-objcopy -O binary "/out/$ELF" "/out/$BIN"

# --- Disassembly -------------------------------------------------------------

echo "Generating ELF disassembly..."
riscv-none-elf-objdump -d "/out/$ELF" > "/out/$DUMP"

# --- Symbols -----------------------------------------------------------------

echo "Extracting symbol table..."
riscv-none-elf-nm -n "/out/$ELF" > "/out/$SYM"

# --- Hex conversion ----------------------------------------------------------

echo "Running hex conversion..."
if [ -n "$OUTPUT_FILE" ]; then
    python3 bin_to_hex_v2.py "/out/$BIN" -o "$OUTPUT_FILE" -l2_64bit 1
else
    python3 bin_to_hex_v2.py "/out/$BIN" -l2_64bit 1
fi

mv ./l2_*.hex /out/

echo "Build complete."
