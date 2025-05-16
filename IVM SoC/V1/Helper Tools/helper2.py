import re

def parse_and_pack(input_str):
    input_str = input_str.strip("{}")  # Remove curly braces
    elements = input_str.split(", ")  # Split individual elements

    binary_str = ""

    for element in elements:
        match = re.match(r"(\d+)'([bd])(.+)", element)
        if match:
            bit_size, base, value = match.groups()
            bit_size = int(bit_size)

            # Convert based on base type
            if base == 'd':  # Decimal
                num = int(value)
            elif base == 'b':  # Binary
                num = int(value, 2)
            else:
                raise ValueError(f"Unsupported format: {base}")

            # Convert to binary representation with correct bit width
            binary_value = f"{num:0{bit_size}b}"
            binary_str += binary_value  # Concatenate to build full 32-bit binary representation

    # Convert full binary string into hexadecimal
    hex_value = f"0x{int(binary_str, 2):08X}"

    return hex_value

# Example input
input_str = input("Input the SV concat string please: ")
hex_output = parse_and_pack(input_str)

print(hex_output)
