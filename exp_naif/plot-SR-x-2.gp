set size square
set logscale y 10

plot for [i=1:10] "results/errSR_x_2_".i.".dat" with points pointtype 7 pointsize 0.4 title sprintf("Test %d", i)
pause -1
