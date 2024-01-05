set size square
set logscale y 10
set grid
set format y "10^{%L}"
set xlabel 'n'         
set ylabel 'log(error)' 

f(x) = a*x + b
fit f(x) "results/errSR_x_3_995stat.dat" using 0:1 via a, b

plot "results/errSR_x_3_995stat.dat" using 0:1:2 with yerrorbars, \
     f(x) with lines, results/errUR_x_3_995.dat" with points pointtype 7 pointsize 0.4

pause -1