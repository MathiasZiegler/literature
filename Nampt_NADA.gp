set terminal postscript eps color enhanced 'Arial' 6
set output 'NAMPT_NADA_3D.eps'
set multiplot
unset key
set grid x,y,z
set xlabel offset 0,-1 'cell devision per hour ' rotate parallel
set xyplan 0
set log x
set log y
set format x "%g
set size 0.3,0.3
set origin 0.0,0.65
set xrange [1:0.01]

set yrange [0.01:1]
set zrange [-0.1:2.5]
set label 'A' font 'Arial, 9' at screen 0.0, screen 0.9
set zlabel 'NAD-consumption flux ({/Symbol m}M/s)' rotate by 90
set ylabel offset 0,-1 'Nam import rate ({/Symbol m}M/s)' rotate parallel

set title 'NAD consumption flux with NNMT'

splot 'NADA_10_10_0-NADA_0_10_10.txt' using ($6*3600):($9*1000):($8*1000) with pm3d;

set zrange [0:4]
set size 0.3,0.3
set origin 0.3,0.65

set label 'B' font 'Arial,9' at screen 0.3, screen 0.9
#set yrange [-0.001:0.08]
set title 'NAD consumption flux without NNMT'
splot 'NADA_10_0_0-NADA_0_0_10.txt' using ($6*3600):($9*1000):($8*1000)  with pm3d;


set size 0.3,0.3
set origin 0, 0.35

set zrange [-2:18]
set title 'NAD concentration with NNMT'
set zlabel 'Concentration of free NAD  in {/Symbol m}M' rotate by 90
set label 'C' font 'Arial, 9' at screen 0.0, screen 0.6

splot 'NADA_10_10_0-NADA_0_10_10.txt' using ($6*3600):($9*1000):($7*1000)  with pm3d;








set zrange [0:1800]

set size 0.3,0.3
set origin 0.3, 0.35
set label 'D' font 'Arial,9' at screen 0.3, screen 0.6
set title 'NAD concentration without NNMT'

splot 'NADA_10_0_0-NADA_0_0_10.txt' using ($6*3600):($9*1000):($7*1000)  with pm3d;

set zrange [-2:4]
set zlabel 'NAD-consumption flux ({/Symbol m}M/s)' rotate by 90
set size 0.3,0.3
set origin 0.0, 0.0
set label  'E' font 'Arial,9' at screen 0.0, screen 0.3
set title 'NAD consumption flux difference without vs with NNMT NADA only'
splot 'NADA_10_0_0-NADA_10_10_0.txt' using ($6*3600):($9*1000):($8*1000)  with pm3d;

set zrange [0:1800]
set zlabel 'Concentration of free NAD  in {/Symbol m}M' rotate by 90
set label  'F' font 'Arial,9' at screen 0.3, screen 0.3
set size 0.3,0.3
set origin 0.3, 0.0
set title 'NAD concentration difference without vs. with NNMT NADA only'
splot 'NADA_10_0_0-NADA_10_10_0.txt' using ($6*3600):($9*1000):($7*1000)  with pm3d;
