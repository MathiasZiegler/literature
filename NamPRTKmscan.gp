set terminal postscript eps color enhanced 'Arial' 6
set output 'NamPRTKmscan.eps'
set key left
set multiplot

set grid x,y,z
set xtics offset 0,-1 
set format x "%g"
set format y "%g"
set ytics  offset 0,-1 
set ztics offset 2,0

set ylabel offset 0,-2 'cell devision rate per h' rotate parallel

set xlabel offset 0,-2 'K_M NamPRT (mM)' 
set logscale x
set xrange[1e-07:0.001]

#set size 1, 1
set key font "Arial, 6"
#set xtics nomirror
set pm3d
unset key
unset clabel
set logscale xy
set xyplan 0

set yrange[0.01:1]

set size 0.3,0.3
set origin 0.0,0.65
set zlabel 'NAD-consumption flux ({/Symbol m}M/s)' rotate by 90
set title "NamPRT only" font 'Arial,8'
set label 'A' font 'Arial,9' at screen 0.0, screen 0.9

splot 'NamPRTkmscan_0.txt' using 4:($6*3600):($8*1000)  with pm3d;



set size 0.3,0.3
set origin 0.3,0.65
set title "NamPRT only" font 'Arial,8'

set label 'B' font 'Arial,9' at screen 0.3, screen 0.9
set zlabel 'Concentration of free NAD  in {/Symbol m}M' rotate by 90
splot 'NamPRTkmscan_0.txt' using 4:($6*3600):($7*1000)  with pm3d;




set title "NamPRT + NNMT"
set size 0.3,0.3
set origin 0, 0.35
set zlabel 'NAD-consumption flux ({/Symbol m}M/s)' rotate by 90
set label 'C' font 'Arial,9' at screen 0.0, screen 0.6


set label "*" at 0.000003,0.1,0.72 tc rgb "black" font ",20" front
splot 'NamPRTkmscan_10.txt' using 4:($6*3600):($8*1000)  with pm3d;
unset label

set size 0.3,0.3
set label "*" at 0.000003,0.1,3.5 tc rgb "black" font ",20" front
set origin 0.3, 0.35
set label 'D' font 'Arial,9' at screen 0.3, screen 0.6
set zlabel 'Concentration of free NAD  in {/Symbol m}M' rotate by 90
set zlabel 'NAD-consumption flux ({/Symbol m}M/s)' rotate by 90
set title "NamPRT + NNMT"

splot 'NamPRTkmscan_10.txt' using 4:($6*3600):($7*1000)  with pm3d;

unset label

unset pm3d
unset title
set key
unset logscale y
set yrange [-0.01:1.2]

set xrange [0.01:1]

set xlabel 'cell devision rate per h' 
set size 0.3,0.3
set origin 0.0, 0.0
set ylabel 'NAD-consumption flux ({/Symbol m}M/s)' 
set label  'E' font 'Arial,9' at screen 0.0, screen 0.3
set zlabel 'Concentration of free NAD  in {/Symbol m}M' rotate by 90
set title 'Nam import 0.5{/Symbol m}M/s'

plot 'NampRTNNMT_celldev_0_100.txt' using ($6*3600):($8*1000) title 'km=5nM-NNMT' w lines lt rgb "#00AA00" lw 3, 'NampRTNNMT_celldev_10_100.txt' using ($6*3600):($8*1000) title 'km=5nM+NNMT' w lines  lt  rgb "#3333FF" lw 3, 'NampRTNNMT_celldev_km0001_10_100.txt' using ($6*3600):($8*1000) title 'km=100nM+NNMT' w lines  lt  rgb "#3333AA" lw 3 dt 2, 'NampRTNNMT_celldev_km0001_0_100.txt' using ($6*3600):($8*1000) title 'km=100nM-NNMT' w lines  lt  rgb "#AAAAAA" lw 3 dt 2;


set title 'Nam import 0.5{/Symbol m}M/s'
set yrange [0:130]

set label  'F' font 'Arial,9' at screen 0.3, screen 0.3
set size 0.3,0.3
set origin 0.3, 0.0

set ylabel 'Concentration of free NAD  in {/Symbol m}M'

plot 'NampRTNNMT_celldev_0_100.txt' using ($6*3600):($7*1000) title 'km=5nM-NNMT' w lines lt rgb "#00AA00" lw 3, 'NampRTNNMT_celldev_10_100.txt' using ($6*3600):($7*1000) title 'km=5nM+NNMT' w lines  lt  rgb "#3333FF" lw 3, 'NampRTNNMT_celldev_km0001_10_100.txt' using ($6*3600):($7*1000) title 'km=100nM+NNMT' w lines  lt  rgb "#3333AA" lw 3 dt 2, 'NampRTNNMT_celldev_km0001_0_100.txt' using ($6*3600):($7*1000) title 'km=100nM-NNMT' w lines  lt  rgb "#AAAAAA" lw 3 dt 2;

