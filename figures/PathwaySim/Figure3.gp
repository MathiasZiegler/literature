set terminal postscript eps size 10cm,4.5cm enhanced color font 'Arial,12'
set output 'Figure3.eps'
set multiplot

set xlabel 'cell division rate per h'

set log x
set format x "%g"

set size 0.5,1
set xrange [0.01:1]

set origin 0.0,0.0
set yrange [-0.05:3.5]
set title 'NAD consumption'
set ylabel 'NAD consump. flux ({/Symbol m}M/s)'
set label 'A' font 'Arial,16' at screen 0.01, screen 0.95

plot 'simulations/NampRTNNMT_celldev_0_100.txt' using ($6*3600):($8*1000) \
title 'NamPRT only' w lines lt rgb "#00AA00" lw 2, \
'simulations/NampRTNNMT_celldev_10_100.txt' using ($6*3600):($8*1000) \
title 'NamPRT and NNMT' w lines  lt  rgb "#3333FF" lw 2, \
'simulations/NampRTNNMT_celldev_10_400.txt' using ($6*3600):($8*1000) \
title '4 {/Symbol \264} NamPRT and NNMT' w lines lc rgb "#3333FF" dt 2 lw 2;


set origin 0.5,0.0
set yrange [0:40]
set title 'NAD concentration'
set ylabel 'free NAD conc. ({/Symbol m}M)'
set label 'B' font 'Arial, 16' at screen 0.5, screen 0.95

plot 'simulations/NampRTNNMT_celldev_0_100.txt' using ($6*3600):($7*1000) \
title 'NamPRT only' w lines lt rgb "#00AA00" lw 2, \
'simulations/NampRTNNMT_celldev_10_100.txt' using ($6*3600):($7*1000) \
title 'NamPRT and NNMT' w lines lt rgb "#3333FF" lw 2, \
'simulations/NampRTNNMT_celldev_10_400.txt' using ($6*3600):($7*1000) \
title '4 {/Symbol \264} NamPRT and NNMT' w lines lc rgb "#3333FF" dt 2 lw 2;

