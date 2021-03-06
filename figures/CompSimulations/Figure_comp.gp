set terminal postscript eps size 10cm,8cm enhanced color font 'Arial,12'
set output 'Figure_comp.eps'
set multiplot

set xlabel 'cell division rate per h'
set key right
set log x
set format x "%g"
set size 0.5,0.5
set xrange [0.01:1]
set title 'without NNMT'


set origin 0.0,0.5
set yrange [0:10]
set ylabel 'NAD consump. flux ({/Symbol m}M/s)'
set label 'a' font 'Arial, 16' at screen 0.0, screen 0.97

plot 'celldevscan_compNADANamPRT_0.txt' using ($11*3600):($7*1000000) \
title 'NADA' w lines lc rgb "#AA0000" lt 1 lw 2, \
'celldevscan_compNADANamPRT_0.txt' using ($11*3600):($6*1000000) \
title 'NamPT' w lines lc rgb "#00AA00" lt 1 lw 2;


set origin 0.5,0.5
set yrange [-0.1:6]
set ylabel 'free NAD conc. (mM)'
set label 'b' font 'Arial, 16' at screen 0.5, screen 0.97

plot 'celldevscan_compNADANamPRT_0.txt' using ($11*3600):9 \
title 'NADA' w lines lc rgb "#AA0000" lt 1 lw 2, \
'celldevscan_compNADANamPRT_0.txt' using ($11*3600):8 \
title 'NamPT' w lines lc rgb "#00AA00" lt 1 lw 2;


set xlabel 'K_{M} NamPT ({/Symbol m}M)'
set xrange[0.0001:1]
set title 'with NNMT'


set origin 0.0,0.0
set yrange [0:1]
set ylabel 'NAD consump. flux ({/Symbol m}M/s)'
set label 'c' font 'Arial, 16' at screen 0.0, screen 0.47

plot 'NamPRTkmscan_compNADANamPRT_10_fixed.txt' using ($5*1000):($7*1000000) \
title 'NADA' w lines lc rgb "#AA0000" lt 1 lw 2, \
'NamPRTkmscan_compNADANamPRT_10_fixed.txt' using ($5*1000):($6*1000000) \
title 'NamPT and NNMT' w lines lc rgb "#3333FF" lt 1 lw 2;


set origin 0.5,0.0
set yrange [0:5]
set ylabel 'free NAD conc. ({/Symbol m}M)'
set label 'd' font 'Arial,16' at screen 0.5, screen 0.47

plot 'NamPRTkmscan_compNADANamPRT_10_fixed.txt' using ($5*1000):($9*1000) \
title 'NADA' w lines lc rgb "#AA0000" lt 1 lw 2, \
'NamPRTkmscan_compNADANamPRT_10_fixed.txt' using ($5*1000):($8*1000) \
title 'NamPT and NNMT' w lines lc rgb "#3333FF" lt 1 lw 2;

