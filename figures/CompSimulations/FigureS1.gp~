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

set yrange [0:1.2]

set label 'A' font 'Arial, 16' at screen 0.0, screen 0.95
set title 'NAD consumption flux ({/Symbol m}M/s)'
set ylabel 'Flux NAD consumption ({/Symbol m}M/s)'

plot 'simulations/NADANamPRTNNMT_celldev_1_0_0.txt' using ($6*3600):($8*1000) title 'NADA only' w lines lc rgb "#AA0000" lt 1 , 'simulations/NADANamPRTNNMT_celldev_1_10_0.txt' using ($6*3600):($8*1000) title 'NADA+NNMT' w lines lc rgb "#AA00AA" lt 1, 'simulations/NADANamPRTNNMT_celldev_0_0_100.txt' using ($6*3600):($8*1000) title 'NamPRT only' w lines lc rgb "#00AA00" lt 1, 'simulations/NADANamPRTNNMT_celldev_0_10_100.txt' using ($6*3600):($8*1000) title '  NamPRT+NNMT' w lines lc  "#3333FF" lt 1;
set title 'NAD concentration'


set yrange [-1:120]


set ylabel offset 2,0 ' concentration of free NAD ({/Symbol m}M)'


set size 0.5,0.5
set origin 0.5,0.5
set label 'B' font 'Arial,16' at screen 0.5, screen 0.95




plot 'simulations/NADANamPRTNNMT_celldev_1_0_0.txt' using ($6*3600):($7*1000) title 'NADA only' w lines lc rgb "#AA0000" lt 1 , 'simulations/NADANamPRTNNMT_celldev_1_10_0.txt' using ($6*3600):($7*1000) title 'NADA+NNMT' w lines lc rgb "#AA00AA" lt 1, 'simulations/NADANamPRTNNMT_celldev_0_0_100.txt' using ($6*3600):($7*1000) title 'NamPRT only' w lines lc rgb "#00AA00" lt 1, 'simulations/NADANamPRTNNMT_celldev_0_10_100.txt' using ($6*3600):($7*1000) title '  NamPRT+NNMT' w lines lc  "#3333FF" lt 1;


set size 0.5,0.5
set origin 0.0,0.0
set key top center
set xlabel 'Nam import rate in {/Symbol m}M/s'
set yrange [0:1.1]

set label 'C' font 'Arial, 16' at screen 0.0, screen 0.55
set title 'NAD consumption flux ({/Symbol m}M/s)'
set ylabel 'Flux NAD consumption({/Symbol m}M/s)'
set title 'NAD consumption flux ({/Symbol m}M/s)'

plot 'simulations/NADANamPRTNNMT_Namimport_1_0_0.txt' using ($9*1000):($8*1000) title 'NADA only' w lines lc rgb "#AA0000" lt 1 , 'simulations/NADANamPRTNNMT_Namimport_1_10_0.txt' using ($9*1000):($8*1000) title 'NADA+NNMT' w lines lc rgb "#AA00AA" lt 1, 'simulations/NADANamPRTNNMT_Namimport_0_0_100.txt' using ($9*1000):($8*1000) title 'NamPRT only' w lines lc rgb "#00AA00" lt 1, 'simulations/NADANamPRTNNMT_Namimport_0_10_100.txt' using ($9*1000):($8*1000) title 'NamPRT+NNMT' w lines lc  "#3333FF" lt 1;

set yrange [-1:120]


set ylabel offset 2,0 ' concentration of free NAD ({/Symbol m}M)'
set key left
set title 'NAD concentration'
set size 0.5,0.5
set origin 0.5,0.0
set label 'D' font 'Arial,16' at screen 0.5, screen 0.55

plot 'simulations/NADANamPRTNNMT_Namimport_1_0_0.txt' using ($9*1000):($7*1000) title 'NADA only' w lines lc rgb "#AA0000" lt 1 , 'simulations/NADANamPRTNNMT_Namimport_1_10_0.txt' using ($9*1000):($7*1000) title 'NADA+NNMT' w lines lc rgb "#AA00AA" lt 1, 'simulations/NADANamPRTNNMT_Namimport_0_0_100.txt' using ($9*1000):($7*1000) title 'NamPRT only' w lines lc rgb "#00AA00" lt 1, 'simulations/NADANamPRTNNMT_Namimport_0_10_100.txt' using ($9*1000):($7*1000) title '  NamPRT+NNMT' w lines lc  "#3333FF" lt 1;



