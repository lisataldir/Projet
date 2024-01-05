set terminal png   
set output 'results_recursif/plot_expnaif_x_rand_rec.png'  

set size square
set logscale y 10
set grid
set format y "10^{%L}"
set xlabel 'n'         
set ylabel 'log(error)' 

f(x) = a*x + b
fit f(x) "results_recursif/errSR_x_randstat.dat" using 0:1 via a, b

plot "results_recursif/errUR_x_rand.dat" with points pointtype 7 pointsize 0.8 title "UR", \
     "results_recursif/errSR_x_randstat.dat" using 0:1:2 with yerrorbars title "SR", \
     f(x) with lines linewidth 2 title "Droite de régression SR"