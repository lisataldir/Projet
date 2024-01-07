set terminal pngcairo

set xlabel 'power n'
set ylabel 'relative error'

set logscale y 10
set format y '%.0t × 10^%T'
set key below

set output './plot/SR_0.995_iter_c.png'
set title 'SR x = 0.995 iter vs double in C'

set yrang [1e-19 : 3e-16]


plot for [i=1:20] './results/SR_0.995_err_iter_'.i.'.dat' with points pointtype 7 pointsize 0.3 title i, \
    './results/SR_0.995_err_iter.dat' using 1:2:3 with linespoints pointsize 0.3 title 'Mean', \
     '' using 1:2:3 with yerrorbars pointsize 0.3 title 'Error Bars' lc rgb 'red'



set output './plot/SR_0.995_rec_c.png'
set title 'SR x = 0.995 rec vs double in C'

set yrang [1e-19 : 3e-16]


plot for [i=1:20] './results/SR_0.995_err_rec_'.i.'.dat' with points pointtype 7 pointsize 0.3 title i, \
     './results/SR_0.995_err_rec.dat' using 1:2:3 with linespoints pointsize 0.3 title 'Mean', \
     '' using 1:2:3 with yerrorbars pointsize 0.3 title 'Error Bars' lc rgb 'red'



set output './plot/UR_0.995_iter_c.png'
set title 'UR x = 0.995 iter vs double in C'

set yrang [1e-6 : 3e-6]


plot for [i=1:20] './results/UR_0.995_err_iter_'.i.'.dat' with points pointtype 7 pointsize 0.3 title i, \
     './results/UR_0.995_err_iter.dat' using 1:2:3 with linespoints pointsize 0.3 title 'Mean', \
     '' using 1:2:3 with yerrorbars pointsize 0.3 title 'Error Bars' lc rgb 'red'


set output './plot/UR_0.995_rec_c.png'
set title 'UR x = 0.995 rec vs double in C'

set yrang [1e-6 : 3e-6]

plot for [i=1:20] './results/UR_0.995_err_rec_'.i.'.dat' with points pointtype 7 pointsize 0.3 title i, \
     './results/UR_0.995_err_rec.dat' using 1:2:3 with linespoints pointsize 0.3 title 'Mean', \
     '' using 1:2:3 with yerrorbars pointsize 0.3 title 'Error Bars' lc rgb 'red'
