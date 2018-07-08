set terminal postscript eps size 10cm,13.5cm enhanced color font 'Arial,12'
set output 'Figure4.eps'
set key left
set multiplot

set grid x,y,z
set format x "%g"
set format y "%g"
set xtics offset 0,-0.3
set ytics offset 1,-0.25
set ztics offset 1,0

set xlabel offset 0,-2 'K_{M} NamPRT ({/Symbol m}M)' rotate parallel
set ylabel offset 0,-2 'cell division rate per h' rotate parallel

set xrange[0.0001:1]
set yrange[0.01:1]

set zlabel offset 2,0

set size 0.5,0.33
set pm3d
unset key
set logscale xy
set xyplan 0


set ztics 0.0,0.1
set cbtics 0.0,0.05
set origin 0.0,0.66
set zlabel 'NAD consump. flux ({/Symbol m}M/s)' rotate by 90
set title "NamPRT only"
set label 'A' font 'Arial,16' at screen 0.01, screen 0.97

splot 'simulations/NamPRTkmscan_0.txt' using ($4*1000):($6*3600):($8*1000) with pm3d;


set ztics 12,2
set cbtics 12,2
set origin 0.5,0.66
set zlabel 'free NAD conc. ({/Symbol m}M)' rotate by 90
set title "NamPRT only"
set label 'B' font 'Arial,16' at screen 0.51, screen 0.97

splot 'simulations/NamPRTkmscan_0.txt' using ($4*1000):($6*3600):($7*1000) with pm3d;


set ztics 0.1,0.1
set cbtics 0.1,0.1
set origin 0.0, 0.33
set zlabel 'NAD consump. flux ({/Symbol m}M/s)' rotate by 90
set title "NamPRT and NNMT"
set label 'C' font 'Arial,16' at screen 0.01, screen 0.63

set label "{/Symbol \052}" at 0.003,0.1,0.65 tc rgb "black" font "Arial,18" front
splot 'simulations/NamPRTkmscan_10.txt' using ($4*1000):($6*3600):($8*1000) with pm3d;
unset label


set ztics 0.0,1
set cbtics 0.0,0.5
set origin 0.5, 0.33
set zlabel 'free NAD conc. ({/Symbol m}M)' rotate by 90
set title "NamPRT and NNMT"
set label 'D' font 'Arial,16' at screen 0.51, screen 0.63

set label "{/Symbol \052}" at 0.003,0.1,3.16 tc rgb "black" font "Arial,18" front
splot 'simulations/NamPRTkmscan_10.txt' using ($4*1000):($6*3600):($7*1000) with pm3d;
unset label


unset pm3d
unset title
set key right Left font 'Arial,11'
unset logscale y
unset grid

set xrange [0.01:1]
set xlabel 'cell division rate per h' offset 0,0

set xtics offset 0,0
set ytics offset 0,0

#set key out vert bottom center

set yrange [0:1.0]
set origin 0.0, 0.0
set ylabel offset 0,0 'NAD consump. flux ({/Symbol m}M/s)'
set title 'Nam import 0.1 {/Symbol m}M/s'
set label 'E' font 'Arial,16' at screen 0.01, screen 0.3

plot 'simulations/NampRTNNMT_celldev_0_0_100.txt' using ($6*3600):($8*1000) \
title 'NamPRT K_{M} = 5 nM' w lines lt rgb "#00AA00" lw 3, \
'simulations/NampRTNNMT_celldev_0_10_100.txt' using ($6*3600):($8*1000) \
title 'NamPRT K_{M} = 5 nM + NNMT' w lines lt rgb "#3333FF" lw 3, \
'simulations/NampRTNNMT_celldev_km001_0_0_100.txt' using ($6*3600):($8*1000) \
title 'NamPRT K_{M} = 1 {/Symbol m}M' w lines lt rgb "#AAAAAA" lw 3 dt 2, \
'simulations/NampRTNNMT_celldev_km001_0_10_100.txt' using ($6*3600):($8*1000) \
title 'NamPRT K_{M} = 1 {/Symbol m}M + NNMT' w lines lt rgb "#3333AA" lw 3 dt 2;


set yrange [0:35]
set origin 0.5, 0.0
set ylabel 'free NAD conc. ({/Symbol m}M)'
set title 'Nam import 0.1 {/Symbol m}M/s'
set label 'F' font 'Arial,16' at screen 0.51, screen 0.3

plot 'simulations/NampRTNNMT_celldev_0_0_100.txt' using ($6*3600):($7*1000) \
title 'NamPRT K_{M} = 5 nM' w lines lt rgb "#00AA00" lw 3, \
'simulations/NampRTNNMT_celldev_0_10_100.txt' using ($6*3600):($7*1000) \
title 'NamPRT K_{M} = 5 nM + NNMT' w lines lt rgb "#3333FF" lw 3, \
'simulations/NampRTNNMT_celldev_km001_0_0_100.txt' using ($6*3600):($7*1000) \
title 'NamPRT K_{M} = 1 {/Symbol m}M' w lines lt rgb "#AAAAAA" lw 3 dt 2, \
'simulations/NampRTNNMT_celldev_km001_0_10_100.txt' using ($6*3600):($7*1000) \
title 'NamPRT K_{M} = 1 {/Symbol m}M + NNMT' w lines lt rgb "#3333AA" lw 3 dt 2;
