set terminal pngcairo

set xlabel 'power n'
set ylabel 'relative error'

set ytics 1e-6
set yrang [0 : 5e-6]
set format y '%.0t × 10^%T'
set key below

set output './plot/SR_1.34907566301_iter_c.png'
set title 'SR x = 1.34907566301 iter vs double in C'

plot './results/SR_1.34907566301_err_iter_1.dat' with linespoints pointtype 7 pointsize 0.4 title '1', \
     './results/SR_1.34907566301_err_iter_2.dat' with linespoints pointtype 7 pointsize 0.4 title '2', \
     './results/SR_1.34907566301_err_iter_3.dat' with linespoints pointtype 7 pointsize 0.4 title '3', \
     './results/SR_1.34907566301_err_iter_4.dat' with linespoints pointtype 7 pointsize 0.4 title '4', \
     './results/SR_1.34907566301_err_iter_5.dat' with linespoints pointtype 7 pointsize 0.4 title '5', \
     './results/SR_1.34907566301_err_iter_6.dat' with linespoints pointtype 7 pointsize 0.4 title '6', \
     './results/SR_1.34907566301_err_iter_7.dat' with linespoints pointtype 7 pointsize 0.4 title '7', \
     './results/SR_1.34907566301_err_iter_8.dat' with linespoints pointtype 7 pointsize 0.4 title '8', \
     './results/SR_1.34907566301_err_iter_9.dat' with linespoints pointtype 7 pointsize 0.4 title '9', \
     './results/SR_1.34907566301_err_iter_10.dat' with linespoints pointtype 7 pointsize 0.4 title '10', \
     './results/SR_1.34907566301_err_iter_11.dat' with linespoints pointtype 7 pointsize 0.4 title '11', \
     './results/SR_1.34907566301_err_iter_12.dat' with linespoints pointtype 7 pointsize 0.4 title '12', \
     './results/SR_1.34907566301_err_iter_13.dat' with linespoints pointtype 7 pointsize 0.4 title '13', \
     './results/SR_1.34907566301_err_iter_14.dat' with linespoints pointtype 7 pointsize 0.4 title '14', \
     './results/SR_1.34907566301_err_iter_15.dat' with linespoints pointtype 7 pointsize 0.4 title '15', \
     './results/SR_1.34907566301_err_iter_16.dat' with linespoints pointtype 7 pointsize 0.4 title '16', \
     './results/SR_1.34907566301_err_iter_17.dat' with linespoints pointtype 7 pointsize 0.4 title '17', \
     './results/SR_1.34907566301_err_iter_18.dat' with linespoints pointtype 7 pointsize 0.4 title '18', \
     './results/SR_1.34907566301_err_iter_19.dat' with linespoints pointtype 7 pointsize 0.4 title '19', \
     './results/SR_1.34907566301_err_iter_20.dat' with linespoints pointtype 7 pointsize 0.4 title '20'


set output './plot/SR_1.34907566301_rec_c.png'
set title 'SR x = 1.34907566301 rec vs double in C'

plot './results/SR_1.34907566301_err_rec_1.dat' with linespoints pointtype 7 pointsize 0.4 title '1', \
     './results/SR_1.34907566301_err_rec_2.dat' with linespoints pointtype 7 pointsize 0.4 title '2', \
     './results/SR_1.34907566301_err_rec_3.dat' with linespoints pointtype 7 pointsize 0.4 title '3', \
     './results/SR_1.34907566301_err_rec_4.dat' with linespoints pointtype 7 pointsize 0.4 title '4', \
     './results/SR_1.34907566301_err_rec_5.dat' with linespoints pointtype 7 pointsize 0.4 title '5', \
     './results/SR_1.34907566301_err_rec_6.dat' with linespoints pointtype 7 pointsize 0.4 title '6', \
     './results/SR_1.34907566301_err_rec_7.dat' with linespoints pointtype 7 pointsize 0.4 title '7', \
     './results/SR_1.34907566301_err_rec_8.dat' with linespoints pointtype 7 pointsize 0.4 title '8', \
     './results/SR_1.34907566301_err_rec_9.dat' with linespoints pointtype 7 pointsize 0.4 title '9', \
     './results/SR_1.34907566301_err_rec_10.dat' with linespoints pointtype 7 pointsize 0.4 title '10', \
     './results/SR_1.34907566301_err_rec_11.dat' with linespoints pointtype 7 pointsize 0.4 title '11', \
     './results/SR_1.34907566301_err_rec_12.dat' with linespoints pointtype 7 pointsize 0.4 title '12', \
     './results/SR_1.34907566301_err_rec_13.dat' with linespoints pointtype 7 pointsize 0.4 title '13', \
     './results/SR_1.34907566301_err_rec_14.dat' with linespoints pointtype 7 pointsize 0.4 title '14', \
     './results/SR_1.34907566301_err_rec_15.dat' with linespoints pointtype 7 pointsize 0.4 title '15', \
     './results/SR_1.34907566301_err_rec_16.dat' with linespoints pointtype 7 pointsize 0.4 title '16', \
     './results/SR_1.34907566301_err_rec_17.dat' with linespoints pointtype 7 pointsize 0.4 title '17', \
     './results/SR_1.34907566301_err_rec_18.dat' with linespoints pointtype 7 pointsize 0.4 title '18', \
     './results/SR_1.34907566301_err_rec_19.dat' with linespoints pointtype 7 pointsize 0.4 title '19', \
     './results/SR_1.34907566301_err_rec_20.dat' with linespoints pointtype 7 pointsize 0.4 title '20'


