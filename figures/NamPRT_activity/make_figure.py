import sys
import os
import numpy as np
import matplotlib as mpl
import matplotlib.pyplot as plt
from matplotlib.ticker import FormatStrFormatter
import seaborn as sns

fs = 9
img_width = 4.5 # 3.42 or 4.5 or 7.0 for PNAS
img_height = 3.0

plt.rc('font', size=fs)        # controls default text sizes
plt.rc('axes', titlesize=fs)   # fontsize of the axes title
plt.rc('axes', labelsize=fs)   # fontsize of the x and y labels
plt.rc('xtick', labelsize=fs)  # fontsize of the tick labels
plt.rc('ytick', labelsize=fs)  # fontsize of the tick labels
plt.rc('legend', fontsize=fs)  # legend fontsize
plt.rc('figure', titlesize=fs) # fontsize of the figure title

#color = sns.color_palette("colorblind", n_colors=2)

majorlabel = ('wildtype', 'mutant')
minorlabel = ('Nam 1\nPRPP 1\nATP 0', '1\n0.1\n0', '0.1\n1\n0', '0.1\n0.1\n0', '0.1\n0.1\n1')

wt = []
mu = []
wtstd = []
mustd = []

with open('activity.csv') as f:
	next(f)
	next(f)
	for l in minorlabel:
		wtbuf = []
		mubuf = []
		for _ in range(3):
			d = next(f).rstrip().replace(',', '.').split('\t')
			wtbuf.append(float(d[5]))
			mubuf.append(float(d[6]))
		wt.append(np.mean(wtbuf))
		mu.append(np.mean(mubuf))
		wtstd.append(np.std(wtbuf))
		mustd.append(np.std(mubuf))

sns.set_style("whitegrid")

fig = plt.figure(figsize = (img_width, img_height))
ax1 = fig.add_subplot(1,1,1) # numrows, numcols, fignum

ind = np.arange(5)  # the x locations for the groups
width = 0.33       # the width of the bars
offset = width/2

wt_bar = ax1.bar(ind+offset+offset, wt, width, yerr=wtstd, color='black', align='center', error_kw={'ecolor':'black'})
mu_bar = ax1.bar(ind+width+width, mu, width, yerr=mustd, color='grey', align='center', error_kw={'ecolor': 'black'})

ax1.legend((wt_bar[0], mu_bar[0]), majorlabel, loc='upper right')

ax1.xaxis.grid(False)
ax1.set_xlim(0, 5)
ax1.set_xticks(ind + width + 0.165)
ax1.set_xticklabels(minorlabel)
#ax1.xaxis.set_major_formatter(plt.NullFormatter())
#ax1.tick_params(axis='y', which='major')
ax1.set_ylabel('NMN (nmol/mg enzyme/min)')

#ax1.yaxis.set_major_formatter(FormatStrFormatter('%.1f'))

#for label in ax1.yaxis.get_ticklabels()[1::2]:
#	label.set_visible(False)

plt.tight_layout()

if len(sys.argv) > 1 and sys.argv[1].startswith('sh'):
	plt.show()
else:
	fn = os.path.basename(os.path.dirname(os.path.realpath(__file__))) + '_barchart.pdf'
	plt.savefig(fn)
	print('File saved to "{}"'.format(fn))
