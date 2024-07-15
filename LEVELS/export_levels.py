
import argparse
import csv
import pathlib
import itertools
import sys
from collections.abc import Iterable

own_path = pathlib.Path(sys.path[0]).resolve()

def chunks(lst, n):
	"""Yield successive n-sized chunks from lst."""
	for i in range(0, len(lst), n):
		yield lst[i:i + n]

def vertical_rle_with_single_tile(lines):
	# vertical rle compression
	column_tiles = list(itertools.chain.from_iterable(zip(*list(lines))))
	rle_data = []
	current_run = int(column_tiles[0])
	run_length = 1
	for strtile in column_tiles[1:]:
		tile = int(strtile)
		if (tile == -1):
			tile = 0
		if current_run == tile and run_length < 0x80:
			run_length += 1
		else:
			# if its a single tile thats less than 0x80, then we add just one byte
			if run_length == 1 and current_run < 0x80:
				rle_data += [0x80 | current_run]
			else:
				# if its more than one byte in the run, then take the length of bytes to write
				# and subtract one since we can't ever have a run of 0 bytes
				rle_data += [run_length - 1, current_run]
			current_run = tile
			run_length = 1
	return rle_data

def export_bg(folder: str, levels: Iterable[str]) -> tuple[Iterable[int]]:
	# combine all the data into one big slab here and split it by 8kb banks later
	all_data = []
	# and include the offset into the data slab to put the level labels
	level_lengths = []
	# also include the output length of levels in tiles:
	level_widths = []
	for level in levels:
		
		lines = []
		with open(f"{folder}/{level}_.csv") as f:
			lines = list(csv.reader(f))
		level_widths.append(len(lines[0]))	# the width of the level in tiles
		rle_data = vertical_rle_with_single_tile(lines)
		header = [
			f"{level}_song_number",
			f"{level}_game_mode",
			f"{level}_speed",
			f"{level}_bg_color",
			f"{level}_grnd_color",
		]
		all_data += header
		all_data += rle_data
		print(f"loading level: {level} rle size: {len(rle_data)}")
		level_lengths.append(len(rle_data) + len(header))
	
	# now split up the data into banks
	banked_data = chunks(all_data, 0x2000)
	print("about to split up the data")

	current_bank = 1
	current_level = 0
	out_str = "\n"
	# now write the bytes
	remaining_bytes = 0
	next_level_offset = 0
	for bank in banked_data:
		print(f"exporting bank {current_bank}")
		out_str += f'.segment "LVL_BANK_{current_bank:02X}"\n'
		filled_bytes = 0
		while filled_bytes < len(bank):
			print(f"already filled bytes: {filled_bytes}")
			# if we don't have any left over bytes from the previous level, then start the next level
			if remaining_bytes <= 0:
				if remaining_bytes == 0:
					print(f"exporting level {levels[current_level]}")
					out_str += f".export level_data_{levels[current_level]}\n"
					out_str += f"level_data_{levels[current_level]}:\n"
				
				# this is protection from header bank overflows (we go byte by byte)
				out_str += f"  .byte {bank[filled_bytes]}\n"
				remaining_bytes -= 1
				filled_bytes += 1
				if remaining_bytes == -5:
					next_level_offset = filled_bytes + level_lengths[current_level] - 5
					current_level += 1
					remaining_bytes = 0

			else:
				tmp = remaining_bytes
				remaining_bytes = max(0, next_level_offset - 0x2000)
				next_level_offset = tmp
				print(f"spilling to new bank remaining_bytes {remaining_bytes}")


			if remaining_bytes >= 0:
				# chunk the bytes for this level
				for level_data in chunks(bank[filled_bytes:next_level_offset], 0x20):
					out_str += f"  .byte {','.join([f'${x:02x}' for x in level_data])}\n"

				# if the next level ends past this one, then set the remaining bytes for the next bank
				print(f"filled_bytes {filled_bytes} next_level_offset {next_level_offset} remaining_bytes {remaining_bytes}")
				filled_bytes = next_level_offset
				if 0x2000 <= next_level_offset:
					remaining_bytes = next_level_offset - 0x2000
					
		current_bank += 1

	with open(own_path.joinpath("all_level_data.s"), 'w') as out:
		out.write(f"""
;;; Generated by export_levels.py
{out_str}
""")
		
	return (level_widths, )
		
