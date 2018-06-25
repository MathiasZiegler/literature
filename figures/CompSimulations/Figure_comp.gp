set terminal postscript eps color enhanced 'Arial' 12
set output 'Figure_comp.eps'
set multiplot

set xlabel 'cell division rate (per h)'
set key right
set log x
set format x "%g
set size 0.5,0.5
set origin 0.0,0.5
set xrange [0.1:1]

set yrange [0:1]

set label 'A' font 'Arial, 16' at screen 0.0, screen 0.95
set title 'NAD consumption flux ({/Symbol m}M/s)'
set ylabel 'Flux NAD consumption ({/Symbol m}M/s)'

plot 'celldevscan_compNADANamPRT_0.txt' using ($10*3600):($6*1000000) title 'NADA' w lines lc rgb "#AA0000" lt 1 lw 2, 'celldevscan_compNADANamPRT_0.txt' using ($10*3600):($5*1000000) title 'NamPRT' w lines lc rgb "#00AA00" lt 1 lw 2;
set title 'NAD concentration'


set yrange [-0.1:4]


set ylabel offset 2,0 ' concentration of free NAD (mM)'


set size 0.5,0.5
set origin 0.5,0.5
set label 'B' font 'Arial,16' at screen 0.5, screen 0.95

plot 'celldevscan_compNADANamPRT_0.txt' using ($10*3600):8 title 'NADA' w lines lc rgb "#AA0000" lt 1 lw 2, 'celldevscan_compNADANamPRT_0.txt' using ($10*3600):7 title 'NamPRT' w lines lc rgb "#00AA00" lt 1 lw 2;


set size 0.5,0.5
set origin 0.0,0.0
set format x "%g"
set xrange[1e-07:0.001]
set yrange [0:15]


set label 'C' font 'Arial, 16' at screen 0.0, screen 0.55
set title 'without NNMT'
set ylabel offset 2,0 ' concentration of free NAD ({/Symbol m}M)'

plot 'NamPRTkmscan_compNADANamPRT_0.txt' using 5:9 title 'NADA' w lines lc rgb "#AA0000" lt 1 lw 2, 'NamPRTkmscan_compNADANamPRT_0.txt' using 5:($8*1000) title 'NamPRT' w lines lc rgb "#00AA00" lt 1 lw 2;


set yrange [0:5]


set ylabel offset 2,0 ' concentration of free NAD ({/Symbol m}M)'
set key left
set title 'with NNMT'
set size 0.5,0.5
set origin 0.5,0.0
set label 'D' font 'Arial,16' at screen 0.5, screen 0.55

plot 'NamPRTkmscan_compNADANamPRT_10.txt' using 5:($9*1000) title 'NADA' w lines lc rgb "#AA0000" lt 1 lw 2, 'NamPRTkmscan_compNADANamPRT_10.txt' using 5:($8*1000) title 'NamPRTßNNMT' w lines lc rgb "#3333FF" lt 1 lw 2;

