set terminal postscript eps color enhanced 'Arial' 12
set output 'Figure3.eps'
set multiplot

set xlabel 'cell division rate per hour'

set log x
#set format x "%g"


set size 0.5,0.5
set origin 0.0,0.5

set xrange [0.01:1]



set yrange [-0.01:0.4]
set title 'NAD consumption'
set ylabel 'NAD consumption flux ({/Symbol m}M/s)'
set label 'A' font 'Arial,16' at screen 0.0, screen 0.98

plot 'simulations/NampRTNNMT_celldev_0_100.txt' using ($6*3600):($8*1000) title 'NamPRT only' w lines lt rgb "#00AA00" lw 3, 'simulations/NampRTNNMT_celldev_10_100.txt' using ($6*3600):($8*1000) title 'NamPRT + NNMT' w lines  lt  rgb "#3333FF" lw 3, 'simulations/NampRTNNMT_celldev_10_400.txt' using ($6*3600):($8*1000) title '4xNamPRT + NNMT' w lines  lt  rgb "#3333AA" lw 3 dt 2;


set size 0.5,0.5
set origin 0.5,0.5
set title 'NAD concentration'
set label 'B' font 'Arial, 16' at screen 0.5, screen 0.98
set ylabel offset 2,0 ' concentration of free NAD ({/Symbol m}M)'
set yrange [0:35]
plot 'simulations/NampRTNNMT_celldev_0_100.txt' using ($6*3600):($7*1000) title 'NamPRT only' w lines lt rgb "#00AA00" lw 3, 'simulations/NampRTNNMT_celldev_10_100.txt' using ($6*3600):($7*1000) title 'NamPRT + NNMT' w lines lt rgb "#3333FF" lw 3, 'simulations/NampRTNNMT_celldev_10_400.txt' using ($6*3600):($7*1000) title '4xNamPRT + NNMT' w lines lt rgb "#3333AA" lw 3 dt 2;

