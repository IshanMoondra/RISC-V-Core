#!/bin/bash
set -e

usage() {
    echo "Usage: $0 input_file [-o output_file] [-byte 0|1] [gcc_flags...]"
    exit 1
}

# --- Argument Parsing --------------------------------------------------------

if [ $# -lt 1 ]; then
    usage
fi

INPUT_FILE=$1
OUTPUT_FILE=""
BYTE_MODE=0
GCC_FLAGS=""

shift 1

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
        *)
            GCC_FLAGS+=" $1"
            shift 1
            ;;
    esac
done

# --- Output Filenames --------------------------------------------------------

BASE=$(basename "$INPUT_FILE")
STEM="${BASE%.*}"

ELF="${STEM}.elf"
BIN="${STEM}.bin"
MAP="${STEM}.map"
ASM="${STEM}.s"
DUMP="${STEM}.dump"
SYM="${STEM}.sym"

# --- Compilation -------------------------------------------------------------

echo "Compiling $INPUT_FILE..."
riscv64-unknown-elf-gcc \
    $GCC_FLAGS \
    -Wl,-Map="$MAP" \
    -o /out/"$ELF" \
    "$INPUT_FILE"

# --- Assembly Listing --------------------------------------------------------

echo "Generating assembly listing..."
riscv64-unknown-elf-gcc \
    $GCC_FLAGS \
    -S "$INPUT_FILE" \
    -o /out/"$ASM"

# --- Binary Conversion -------------------------------------------------------

echo "Generating binary..."
riscv64-unknown-elf-objcopy -O binary /out/"$ELF" /out/"$BIN"

# --- Disassembly -------------------------------------------------------------

echo "Generating ELF disassembly..."
riscv64-unknown-elf-objdump -d /out/"$ELF" > /out/"$DUMP"

# --- Symbol Table ------------------------------------------------------------

echo "Extracting symbol table..."
riscv64-unknown-elf-nm -n /out/"$ELF" > /out/"$SYM"

# --- Hex Conversion ----------------------------------------------------------

echo "Running hex conversion..."
echo $BIN
echo /out/"$BIN"
if [ -n "$OUTPUT_FILE" ]; then
    python3 bin_to_hex.py /out/"$BIN" -o "$OUTPUT_FILE"
else
    python3 bin_to_hex.py /out/"$BIN"
fi

# --- Summary -----------------------------------------------------------------

echo "Build complete. Generated:"
echo "  $ELF"
echo "  $BIN"
echo "  $MAP"
echo "  $ASM"
echo "  $DUMP"
echo "  $SYM"
echo "  (hex file via Python script)"
