import argparse
import os

def convert_bin_to_hex(input_file, output_file=None, byte_mode=False, l2_64bit=False):
	try:
		with open(input_file, "rb") as f:
			data = f.read()

		# -----------------------------------------
		# Normal SPI / 32-bit / byte-mode output
		# -----------------------------------------
		if byte_mode:
			# Convert each byte separately (Little Endian format)
			hex_lines = [f"{byte:02x}" for byte in data]
		else:
			# Convert to 32-bit words (default endian order)
			words = [data[i:i+4] for i in range(0, len(data), 4)]
			hex_lines = [f"{int.from_bytes(word, 'little'):08x}" for word in words]

		hex_dump = "\n".join(hex_lines)

		# Write main output file
		if output_file:
			with open(output_file, "w") as f_out:
				f_out.write(hex_dump)
			print(f"File conversion successful! Hex dump saved to {output_file}")
		else:
			print(hex_dump)
			print("File conversion successful!")

		# -----------------------------------------
		# Optional L2 64-bit packed output
		# -----------------------------------------
		if l2_64bit:
			base = os.path.splitext(os.path.basename(input_file))[0]
			l2_filename = f"l2_{base}.hex"

			# Convert to 32-bit words
			words32 = [data[i:i+4] for i in range(0, len(data), 4)]
			word_vals = [int.from_bytes(w, "little") for w in words32]

			# Pack into 64-bit words
			l2_lines = []
			for i in range(0, len(word_vals), 2):
				low = word_vals[i]
				high = word_vals[i+1] if i+1 < len(word_vals) else 0
				packed = (high << 32) | low
				l2_lines.append(f"{packed:016x}")

			with open(l2_filename, "w") as f_l2:
				f_l2.write("\n".join(l2_lines))

			print(f"L2 64-bit packed hex saved to {os.path.abspath(l2_filename)}")
			# print(f"L2 64-bit packed hex saved to {l2_filename}")

	except Exception as e:
		print(f"Error: {e}")


if __name__ == "__main__":
	parser = argparse.ArgumentParser(description="Convert .bin to hex dump")
	parser.add_argument("input_file", help="Path to input .bin file")
	parser.add_argument("-o", "--output", help="Output file for hex dump")
	parser.add_argument("-byte", type=int, choices=[0,1], default=1,
											help="Byte mode (1 for byte-wide LE, 0 for word-wide)")
	parser.add_argument("-l2_64bit", type=int, choices=[0,1], default=0,
											help="Generate 64-bit packed L2 hex (1 = yes)")

	args = parser.parse_args()

	convert_bin_to_hex(
		args.input_file,
		args.output,
		byte_mode=bool(args.byte),
		l2_64bit=bool(args.l2_64bit)
	)
