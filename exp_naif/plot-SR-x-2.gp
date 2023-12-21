set size square
set logscale y 10
set grid

plot "results/errSR_x_2stat.dat" using 0:1:2 with yerrorbars linecolor rgb "red"
pause -1