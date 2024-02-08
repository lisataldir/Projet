set terminal png   
set output 'results_iteratif/plot_expnaif_x_3_995_it.png'  

set size square
set logscale y 10
set grid
set format y "10^{%L}"
set xlabel 'n'         
set ylabel 'log(error)' 

f(x) = a*x + b
fit f(x) "results_iteratif/errSR_x_3_995stat.dat" using 0:1 via a, b

plot "results_iteratif/errUR_x_3_995.dat" with points pointtype 7 pointsize 0.8 title "UR", \
     "results_iteratif/errSR_x_3_995stat.dat" using 0:1:2 with yerrorbars title "SR", \
     f(x) with lines linewidth 2 title "Droite de régression SR"