set output './plot/UR_1.34907566301_iter_c.png'
set title 'UR x = 1.34907566301 iter vs double in C'

plot './results/UR_1.34907566301_err_iter_1.dat' with linespoints pointtype 7 pointsize 0.4 title '1', \
     './results/UR_1.34907566301_err_iter_2.dat' with linespoints pointtype 7 pointsize 0.4 title '2', \
     './results/UR_1.34907566301_err_iter_3.dat' with linespoints pointtype 7 pointsize 0.4 title '3', \
     './results/UR_1.34907566301_err_iter_4.dat' with linespoints pointtype 7 pointsize 0.4 title '4', \
     './results/UR_1.34907566301_err_iter_5.dat' with linespoints pointtype 7 pointsize 0.4 title '5', \
     './results/UR_1.34907566301_err_iter_6.dat' with linespoints pointtype 7 pointsize 0.4 title '6', \
     './results/UR_1.34907566301_err_iter_7.dat' with linespoints pointtype 7 pointsize 0.4 title '7', \
     './results/UR_1.34907566301_err_iter_8.dat' with linespoints pointtype 7 pointsize 0.4 title '8', \
     './results/UR_1.34907566301_err_iter_9.dat' with linespoints pointtype 7 pointsize 0.4 title '9', \
     './results/UR_1.34907566301_err_iter_10.dat' with linespoints pointtype 7 pointsize 0.4 title '10', \
     './results/UR_1.34907566301_err_iter_11.dat' with linespoints pointtype 7 pointsize 0.4 title '11', \
     './results/UR_1.34907566301_err_iter_12.dat' with linespoints pointtype 7 pointsize 0.4 title '12', \
     './results/UR_1.34907566301_err_iter_13.dat' with linespoints pointtype 7 pointsize 0.4 title '13', \
     './results/UR_1.34907566301_err_iter_14.dat' with linespoints pointtype 7 pointsize 0.4 title '14', \
     './results/UR_1.34907566301_err_iter_15.dat' with linespoints pointtype 7 pointsize 0.4 title '15', \
     './results/UR_1.34907566301_err_iter_16.dat' with linespoints pointtype 7 pointsize 0.4 title '16', \
     './results/UR_1.34907566301_err_iter_17.dat' with linespoints pointtype 7 pointsize 0.4 title '17', \
     './results/UR_1.34907566301_err_iter_18.dat' with linespoints pointtype 7 pointsize 0.4 title '18', \
     './results/UR_1.34907566301_err_iter_19.dat' with linespoints pointtype 7 pointsize 0.4 title '19', \
     './results/UR_1.34907566301_err_iter_20.dat' with linespoints pointtype 7 pointsize 0.4 title '20'


set output './plot/UR_1.34907566301_rec_c.png'
set title 'UR x = 1.34907566301 rec vs double in C'

plot './results/UR_1.34907566301_err_rec_1.dat' with linespoints pointtype 7 pointsize 0.4 title '1', \
     './results/UR_1.34907566301_err_rec_2.dat' with linespoints pointtype 7 pointsize 0.4 title '2', \
     './results/UR_1.34907566301_err_rec_3.dat' with linespoints pointtype 7 pointsize 0.4 title '3', \
     './results/UR_1.34907566301_err_rec_4.dat' with linespoints pointtype 7 pointsize 0.4 title '4', \
     './results/UR_1.34907566301_err_rec_5.dat' with linespoints pointtype 7 pointsize 0.4 title '5', \
     './results/UR_1.34907566301_err_rec_6.dat' with linespoints pointtype 7 pointsize 0.4 title '6', \
     './results/UR_1.34907566301_err_rec_7.dat' with linespoints pointtype 7 pointsize 0.4 title '7', \
     './results/UR_1.34907566301_err_rec_8.dat' with linespoints pointtype 7 pointsize 0.4 title '8', \
     './results/UR_1.34907566301_err_rec_9.dat' with linespoints pointtype 7 pointsize 0.4 title '9', \
     './results/UR_1.34907566301_err_rec_10.dat' with linespoints pointtype 7 pointsize 0.4 title '10', \
     './results/UR_1.34907566301_err_rec_11.dat' with linespoints pointtype 7 pointsize 0.4 title '11', \
     './results/UR_1.34907566301_err_rec_12.dat' with linespoints pointtype 7 pointsize 0.4 title '12', \
     './results/UR_1.34907566301_err_rec_13.dat' with linespoints pointtype 7 pointsize 0.4 title '13', \
     './results/UR_1.34907566301_err_rec_14.dat' with linespoints pointtype 7 pointsize 0.4 title '14', \
     './results/UR_1.34907566301_err_rec_15.dat' with linespoints pointtype 7 pointsize 0.4 title '15', \
     './results/UR_1.34907566301_err_rec_16.dat' with linespoints pointtype 7 pointsize 0.4 title '16', \
     './results/UR_1.34907566301_err_rec_17.dat' with linespoints pointtype 7 pointsize 0.4 title '17', \
     './results/UR_1.34907566301_err_rec_18.dat' with linespoints pointtype 7 pointsize 0.4 title '18', \
     './results/UR_1.34907566301_err_rec_19.dat' with linespoints pointtype 7 pointsize 0.4 title '19', \
     './results/UR_1.34907566301_err_rec_20.dat' with linespoints pointtype 7 pointsize 0.4 title '20'
