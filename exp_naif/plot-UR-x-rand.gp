set logscale y 10
set size square
set grid

plot "results/errUR_x_rand.dat" with points pointtype 7 pointsize 0.4 linecolor rgb "red"
pause -1