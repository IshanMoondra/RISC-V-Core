import argparse

def convert_to_little_endian(input_file):
    """Reads a hex file with 32-bit instructions and converts to little-endian byte order."""
    le_hex_lines = []
    with open(input_file, 'r') as infile:
        for line in infile:
            hex_value = line.strip()
            if len(hex_value) == 8:  # Ensure it's a 32-bit instruction
                # Convert to little-endian byte order
                little_endian_bytes = [hex_value[i:i+2] for i in range(0, 8, 2)][::-1]
                le_hex_lines.extend(little_endian_bytes)
    return le_hex_lines

def main():
    parser = argparse.ArgumentParser(description="Convert 32-bit RV32I hex dump to little-endian format.")
    parser.add_argument("input_file", help="Path to input hex file containing 32-bit instructions")
    parser.add_argument("-o", "--output", help="Path to output hex file (optional)")
    args = parser.parse_args()

    # Perform conversion
    le_hex_dump = convert_to_little_endian(args.input_file)

    if args.output:
        # Write to output file
        with open(args.output, 'w') as outfile:
            outfile.write("\n".join(le_hex_dump))
        print(f"Conversion complete! Little-endian hex file saved as {args.output}.")
    else:
        # Print to terminal
        print("\n".join(le_hex_dump))

if __name__ == "__main__":
    main()

