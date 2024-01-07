set terminal pngcairo

set xlabel 'power n'
set ylabel 'relative error'

set logscale y 10
set format y '%.0t × 10^%T'
set key below


set output './plot/SR_2.0_iter_c.png'
set title 'SR x = 2.0 iter vs double in C'

set yrang [1e-19 : 3e-14]

plot for [i=1:20] './results/SR_2.0_err_iter_'.i.'.dat' with points pointtype 7 pointsize 0.3 title i, \
     './results/SR_2.0_err_iter.dat' using 1:2:3 with linespoints pointsize 0.3 title 'Mean', \
     '' using 1:2:3 with yerrorbars pointsize 0.3 title 'Error Bars' lc rgb 'red'



set output './plot/SR_2.0_rec_c.png'
set title 'SR x = 2.0 rec vs double in C'

set yrang [1e-19 : 3e-14]

plot for [i=1:20] './results/SR_2.0_err_rec_'.i.'.dat' with points pointtype 7 pointsize 0.3 title i, \
     './results/SR_2.0_err_rec.dat' using 1:2:3 with linespoints pointsize 0.3 title 'Mean', \
     '' using 1:2:3 with yerrorbars pointsize 0.3 title 'Error Bars' lc rgb 'red'



set output './plot/UR_2.0_iter_c.png'
set title 'UR x = 2.0 iter vs double in C'

set yrang [1e-8 : 4e-6]

plot for [i=1:20] './results/UR_2.0_err_iter_'.i.'.dat' with points pointtype 7 pointsize 0.3 title i, \
     './results/UR_2.0_err_iter.dat' using 1:2:3 with linespoints pointsize 0.3 title 'Mean', \
     '' using 1:2:3 with yerrorbars pointsize 0.3 title 'Error Bars' lc rgb 'red'



set output './plot/UR_2.0_rec_c.png'
set title 'UR x = 2.0 rec vs double in C'

set yrang [1e-8 : 4e-6]

plot for [i=1:20] './results/UR_2.0_err_rec_'.i.'.dat' with points pointtype 7 pointsize 0.3 title i, \
     './results/UR_2.0_err_rec.dat' using 1:2:3 with linespoints pointsize 0.3 title 'Mean', \
     '' using 1:2:3 with yerrorbars pointsize 0.3 title 'Error Bars' lc rgb 'red'


