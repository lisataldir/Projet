set terminal pngcairo

set xlabel 'power n'
set ylabel 'relative error'

set logscale y 10
set format y '%.0t × 10^%T'
set key below


set output './plot/SR_1.11_iter_py.png'
set title 'SR x = 1.11 iter vs py'

set yrang [1e-17 : 3e-7]

plot for [i=1:20] './error_py/SR_1.11_err_iter_'.i.'.dat' with points pointtype 7 pointsize 0.3 title i, \
      './error_py/SR_1.11_err_iter.dat' using 1:2:3 with linespoints pointsize 0.3 title 'Mean', \
     '' using 1:2:3 with yerrorbars pointsize 0.3 title 'Error Bars' lc rgb 'red'



set output './plot/SR_1.11_rec_py.png'
set title 'SR x = 1.11 rec vs py'

set yrang [1e-17 : 3e-7]

plot for [i=1:20] './error_py/SR_1.11_err_rec_'.i.'.dat' with points pointtype 7 pointsize 0.3 title i, \
      './error_py/SR_1.11_err_rec.dat' using 1:2:3 with linespoints pointsize 0.3 title 'Mean', \
     '' using 1:2:3 with yerrorbars pointsize 0.3 title 'Error Bars' lc rgb 'red'



set output './plot/UR_1.11_iter_py.png'
set title 'UR x = 1.11 iter vs py'

set yrang [1e-9 : 3e-6]

plot for [i=1:20] './error_py/UR_1.11_err_iter_'.i.'.dat' with points pointtype 7 pointsize 0.3 title i, \
      './error_py/UR_1.11_err_iter.dat' using 1:2:3 with linespoints pointsize 0.3 title 'Mean', \
     '' using 1:2:3 with yerrorbars pointsize 0.3 title 'Error Bars' lc rgb 'red'



set output './plot/UR_1.11_rec_py.png'
set title 'UR x = 1.11 rec vs py'

set yrang [1e-9 : 3e-6]

plot for [i=1:20] './error_py/UR_1.11_err_rec_'.i.'.dat' with points pointtype 7 pointsize 0.3 title i, \
      './error_py/UR_1.11_err_rec.dat' using 1:2:3 with linespoints pointsize 0.3 title 'Mean', \
     '' using 1:2:3 with yerrorbars pointsize 0.3 title 'Error Bars' lc rgb 'red'
