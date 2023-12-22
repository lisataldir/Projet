set size square
set logscale y 10
set grid
set format y "10^{%L}"
set xlabel 'n'         
set ylabel 'log(error)' 

plot "results/errUR_x_3_995.dat" with points pointtype 7 pointsize 0.4
pause -1