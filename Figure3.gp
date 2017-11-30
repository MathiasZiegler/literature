set terminal postscript eps color enhanced 'Arial' 6
set output 'Figure3.eps'
set multiplot
unset key
set grid x,y,z
set xlabel offset 0,-1 'cell division per hour ' rotate parallel
set xyplan 0
set log x
set log y
set format x "%g
set size 0.5,0.5
set origin 0.0,0.5
set xrange [1:0.01]
set ytics  offset 0,-1 
set ztics offset 2,0
set yrange [0.01:1]

set label 'A' font 'Arial, 9' at screen 0.0, screen 0.95
set zlabel 'NAD-consumption flux ({/Symbol m}M/s)' rotate by 90
set ylabel offset 0,-1 'Nam import rate ({/Symbol m}M/s)' rotate parallel
set zrange [0:3.5]
set title 'NAD consumption flux without NNMT'

splot 'simulations/NADA_10_0_0-NADA_0_0_10.txt' using ($6*3600):($9*1000):($8*1000) with pm3d;


set size 0.5,0.5
set origin 0.5,0.5
set zrange [0:700]
set label 'B' font 'Arial,9' at screen 0.5, screen 0.95
#set yrange [-0.001:0.08]
set title 'NAD concentration without NNMT'
set zlabel 'Concentration of free NAD  in {/Symbol m}M' rotate by 90
splot 'simulations/NADA_10_0_0-NADA_0_0_10.txt' using ($6*3600):($9*1000):($7*1000)  with pm3d;

set size 0.5,0.5
set origin 0, 0
set zrange [-0.1:2]


set zlabel 'NAD-consumption flux ({/Symbol m}M/s)' rotate by 90
set label 'C' font 'Arial, 9' at screen 0.0, screen 0.55
set title 'NAD consumption flux with NNMT'

splot 'simulations/NADA_10_10_0-NADA_0_10_10.txt' using ($6*3600):($9*1000):($8*1000)  with pm3d;



set zrange [-1:14]
set zlabel 'Concentration of free NAD  in {/Symbol m}M' rotate by 90
set size 0.5,0.5
set origin 0.5, 0
set label 'D' font 'Arial,9' at screen 0.5, screen 0.55
set title 'NAD concentration with NNMT'

splot 'simulations/NADA_10_10_0-NADA_0_10_10.txt' using ($6*3600):($9*1000):($7*1000)  with pm3d;
