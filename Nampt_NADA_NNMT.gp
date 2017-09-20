



set terminal postscript eps color enhanced 'Arial' 6
set output 'NAMPT_NADA_3D_NNMT.eps'
set multiplot
unset key
set grid x,y,z
set xlabel offset 0,-1 'cell devision per hour ' rotate parallel
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
set zrange [-4:3]
set label 'A' font 'Arial, 9' at screen 0.0, screen 0.95
set zlabel 'NAD-consumption flux ({/Symbol m}M/s)' rotate by 90
set ylabel offset 0,-1 'Nam import rate ({/Symbol m}M/s)' rotate parallel
set title 'Difference NADA with vs. without NNMT'


splot 'NADA_10_10_0-NADA_10_0_0.txt' using ($6*3600):($9*1000):($8*1000)  with pm3d;


set zrange [-1800:0]
set size 0.5,0.5
set origin 0.5,0.5
set zlabel 'Concentration of free NAD  in {/Symbol m}M' rotate by 90
set label 'B' font 'Arial,9' at screen 0.5, screen 0.95
#set yrange [-0.001:0.08]
set title 'Difference NADA with vs. without NNMT'
splot 'NADA_10_10_0-NADA_10_0_0.txt' using ($6*3600):($9*1000):($7*1000)  with pm3d;

set size 0.5,0.5
set origin 0, 0
set zlabel 'NAD-consumption flux ({/Symbol m}M/s)' rotate by 90
set zrange [-0.01:0.08]
set title 'Difference NamPRT with vs. without NNMT'

set label 'C' font 'Arial, 9' at screen 0.0, screen 0.55

splot 'NADA_0_10_10-NADA_0_0_10.txt' using ($6*3600):($9*1000):($8*1000)  with pm3d;








set zrange [-8:0]
set zlabel 'Concentration of free NAD  in {/Symbol m}M' rotate by 90
set size 0.5,0.5
set origin 0.5, 0
set label 'D' font 'Arial,9' at screen 0.5, screen 0.55

set title 'Difference NamPRT with vs. without NNMT'

splot 'NADA_0_10_10-NADA_0_0_10.txt' using ($6*3600):($9*1000):($7*1000)  with pm3d;
