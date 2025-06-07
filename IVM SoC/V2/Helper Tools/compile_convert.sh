#!/bin/bash

# Usage function
usage() {
    echo "Usage: $0 input_file [-o output_file] [-byte 0|1] [additional_gcc_flags]"
    exit 1
}

# Check if at least 1 argument is provided
if [ $# -lt 1 ]; then
    usage
fi

INPUT_FILE=$1
OUTPUT_FILE=""
BYTE_MODE=0  # Default to word-wide mode
GCC_FLAGS="-nostdlib"

shift 1  # Remove first argument

# Parse optional arguments
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

# Extract base filename (without extension)
BASE_NAME=$(basename "$INPUT_FILE" .cpp)
ELF_FILE="${BASE_NAME}.elf"
BIN_FILE="${BASE_NAME}.bin"

# Compile the C++ program using RISC-V GCC
echo "Compiling $INPUT_FILE..."
/opt/riscv32i/bin/riscv32-unknown-elf-gcc -march=rv32i -mabi=ilp32 $GCC_FLAGS -o "$ELF_FILE" "$INPUT_FILE"

# Check if compilation was successful
if [ $? -ne 0 ]; then
    echo "Compilation failed!"
    exit 1
fi

# Convert ELF to BIN using objcopy
echo "Generating binary file..."
/opt/riscv32i/bin/riscv32-unknown-elf-objcopy -O binary "$ELF_FILE" "$BIN_FILE"

# Run the Python script for hex conversion
echo "Running hex conversion..."
if [ -n "$OUTPUT_FILE" ]; then
    python3 bin_to_hex.py "$BIN_FILE" -o "$OUTPUT_FILE" -byte "$BYTE_MODE"
else
    python3 bin_to_hex.py "$BIN_FILE" -byte "$BYTE_MODE"
fi

echo "File conversion successful!"
