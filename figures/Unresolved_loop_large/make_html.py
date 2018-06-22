#!/usr/bin/env python3

import sys
from taxfinder import TaxFinder

template = '''<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>MSA</title>
<style type="text/css">
body {{font-family: monospace;}}
.bg {{width: 25px;}}
.white {{background-color: #ffffff;}}
.red {{background-color: #aa0000;}}
.green {{background-color: #00aa00;}}
.lightblue {{background-color: #55aaff;}}
.yellow {{background-color: #dddd00;}}
.purple {{background-color: #aa00aa;}}
.blue {{background-color: #3333ff;}}
.black {{background-color: #000000; color: white;}}
table {{border-collapse: collapse;}}
td, tr {{margin: 0px; padding: 0px;}}
</style>
</head>
<body>
<table>
{}
</table>
</body>
</html>'''

line_template = '''<tr>
<td class="bg {}">&nbsp;</td>
<td><nobr>&nbsp;&nbsp;{}&nbsp;&nbsp;</nobr></td>
<td><nobr>{}</nobr></td>
</tr>'''

fasta = {}
spec = None
seq = []
attributes = {}
for line in open('alignmentmuscle.fasta'):
	line = line.rstrip()
	if line.startswith('>'):
		if spec:
			fasta[spec] = ''.join(seq)[232:305]
		spec = line[1:].replace('-', ' ')
		attributes[spec] = 0
		seq = []
	else:
		seq.append(line)


TF = TaxFinder()

NADA = 1
NamPRT = 2
NNMT = 4
attrs = {'aD': NADA, 'aL': NNMT, 'aM': NamPRT}

colors = {0: 'white',
NADA: 'red',
NamPRT: 'green',
NNMT: 'lightblue',
NADA+NamPRT: 'yellow',
NADA+NNMT: 'purple',
NamPRT+NNMT: 'blue',
NADA+NamPRT+NNMT: 'black'}

for line in open('attributes.txt'):
	lline = line.split()
	name = TF.getNameFromID(lline[0])
	if name in attributes:
		for a in attrs:
			if a in lline[1]:
				attributes[name] += attrs[a]

order = []
for line in open('commontree.txt'):
	for char in r'|\+-':
		line = line.replace(char, '')
	line = line.strip()
	if line in fasta:
		order.append(line)

out_list = []
for spec in order:
	try:
		out_list.append(line_template.format(colors[attributes[spec]], spec, fasta[spec]))
	except KeyError:
		print(spec, 'not found in fasta', file=sys.stderr)

print(template.format('\n'.join(out_list)))
