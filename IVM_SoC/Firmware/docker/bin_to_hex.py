import argparse
import os

def convert_bin_to_hex(input_file, output_file=None, byte_mode=False):
    try:
        with open(input_file, "rb") as f:
            data = f.read()

        hex_lines = []
        if byte_mode:
            # Convert each byte separately (Little Endian format)
            hex_lines = [f"{byte:02x}" for byte in data]
        else:
            # Convert to 32-bit words (default endian order)
            words = [data[i:i+4] for i in range(0, len(data), 4)]
            hex_lines = [f"{int.from_bytes(word, 'little'):08x}" for word in words]  # Keep original order

        hex_dump = "\n".join(hex_lines)

        if output_file:
            with open(output_file, "w") as f_out:
                f_out.write(hex_dump)
            print(f"File conversion successful! Hex dump saved to {output_file}")
        else:
            print(hex_dump)
            print("File conversion successful!")

    except Exception as e:
        print(f"Error: {e}")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Convert .bin to hex dump")
    parser.add_argument("input_file", help="Path to input .bin file")
    parser.add_argument("-o", "--output", help="Output file for hex dump")
    parser.add_argument("-byte", type=int, choices=[0,1], default=1, help="Byte mode (1 for byte-wide LE, 0 for word-wide)")
    
    args = parser.parse_args()
    convert_bin_to_hex(args.input_file, args.output, byte_mode=True)
