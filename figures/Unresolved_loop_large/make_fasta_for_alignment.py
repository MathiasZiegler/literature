
seqs = {}
with open('fastas_euks.fa') as f:
	for line in f:
		if line.startswith('>'):
			#acc = line.split()[0][5:]
			spec = line.split('[')[1][:-2].replace(' ', '-')
			seq = next(f).rstrip()
			if not 400 < len(seq) < 550:
				continue

			if spec not in seqs or len(seqs[spec]) < len(seq):
				seqs[spec] = seq

print(len(seqs), 'seqs found')

order = []

for line in open('commontree.txt'):
	for char in r'|\+-':
		line = line.replace(char, '')
	line = line.strip().replace(' ', '-')
	if line in seqs:
		order.append(line)

for spec in seqs:
	if spec not in order:
		print(spec, 'not found in order')

with open('renamed.fasta', 'w') as out:
	for spec in order:
		out.write('>{}\n{}\n\n'.format(spec, seqs[spec]))
