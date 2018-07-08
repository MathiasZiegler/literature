set terminal postscript eps size 10cm,4cm enhanced color font 'Arial,12'
set output 'Figure5.eps'
set multiplot
set format x "%g"
set format y "%g"
set view 60,15
set parametric

set xlabel offset 0,-1.5  'K_{M} NamPRT ({/Symbol m}M)' #rotate parallel
set ylabel offset 1,-1.5 'K_{M} NNMT ({/Symbol m}M)' rotate parallel

set xtics offset 0,-0.3
set ytics offset 0,0
set ztics offset 1,0

set pm3d
set yrange[1:1000]
set xrange[0.0001:1]
set logscale xy
set xyplan 0
unset key
set grid x, y, z
set size 0.5, 1


set label "{/Symbol \052}" at 0.003,400,0.65 tc rgb "black" font "Arial,18" front
set origin 0.0, 0.0
set title "NAD consumption ({/Symbol m}M/s)"
set label 'A' font 'Arial, 16' at screen 0.01, screen 0.95

splot 'simulations/kmscanNNMTNamPRT.txt' using ($4*1000):($5*1000):($8*1000)  with pm3d;

unset label

set label "{/Symbol \052}" at 0.003,400,3.2 tc rgb "black" font "Arial,18" front
set origin 0.5, 0.0
set label 'B' font 'Arial,16' at screen 0.51, screen 0.95
set title "NAD concentration ({/Symbol m}M)"

splot 'simulations/kmscanNNMTNamPRT.txt' using ($4*1000):($5*1000):($7*1000)  with pm3d

