set size square
set grid
set format y "10^{%L}"
set xlabel 'n'         
set ylabel 'log(error)' 

plot "results/errUR_x_2.dat" with points pointtype 7 pointsize 0.4
pause -1