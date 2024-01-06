set terminal pngcairo

set xlabel 'power n'
set ylabel 'relative error'

set ytics 1e-6
set yrang [0 : 5e-6]
set format y '%.0t × 10^%T'
set key below

set output './plot/SR_2.0_iter_py.png'
set title 'SR x = 2.0 iter vs py'

plot './error_py/SR_2.0_err_iter_1.dat' with linespoints pointtype 7 pointsize 0.1 title '1', \
     './error_py/SR_2.0_err_iter_2.dat' with linespoints pointtype 7 pointsize 0.1 title '2', \
     './error_py/SR_2.0_err_iter_3.dat' with linespoints pointtype 7 pointsize 0.1 title '3', \
     './error_py/SR_2.0_err_iter_4.dat' with linespoints pointtype 7 pointsize 0.1 title '4', \
     './error_py/SR_2.0_err_iter_5.dat' with linespoints pointtype 7 pointsize 0.1 title '5', \
     './error_py/SR_2.0_err_iter_6.dat' with linespoints pointtype 7 pointsize 0.1 title '6', \
     './error_py/SR_2.0_err_iter_7.dat' with linespoints pointtype 7 pointsize 0.1 title '7', \
     './error_py/SR_2.0_err_iter_8.dat' with linespoints pointtype 7 pointsize 0.1 title '8', \
     './error_py/SR_2.0_err_iter_9.dat' with linespoints pointtype 7 pointsize 0.1 title '9', \
     './error_py/SR_2.0_err_iter_10.dat' with linespoints pointtype 7 pointsize 0.1 title '10', \
     './error_py/SR_2.0_err_iter_11.dat' with linespoints pointtype 7 pointsize 0.1 title '11', \
     './error_py/SR_2.0_err_iter_12.dat' with linespoints pointtype 7 pointsize 0.1 title '12', \
     './error_py/SR_2.0_err_iter_13.dat' with linespoints pointtype 7 pointsize 0.1 title '13', \
     './error_py/SR_2.0_err_iter_14.dat' with linespoints pointtype 7 pointsize 0.1 title '14', \
     './error_py/SR_2.0_err_iter_15.dat' with linespoints pointtype 7 pointsize 0.1 title '15', \
     './error_py/SR_2.0_err_iter_16.dat' with linespoints pointtype 7 pointsize 0.1 title '16', \
     './error_py/SR_2.0_err_iter_17.dat' with linespoints pointtype 7 pointsize 0.1 title '17', \
     './error_py/SR_2.0_err_iter_18.dat' with linespoints pointtype 7 pointsize 0.1 title '18', \
     './error_py/SR_2.0_err_iter_19.dat' with linespoints pointtype 7 pointsize 0.1 title '19', \
     './error_py/SR_2.0_err_iter_20.dat' with linespoints pointtype 7 pointsize 0.1 title '20'


set output './plot/SR_2.0_rec_py.png'
set title 'SR x = 2.0 rec vs py'

plot './error_py/SR_2.0_err_rec_1.dat' with linespoints pointtype 7 pointsize 0.1 title '1', \
     './error_py/SR_2.0_err_rec_2.dat' with linespoints pointtype 7 pointsize 0.1 title '2', \
     './error_py/SR_2.0_err_rec_3.dat' with linespoints pointtype 7 pointsize 0.1 title '3', \
     './error_py/SR_2.0_err_rec_4.dat' with linespoints pointtype 7 pointsize 0.1 title '4', \
     './error_py/SR_2.0_err_rec_5.dat' with linespoints pointtype 7 pointsize 0.1 title '5', \
     './error_py/SR_2.0_err_rec_6.dat' with linespoints pointtype 7 pointsize 0.1 title '6', \
     './error_py/SR_2.0_err_rec_7.dat' with linespoints pointtype 7 pointsize 0.1 title '7', \
     './error_py/SR_2.0_err_rec_8.dat' with linespoints pointtype 7 pointsize 0.1 title '8', \
     './error_py/SR_2.0_err_rec_9.dat' with linespoints pointtype 7 pointsize 0.1 title '9', \
     './error_py/SR_2.0_err_rec_10.dat' with linespoints pointtype 7 pointsize 0.1 title '10', \
     './error_py/SR_2.0_err_rec_11.dat' with linespoints pointtype 7 pointsize 0.1 title '11', \
     './error_py/SR_2.0_err_rec_12.dat' with linespoints pointtype 7 pointsize 0.1 title '12', \
     './error_py/SR_2.0_err_rec_13.dat' with linespoints pointtype 7 pointsize 0.1 title '13', \
     './error_py/SR_2.0_err_rec_14.dat' with linespoints pointtype 7 pointsize 0.1 title '14', \
     './error_py/SR_2.0_err_rec_15.dat' with linespoints pointtype 7 pointsize 0.1 title '15', \
     './error_py/SR_2.0_err_rec_16.dat' with linespoints pointtype 7 pointsize 0.1 title '16', \
     './error_py/SR_2.0_err_rec_17.dat' with linespoints pointtype 7 pointsize 0.1 title '17', \
     './error_py/SR_2.0_err_rec_18.dat' with linespoints pointtype 7 pointsize 0.1 title '18', \
     './error_py/SR_2.0_err_rec_19.dat' with linespoints pointtype 7 pointsize 0.1 title '19', \
     './error_py/SR_2.0_err_rec_20.dat' with linespoints pointtype 7 pointsize 0.1 title '20'