def export_spr(folder: str, levels: Iterable[str]):
	all_data = []
	for level in levels:
		lines = []
		with open(f"{folder}/{level}_SP.csv") as f:
			lines = list(csv.reader(f))
		level_data = []
		rows = len(lines)
		columns = len(lines[0])
		count1 = 0
		count2 = 0
		for i in range(0, columns):
			for j in range(0, rows):
				a = str(lines[j][i])
				if (a != "-1"):
					x = i * 16		# x coordinate
					y = j * 16		# y coordinate
					obj_id = int(a)	# object id
					
					if obj_id == 0x3E: #right medium post
						x -= 8
					elif obj_id == 0x40: #right long post
						x -= 16

					if int(a) in [10,13,37,76,82,253]: # ADJUST HEIGHT FOR BOTTOM PADS
						y += 8

					if level == "polargeist" and obj_id == 0x0d:
						y -= 6
					if level == "clutterfunk" and obj_id == 0x10:
						count1 += 1
						if count1 == 2:
							y -= 8
					if level == "clutterfunk" and obj_id == 0xfc:
						count2 += 1
						if count2 == 3:
							y -= 8                     
						elif count2 == 4:
							y -= 8                     
					if int(a) in [0x42,0x43,0x47]:
						y -= 8
					level_data.append(
						[x & 0xFF, (x >> 8) & 0xFF,
						 y & 0xFF, (y >> 8) & 0xFF,
						 obj_id])

		level_data.append([0xff]) # add terminator byte
		all_data.append((len(level_data) * 5 - 4, level_data))
		print(f"Sprites data for {level} takes {len(level_data) * 5 - 4} bytes")

		out_str = ""
		current_bank = 0
		bytes_filled = 0
		for (i, (length, data)) in enumerate(all_data):
			if bytes_filled + length > 0x2000:
				current_bank += 1
				bytes_filled = 0
			out_str += f'.segment "SPR_BANK_{current_bank:02X}"\n'
			out_str += f"sprite_data_{levels[i]}:\n"
			for sprite in data:
				out_str += f"  .byte {','.join([f'${x:02x}' for x in sprite])}\n"
			bytes_filled += length

		with open(own_path.joinpath("all_sprite_data.s"), 'w') as out:
			out.write(f"""

;;; Generated by export_levels.py

{out_str}
""")


def main():
	parser = argparse.ArgumentParser(prog='export_levels',
					description='RLE encode level csv files and convert them to level data')
	parser.add_argument('-f', '--folder')
	parser.add_argument('file', metavar='FILE', type=str, nargs='+',
					help='list of level names to process')
	args = parser.parse_args()
	bg_exp_data = export_bg(args.folder, args.file)
	export_spr(args.folder, args.file)

	levels = args.file

	print(bg_exp_data)
	
	with open(own_path.joinpath("all_level_table.s"), 'w') as out:
		level_list_lo = '\n'.join(
			[f"  .byte .lobyte(level_data_{x})" for x in levels])
		level_list_hi = '\n'.join(
			[f"  .byte .hibyte(level_data_{x})" for x in levels])
		sprite_list_lo = '\n'.join(
			[f"  .byte .lobyte(sprite_data_{x})" for x in levels])
		sprite_list_hi = '\n'.join(
			[f"  .byte .hibyte(sprite_data_{x})" for x in levels])
		level_list_bank = '\n'.join(
			[f"  .byte .lobyte(.bank(level_data_{x}))" for x in levels])
		sprite_list_bank = '\n'.join(
			[f"  .byte .lobyte(.bank(sprite_data_{x}))" for x in levels])
		level_lengths_lo = "\n".join(
			[f"  .byte .lobyte(${bg_exp_data[0][x]:04X})\t\t; {levels[x]}" 
				for x in range(len(levels))])
		level_lengths_hi = "\n".join(
			[f"  .byte .hibyte(${bg_exp_data[0][x]:04X})\t\t; {levels[x]}"
				for x in range(len(levels))])
		out.write(f"""
;;; Generated by export_levels.py

.global _level_list_lo, _level_list_hi, _level_list_bank, _sprite_list_lo, _sprite_list_hi, _sprite_list_bank
.segment "RODATA_2"

_level_list_lo:
{level_list_lo}

_level_list_hi:
{level_list_hi}

_level_list_bank:
{level_list_bank}

_sprite_list_lo:
{sprite_list_lo}

_sprite_list_hi:
{sprite_list_hi}

_sprite_list_bank:
{sprite_list_bank}

_level_lengths_lo:
{level_lengths_lo}

_level_lengths_hi:
{level_lengths_hi}
""")


if __name__ == "__main__":
	main()


###
# unused RLE functions for comparison

def horizontal_rle_single(lines):
	all_rows = []
	for row in lines:
		i += 1
		rle_row = []
		current_run = int(row[0])
		total_size += 1
		run_length = 1
		for strtile in row[1:]:
			total_size += 1

			tile = int(strtile)
			if current_run == tile and run_length < 0x80:
				run_length += 1
			else:
				# if its a single tile thats less than 0x80, then we add just one byte
				if run_length == 1 and current_run < 0x80:
					rle_row += [0x80 | current_run]
				else:
					rle_row += [run_length, current_run]
				current_run = tile
				run_length = 1
		all_rows.append(rle_row)

def vertical_rle_no_single(lines):
	# vertical rle compression where its always a 2 byte length + tile id combo
	i = 0
	rle_data2 = []
	for row in zip(*list(lines)):
		i += 1
		current_run = int(row[0])
		run_length = 1
		for strtile in row[1:]:
			tile = int(strtile)
			if current_run == tile and run_length < 0x100:
				run_length += 1
			else:
				# if its a single tile thats less than 0x80, then we add just one byte
				rle_data2 += [run_length, current_run]
				current_run = tile
				run_length = 1
	return rle_data2