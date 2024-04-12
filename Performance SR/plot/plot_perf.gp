set terminal png size 600, 400
set output 'plot_perf_sum.png'

set size square
set grid
set key top left
set xlabel 'Itération (n)'
set ylabel "Temps d'exécution"

RN_ni = "../timing_UR/timing_UR/results_sum.dat"
SR_ni = "../timing_SR/timing_SR/results_sum.dat"

plot RN_ni w lp title "RN", \
     SR_ni w lp title "SR"

set terminal png size 600, 400
set output 'plot_perf_naif.png'

set size square
set grid
set key top left
set xlabel 'Itération (n)'
set ylabel "Temps d'exécution"

RN_ni = "../timing_UR/timing_UR/results_naif.dat"
SR_ni = "../timing_SR/timing_SR/results_naif.dat"

plot RN_ni w lp title "RN", \
     SR_ni w lp title "SR"

set terminal png size 600, 400
set output 'plot_perf_rapid.png'

set size square
set grid
set key top left
set xlabel 'Itération (n)'
set ylabel "Temps d'exécution"

RN_ni = "../timing_UR/timing_UR/results_rapid.dat"
SR_ni = "../timing_SR/timing_SR/results_rapid.dat"

plot RN_ni w lp title "RN", \
     SR_ni w lp title "SR"