
from taxfinder import TaxFinder

spec = {}
for line in open('renamed.fasta'):
	if line.startswith('>'):
		spec[line.strip()[1:].replace('-', ' ')] = 0

TF = TaxFinder()

NADA = 1
NamPRT = 2
NNMT = 4

# aD -> NADA
# aL -> NNMT
# aM -> NamPRT
attrs = {'aD': NADA, 'aL': NNMT, 'aM': NamPRT}

for line in open('attributes.txt'):
	lline = line.split()
	name = TF.getNameFromID(lline[0])
	if name in spec:
		att = lline[1]
		for a in attrs:
			if a in att:
				spec[name] += attrs[a]

print(spec)