set output './plot/UR_2.0_iter_py.png'
set title 'UR x = 2.0 iter vs py'

plot './error_py/UR_2.0_err_iter_1.dat' with linespoints pointtype 7 pointsize 0.1 title '1', \
     './error_py/UR_2.0_err_iter_2.dat' with linespoints pointtype 7 pointsize 0.1 title '2', \
     './error_py/UR_2.0_err_iter_3.dat' with linespoints pointtype 7 pointsize 0.1 title '3', \
     './error_py/UR_2.0_err_iter_4.dat' with linespoints pointtype 7 pointsize 0.1 title '4', \
     './error_py/UR_2.0_err_iter_5.dat' with linespoints pointtype 7 pointsize 0.1 title '5', \
     './error_py/UR_2.0_err_iter_6.dat' with linespoints pointtype 7 pointsize 0.1 title '6', \
     './error_py/UR_2.0_err_iter_7.dat' with linespoints pointtype 7 pointsize 0.1 title '7', \
     './error_py/UR_2.0_err_iter_8.dat' with linespoints pointtype 7 pointsize 0.1 title '8', \
     './error_py/UR_2.0_err_iter_9.dat' with linespoints pointtype 7 pointsize 0.1 title '9', \
     './error_py/UR_2.0_err_iter_10.dat' with linespoints pointtype 7 pointsize 0.1 title '10', \
     './error_py/UR_2.0_err_iter_11.dat' with linespoints pointtype 7 pointsize 0.1 title '11', \
     './error_py/UR_2.0_err_iter_12.dat' with linespoints pointtype 7 pointsize 0.1 title '12', \
     './error_py/UR_2.0_err_iter_13.dat' with linespoints pointtype 7 pointsize 0.1 title '13', \
     './error_py/UR_2.0_err_iter_14.dat' with linespoints pointtype 7 pointsize 0.1 title '14', \
     './error_py/UR_2.0_err_iter_15.dat' with linespoints pointtype 7 pointsize 0.1 title '15', \
     './error_py/UR_2.0_err_iter_16.dat' with linespoints pointtype 7 pointsize 0.1 title '16', \
     './error_py/UR_2.0_err_iter_17.dat' with linespoints pointtype 7 pointsize 0.1 title '17', \
     './error_py/UR_2.0_err_iter_18.dat' with linespoints pointtype 7 pointsize 0.1 title '18', \
     './error_py/UR_2.0_err_iter_19.dat' with linespoints pointtype 7 pointsize 0.1 title '19', \
     './error_py/UR_2.0_err_iter_20.dat' with linespoints pointtype 7 pointsize 0.1 title '20'


set output './plot/UR_2.0_rec_py.png'
set title 'UR x = 2.0 rec vs py'

plot './error_py/UR_2.0_err_rec_1.dat' with linespoints pointtype 7 pointsize 0.1 title '1', \
     './error_py/UR_2.0_err_rec_2.dat' with linespoints pointtype 7 pointsize 0.1 title '2', \
     './error_py/UR_2.0_err_rec_3.dat' with linespoints pointtype 7 pointsize 0.1 title '3', \
     './error_py/UR_2.0_err_rec_4.dat' with linespoints pointtype 7 pointsize 0.1 title '4', \
     './error_py/UR_2.0_err_rec_5.dat' with linespoints pointtype 7 pointsize 0.1 title '5', \
     './error_py/UR_2.0_err_rec_6.dat' with linespoints pointtype 7 pointsize 0.1 title '6', \
     './error_py/UR_2.0_err_rec_7.dat' with linespoints pointtype 7 pointsize 0.1 title '7', \
     './error_py/UR_2.0_err_rec_8.dat' with linespoints pointtype 7 pointsize 0.1 title '8', \
     './error_py/UR_2.0_err_rec_9.dat' with linespoints pointtype 7 pointsize 0.1 title '9', \
     './error_py/UR_2.0_err_rec_10.dat' with linespoints pointtype 7 pointsize 0.1 title '10', \
     './error_py/UR_2.0_err_rec_11.dat' with linespoints pointtype 7 pointsize 0.1 title '11', \
     './error_py/UR_2.0_err_rec_12.dat' with linespoints pointtype 7 pointsize 0.1 title '12', \
     './error_py/UR_2.0_err_rec_13.dat' with linespoints pointtype 7 pointsize 0.1 title '13', \
     './error_py/UR_2.0_err_rec_14.dat' with linespoints pointtype 7 pointsize 0.1 title '14', \
     './error_py/UR_2.0_err_rec_15.dat' with linespoints pointtype 7 pointsize 0.1 title '15', \
     './error_py/UR_2.0_err_rec_16.dat' with linespoints pointtype 7 pointsize 0.1 title '16', \
     './error_py/UR_2.0_err_rec_17.dat' with linespoints pointtype 7 pointsize 0.1 title '17', \
     './error_py/UR_2.0_err_rec_18.dat' with linespoints pointtype 7 pointsize 0.1 title '18', \
     './error_py/UR_2.0_err_rec_19.dat' with linespoints pointtype 7 pointsize 0.1 title '19', \
     './error_py/UR_2.0_err_rec_20.dat' with linespoints pointtype 7 pointsize 0.1 title '20'

