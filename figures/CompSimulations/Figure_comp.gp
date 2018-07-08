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
set yrange [0:1]
set ylabel 'NAD consump. flux ({/Symbol m}M/s)'
set label 'A' font 'Arial, 16' at screen 0.0, screen 0.97

plot 'celldevscan_compNADANamPRT_0.txt' using ($10*3600):($6*1000000) \
title 'NADA' w lines lc rgb "#AA0000" lt 1 lw 2, \
'celldevscan_compNADANamPRT_0.txt' using ($10*3600):($5*1000000) \
title 'NamPRT' w lines lc rgb "#00AA00" lt 1 lw 2;


set origin 0.5,0.5
set yrange [-1:40]
set ylabel 'free NAD conc. (mM)'
set label 'B' font 'Arial, 16' at screen 0.5, screen 0.97

plot 'celldevscan_compNADANamPRT_0.txt' using ($10*3600):8 \
title 'NADA' w lines lc rgb "#AA0000" lt 1 lw 2, \
'celldevscan_compNADANamPRT_0.txt' using ($10*3600):7 \
title 'NamPRT' w lines lc rgb "#00AA00" lt 1 lw 2;


set xlabel 'K_{M} NamPRT (mM)'
set xrange[1e-07:0.001]
set title 'with NNMT'


set origin 0.0,0.0
set yrange [0:1]
set ylabel 'NAD consump. flux ({/Symbol m}M/s)'
set label 'C' font 'Arial, 16' at screen 0.0, screen 0.47

plot 'NamPRTkmscan_compNADANamPRT_10_fixed.txt' using 5:($7*1000000) \
title 'NADA' w lines lc rgb "#AA0000" lt 1 lw 2, \
'NamPRTkmscan_compNADANamPRT_10_fixed.txt' using 5:($6*1000000) \
title 'NamPRT and NNMT' w lines lc rgb "#3333FF" lt 1 lw 2;


set origin 0.5,0.0
set yrange [0:5]
set ylabel 'free NAD conc. ({/Symbol m}M)'
set label 'D' font 'Arial,16' at screen 0.5, screen 0.47

plot 'NamPRTkmscan_compNADANamPRT_10_fixed.txt' using 5:($9*1000) \
title 'NADA' w lines lc rgb "#AA0000" lt 1 lw 2, \
'NamPRTkmscan_compNADANamPRT_10_fixed.txt' using 5:($8*1000) \
title 'NamPRT and NNMT' w lines lc rgb "#3333FF" lt 1 lw 2;

