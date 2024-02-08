set terminal pngcairo

set xlabel 'power n'
set ylabel 'relative error'

set logscale y 10
set format y '%.0t × 10^%T'
set key below


set output './relative_err_graph/SR_1.11_iter_py.png'
set title 'SR x = 1.11 iter vs py'

set yrang [1e-21 : 1e-4]

plot for [i=1:20] './error_py/SR_1.11_err_iter_'.i.'.dat' with points pointtype 7 pointsize 0.3 title i, \
      './error_py/SR_1.11_err_iter.dat' using 1:2:3 with lines title 'Mean' lc rgb 'pink', \
     '' using 1:2:3 with yerrorbars title 'Error Bars' lc rgb 'magenta'



set output './relative_err_graph/SR_1.11_rec_py.png'
set title 'SR x = 1.11 rec vs py'

set yrang [1e-21 : 1e-4]

plot for [i=1:20] './error_py/SR_1.11_err_rec_'.i.'.dat' with points pointtype 7 pointsize 0.3 title i, \
      './error_py/SR_1.11_err_rec.dat' using 1:2:3 with lines title 'Mean' lc rgb 'pink', \
     '' using 1:2:3 with yerrorbars title 'Error Bars' lc rgb 'magenta'



set output './relative_err_graph/UR_1.11_iter_py.png'
set title 'UR x = 1.11 iter vs py'

set yrang [1e-21 : 1e-4]

plot for [i=1:20] './error_py/UR_1.11_err_iter_'.i.'.dat' with points pointtype 7 pointsize 0.3 title i, \
      './error_py/UR_1.11_err_iter.dat' using 1:2:3 with lines title 'Mean' lc rgb 'pink', \
     '' using 1:2:3 with yerrorbars title 'Error Bars' lc rgb 'magenta'



set output './relative_err_graph/UR_1.11_rec_py.png'
set title 'UR x = 1.11 rec vs py'

set yrang [1e-21 : 1e-4]

plot for [i=1:20] './error_py/UR_1.11_err_rec_'.i.'.dat' with points pointtype 7 pointsize 0.3 title i, \
      './error_py/UR_1.11_err_rec.dat' using 1:2:3 with lines title 'Mean' lc rgb 'pink', \
     '' using 1:2:3 with yerrorbars title 'Error Bars' lc rgb 'magenta'
