#!/usr/bin/python3

# written by Doug Fraker 2018
# this program takes csv output from Tiled
# and turns it into a C style array that can be included
# This version is for multi-room csv files and it breaks
# it into 16 wide rooms (file should be a multiple of 16 wide)
# NES programming...cc65


import sys
import csv
import os


filename = sys.argv[1]
newname = filename[0:-4] + ".c"
newname2 = os.path.basename(filename)
newname2 = newname2[0:-4]

with open(filename, 'r') as oldfile:
  reader = csv.reader(oldfile)
  your_list = list(reader)

newfile = open(newname, 'w')  # warning, this may overwrite old file !!!!!!!!!!!!!!!!!!!!!


rows = len(your_list)
columns = len(your_list[0])

newfile.write("// Y_lowbyte, X, screen_lowbyte, screen_highbyte, object #, Y_highbyte, unused, unused\n\n")

for i in range(0, columns):
	for j in range(0, rows):
		a = str(your_list[j][i])
		if (a != "-1"):
			newfile.write(str(hex(j % 16)) + "0, ") # Y position
			k = i % 16
			newfile.write(str(hex(k)) + "0, ")		# X position
			k = i // 16
			newfile.write(str(k) + ", ")			# low byte of screen number
			k = k // 256
			newfile.write(str(k) + ", ")			# high byte of screen number
			newfile.write("obj"  + a + ", ")		# object id
			k = (i % 32) // 16
			newfile.write(str(k) + ", ")  				# vertical screen (0 or 1)
			newfile.write("0, ")					# unused
			newfile.write("0, \n")					# unused

newfile.write("TURN_OFF")
newfile.write("\n\n")			

	
print("Done.")
oldfile.close
newfile.close