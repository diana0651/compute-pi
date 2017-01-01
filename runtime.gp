reset
set ylabel 'Time(sec)'
set xlabel 'N'
set style fill solid
set title 'wall clock time - using clock\_gettime()'
set term png enhanced font 'Verdana,10'
set output 'runtime.png'
set logscale x 2
set datafile separator ","

plot [64:35000][0:] 'result_clock_gettime.csv' using 1:2 w l lw 1 title 'baseline', \
'' using 1:3 w l lw 1 title 'omp_2', \
'' using 1:4 w l lw 1 title 'omp_4', \
'' using 1:5 w l lw 1 title 'avx', \
'' using 1:6 w l lw 1 title 'avxunroll', \
'' using 1:7 w l lw 1 title 'leibniz'