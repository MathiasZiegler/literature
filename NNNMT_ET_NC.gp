set terminal postscript eps color enhanced 'Arial' 12
set output 'NNMTETNC.eps'
set multiplot

set xlabel 'cell devision rate per hour'

set log x
#set format x "%g"


set size 0.5,0.5
set origin 0.0,0.5

set xrange [0.000001*3600:0.0001*3600]



set yrange [0:0.25]
set title 'NAD consumption'
set ylabel 'NAD consumption flux ({/Symbol m}M/s)'
set label 'A' font 'Arial, 16' at screen 0.0, screen 0.98

plot 'NNMT_ET_NC_0_10.txt' using ($6*3600):($8*1000) title 'NamPRT 10NC' w lines lt rgb "#00AA00" lw 3 dt 3, 'NNMT_ET_NC_10_10.txt' using ($6*3600):($8*1000) title 'NamPRT + NNMT(low) 10 NC' w lines  lt  rgb "#330000" lw 3 dt 3,  'NNMT_ET_NC_20_10.txt' using ($6*3600):($8*1000) title 'NamPRT+NNMT 10NC' w lines lt rgb "#3333FF" lw 3 dt 3, 'NNMT_ET_NC_0_50.txt' using ($6*3600):($8*1000) title 'NamPRT(high)' w lines  lt  rgb "#00AA00" lw 3 dt 1,  'NNMT_ET_NC_10_50.txt' using ($6*3600):($8*1000) title 'NamPRT(high)+NNMT(low)' w lines  lt  rgb "#330000" lw 3 dt 1,  'NNMT_ET_NC_20_50.txt' using ($6*3600):($8*1000) title 'NamPRT(high+ NNMT)' w lines  lt  rgb "#3333FF" lw 3 dt 1;


set size 0.5,0.5
set origin 0.5,0.5
set title 'NAD concentration'

set label 'B' font 'Arial,16' at screen 0.5, screen 0.98
set ylabel offset 2,0 ' concentration of free NAD ({/Symbol m}M)'
set yrange [0:20]
plot 'NNMT_ET_NC_0_10.txt' using ($6*3600):($7*1000) title 'NamPRT' w lines lt rgb "#00AA00" lw 3 dt 3, 'NNMT_ET_NC_10_10.txt' using ($6*3600):($7*1000) title 'NamPRT + NNMT(low) ' w lines  lt  rgb "#330000" lw 3 dt 3,  'NNMT_ET_NC_20_10.txt' using ($6*3600):($7*1000) title 'NamPRT+NNMT' w lines lt rgb "#3333FF" lw 3 dt 3, 'NNMT_ET_NC_0_50.txt' using ($6*3600):($7*1000) title 'NamPRT(high)' w lines  lt  rgb "#00AA00" lw 3 dt 1,  'NNMT_ET_NC_10_50.txt' using ($6*3600):($7*1000) title 'NamPRT(high)+NNMT(low)' w lines  lt  rgb "#330000" lw 3 dt 1,  'NNMT_ET_NC_20_50.txt' using ($6*3600):($7*1000) title 'NamPRT(high)+ NNMT' w lines  lt  rgb "#3333FF" lw 3 dt 1;
