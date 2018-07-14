import sys
import os
import numpy as np
import matplotlib as mpl
import matplotlib.pyplot as plt
from matplotlib.ticker import FormatStrFormatter
import scipy.stats as stats

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

majorlabel = ('wt NamPRT', '$\Delta$42-51 NamPRT')
minorlabel1 = ('Nam 1\nPRPP 1\nATP 0', '0.1\n1\n0')
minorlabel2 = ('0.1\n0.1\n0', '0.1\n0.1\n1')

wt1 = []
mu1 = []
wtstd1 = []
mustd1 = []
wtall1 = []
muall1 = []

wt2 = []
mu2 = []
wtstd2 = []
mustd2 = []
wtall2 = []
muall2 = []

with open('activity.csv') as f:
	next(f)
	next(f)
	for _ in minorlabel1:
		wtbuf = []
		mubuf = []
		for _ in range(3):
			d = next(f).rstrip().replace(',', '.').split('\t')
			wtbuf.append(float(d[7]))
			mubuf.append(float(d[8]))
		wt1.append(np.mean(wtbuf))
		mu1.append(np.mean(mubuf))
		wtstd1.append(np.std(wtbuf))
		mustd1.append(np.std(mubuf))
		wtall1.append(tuple(wtbuf))
		muall1.append(tuple(mubuf))

	rel = None
	for _ in minorlabel2:
		wtbuf = []
		mubuf = []
		for _ in range(3):
			d = next(f).rstrip().replace(',', '.').split('\t')
			wtbuf.append(float(d[7]))
			mubuf.append(float(d[8]))
		if rel is None:
			rel = np.mean(wtbuf)
		wt2.append(np.mean(wtbuf)/rel)
		mu2.append(np.mean(mubuf)/rel)
		wtstd2.append(np.std(wtbuf)/rel)
		mustd2.append(np.std(mubuf)/rel)
		wtall2.append(tuple(wtbuf))
		muall2.append(tuple(mubuf))

fig = plt.figure(figsize = (img_width, img_height))
ax1 = fig.add_subplot(1,2,1) # numrows, numcols, fignum
ax2 = fig.add_subplot(1,2,2) # numrows, numcols, fignum

ind1 = np.arange(2)  # the x locations for the groups
ind2 = np.arange(2)  # the x locations for the groups
width = 0.33       # the width of the bars
offset = width/2

wt_bar1 = ax1.bar(ind1+offset+offset, wt1, width, yerr=wtstd1, color='black', align='center', error_kw={'ecolor':'black'})
mu_bar1 = ax1.bar(ind1+width+width, mu1, width, yerr=mustd1, color='grey', align='center', error_kw={'ecolor': 'black'})
offset = width/2

wt_bar2 = ax2.bar(ind2+offset+offset, wt2, width, yerr=wtstd2, color='black', align='center', error_kw={'ecolor':'black'})
mu_bar2 = ax2.bar(ind2+width+width, mu2, width, yerr=mustd2, color='grey', align='center', error_kw={'ecolor': 'black'})

ax1.legend((wt_bar1[0], mu_bar1[0]), majorlabel, loc='upper right', frameon=False)
ax2.legend((wt_bar2[0], mu_bar2[0]), majorlabel, loc='upper left', frameon=False)

ax1.xaxis.grid(False)
ax1.set_xlim(0, 2)
ax1.set_ylim(0, 0.014)
ax1.set_xticks(ind1 + width + 0.165)
ax1.set_xticklabels(minorlabel1)
ax1.set_ylabel('kcat (1/s)')
ax1.xaxis.set_ticks_position('bottom')
ax1.yaxis.set_ticks_position('left')

ax2.xaxis.grid(False)
ax2.set_xlim(0, 2)
ax2.set_ylim(0, 2.5)
ax2.set_xticks(ind2 + width + 0.165)
ax2.set_xticklabels(minorlabel2)
ax2.set_ylabel('kcat (rel. to mean WT w/o ATP)')
ax2.xaxis.set_ticks_position('bottom')
ax2.yaxis.set_ticks_position('left')

plt.tight_layout()


print('T-test pvalues: Nam,PRPP,ATP')
print('mu 1 vs. mu 2', stats.ttest_ind(muall1[0], muall1[1]).pvalue)
print('wt 1 vs. wt 2', stats.ttest_ind(wtall1[0], wtall1[1]).pvalue)

print('mu 4 vs. mu 5', stats.ttest_ind(muall2[0], muall2[1]).pvalue)
print('wt 4 vs. wt 5', stats.ttest_ind(wtall2[0], wtall2[1]).pvalue)

if len(sys.argv) > 1 and sys.argv[1].startswith('sh'):
	plt.show()
else:
	fn = os.path.basename(os.path.dirname(os.path.realpath(__file__))) + '_barchart.pdf'
	plt.savefig(fn)
	print('File saved to "{}"'.format(fn))
