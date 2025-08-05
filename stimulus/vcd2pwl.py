#!/usr/bin/env python

import sys
import os
import re

# Set some electrical parameters
HI = 3.3       # Electrical level for a logical 1
LO = 0.0       # Electrical value for a logical 0
TRF = 1e-9     # Rise/fall time in sec
REAL_SCALE = 1.0  # Scale factor for real valued signals

# Create symbol table
symbol_table = {}
tracksymbols = []

# Define token patterns
token_table = {
    "DATE": r"^\$date",
    "VER": r"^\$version",
    "TIME": r"^\$timescale",
    "SCOPE": r"^\$scope",
    "DUMP": r"^\$dumpvars",
    "VAR": r"^\$var",
    "END": r"^\$end",
    "UPDATE": r"^#\d+",
    "VCD": r"^[01]",
    "VCDR": r"^r"
}

def parser(line):
    for key, pattern in token_table.items():
        if re.match(pattern, line, re.IGNORECASE):
            return key
    return "NULL"

def deletelastlinefromfile(file1, file2):
    os.system(f"sed '$d' {file1} > {file2}")
    os.system(f"mv {file2} {file1}")

def sanitize_filename(name):
    # Replace any character not allowed in Linux file names with _
    # Allowed: letters, numbers, dot, dash, underscore
    return re.sub(r'[^A-Za-z0-9._-]', '_', name)

# Get environment variables
home = os.environ.get("HOME", ".")
phome = os.environ.get("PHOME", ".")
os.chdir(phome)

# Read the file called "base" to get the VCD filename
try:
    with open("base", "r") as base_fid:
        vcd_file_name = base_fid.readline().strip()
except IOError:
    print("Could not open file called base for reading!")
    sys.exit(1)

vcd_file_name += ".vcd"
os.makedirs("./vcd", exist_ok=True)
os.chdir("./vcd")
os.makedirs("pwls", exist_ok=True)
os.makedirs("tmp_pwls", exist_ok=True)

# Check for correct number of command line arguments
if len(sys.argv) != 1:
    print("Usage: vcd2pwl")
    sys.exit(1)

print(f"\nReading file: {vcd_file_name}\n")

# Open VCD file
try:
    vcd_fid = open(vcd_file_name, "r")
except IOError:
    print("Could not open file for reading!")
    sys.exit(1)

line = vcd_fid.readline()
time = 0
multiplier = 1.0
fid = {}

# Main parsing loop
while line:
    token = parser(line)

    if token == "TIME":
        line = vcd_fid.readline()
        fields = line.split()
        # Support timescale like "1ps", "1ns", etc.
        timescale = fields[0] + fields[1] if len(fields) > 1 else fields[0]
        m = re.match(r"(\d+(?:\.\d+)?)([a-zA-Z]+)", timescale)
        if m:
            value = float(m.group(1))
            unit = m.group(2)
        else:
            print(f"Invalid timescale format: {timescale}")
            sys.exit(1)
        if unit == "ns":
            multiplier = 1e-9 * value
        elif unit == "ps":
            multiplier = 1e-12 * value
        elif unit == "us":
            multiplier = 1e-6 * value
        else:
            multiplier = 1.0 * value
        print(f"Multiplier is {multiplier:g}.\n")

    elif token == "VAR":
        fields = line.split()
        symbol = fields[3]
        signal = fields[4]
        symbol_table[symbol] = signal

    elif token == "DUMP":
        time = 0
        keys = symbol_table.keys()
        for key in keys:
            signal_name = symbol_table[key]
            file_name = f"pwls/{sanitize_filename(signal_name)}.pwl"
            fid[key] = open(file_name, "w")

        line = vcd_fid.readline()
        while parser(line) != "END":
            value = line[0]
            if value in ('0', '1'):
                voltage = LO if value == '0' else HI
                symbol = line[1]
            elif value == 'r':
                fields = line.split()
                m = re.search(r'[+-]?(\d+(\.\d*)?|\.\d+)([eE][+-]?\d+)?', fields[0])
                voltage = float(m.group(0)) * REAL_SCALE
                symbol = fields[1]
            else:
                line = vcd_fid.readline()
                continue

            line_out = f"{time:g} {voltage:g}\n"
            fid[symbol].write(line_out)
            line = vcd_fid.readline()

    elif token == "UPDATE":
        time = int(line[1:].strip())
        if tracksymbols:
            tracksymbols.clear()

    elif token == "VCD":
        value = line[0]
        symbol = re.sub('\n','',line[1:])
        voltage = HI if value == '0' else LO
        line_out = f"{multiplier * time:g} {voltage:g}\n"
        file2 = "tmp_" + fid[symbol].name

        if symbol in tracksymbols:
            fid[symbol].close()
            deletelastlinefromfile(fid[symbol].name, file2)
        else:
            fid[symbol] = open(fid[symbol].name, "a")
        fid[symbol].write(line_out)

        voltage = LO if value == '0' else HI
        line_out = f"{multiplier * time + TRF:g} {voltage:g}\n"

        if symbol in tracksymbols:
            fid[symbol].close()
            deletelastlinefromfile(fid[symbol].name, file2)
            tracksymbols.remove(symbol)
        else:
            fid[symbol] = open(fid[symbol].name, "a")
        fid[symbol].write(line_out)
        tracksymbols.append(symbol)

    elif token == "VCDR":
        fields = line.split()
        m = re.search(r'[+-]?(\d+(\.\d*)?|\.\d+)([eE][+-]?\d+)?', fields[0])
        voltage = float(m.group(0)) * REAL_SCALE
        symbol = fields[1]
        line_out = f"{multiplier * time:g} {voltage:g}\n"
        fid[symbol].write(line_out)

    line = vcd_fid.readline()

# Cleanup
vcd_fid.close()
for key in symbol_table.keys():
    name = sanitize_filename(symbol_table[key]) + ".pwl"
    print(f"Successfully created: {name}")
    fid[key].close()
print("")