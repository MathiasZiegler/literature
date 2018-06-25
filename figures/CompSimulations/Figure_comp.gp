set terminal postscript eps color enhanced 'Arial' 12
set output 'FigureS1.eps'
set multiplot

set xlabel 'cell division rate (per h)'
set key left
set log x
set format x "%g
set size 0.5,0.5
set origin 0.0,0.5
set xrange [0.01:1]

set yrange [0:20]

set label 'A' font 'Arial, 16' at screen 0.0, screen 0.95
set title 'NAD consumption flux ({/Symbol m}M/s)'
set ylabel 'Flux NAD consumption ({/Symbol m}M/s)'

plot 'celldevscan_compNADANamPRT_0.txt' using ($10*3600):($5*1000) title 'NADA' w lines lc rgb "#AA0000" lt 1 , 'celldevscan_compNADANamPRT_0.txt' using ($10*3600):($6*1000) title 'NamPRT' w lines lc rgb "#AA0000" lt 1;
set title 'NAD concentration'


set yrange [-1:120]


set ylabel offset 2,0 ' concentration of free NAD ({/Symbol m}M)'


set size 0.5,0.5
set origin 0.5,0.5
set label 'B' font 'Arial,16' at screen 0.5, screen 0.95

plot 'celldevscan_compNADANamPRT_0.txt' using ($10*3600):($7*1000) title 'NADA' w lines lc rgb "#AA0000" lt 1 , 'celldevscan_compNADANamPRT_0.txt' using ($10*3600):($8*1000) title 'NamPRT' w lines lc rgb "##00AA00" lt 1;


set size 0.5,0.5
set origin 0.0,0.0
set key top center
set xlabel 'Nam import rate in {/Symbol m}M/s'
set yrange [0:1.1]

set label 'C' font 'Arial, 16' at screen 0.0, screen 0.55
set title 'NAD consumption flux ({/Symbol m}M/s)'
set ylabel 'Flux NAD consumption({/Symbol m}M/s)'
set title 'NAD consumption flux ({/Symbol m}M/s)'

plot 'celldevscan_compNADANamPRT_10.txt' using ($10*3600):($5*1000) title 'NADA' w lines lc rgb "#AA0000" lt 1 , 'celldevscan_compNADANamPRT_10.txt' using ($10*3600):($6*1000) title 'NamPRT' w lines lc rgb "##00AA00" lt 1;


set yrange [-1:120]


set ylabel offset 2,0 ' concentration of free NAD ({/Symbol m}M)'
set key left
set title 'NAD concentration'
set size 0.5,0.5
set origin 0.5,0.0
set label 'D' font 'Arial,16' at screen 0.5, screen 0.55

plot 'celldevscan_compNADANamPRT_10.txt' using ($10*3600):($7*1000) title 'NADA' w lines lc rgb "#AA0000" lt 1 , 'celldevscan_compNADANamPRT_10.txt' using ($10*3600):($8*1000) title 'NamPRT' w lines lc rgb "##00AA00" lt 1;

