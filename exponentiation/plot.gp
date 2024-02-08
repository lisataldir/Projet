set terminal pngcairo
set output 'plot/UR_naive_iter.png'  
set title 'UR NI x = 1.34907566301'

set xlabel 'n'
set ylabel 'relative errors'
set key top left

set style fill solid 0.1

plot 'results/naif_iter/UR.dat' using 1:2 title 'naive iterative'


set terminal pngcairo
set output 'plot/UR_naive_rec.png'  
set title 'UR NR x = 1.34907566301'

set xlabel 'n'
set ylabel 'relative errors'
set key top left

set style fill solid 0.1

plot 'results/naif_rec/UR.dat' using 1:2 title 'naive recursive'



set terminal pngcairo
set output 'plot/UR_rapid_iter.png'  
set title 'UR RI x = 1.34907566301'

set xlabel 'n'
set ylabel 'relative errors'
set key top left

set style data yerrorbars
set style fill solid 0.1

plot 'UR_1.34907566301_err.dat' using 1:6:7 with yerrorbars title 'rapid iterative'


set terminal pngcairo
set output 'plot/UR_rapid_rec.png'  
set title 'UR RR x = 1.34907566301'

set xlabel 'n'
set ylabel 'relative errors'
set key top left

set style data yerrorbars
set style fill solid 0.1

plot 'UR_1.34907566301_err.dat' using 1:8:9 with yerrorbars title 'rapid recursive'



set terminal pngcairo
set output 'plot/SR_naive_iter.png'  
set title 'SR NI x = 1.34907566301'

set xlabel 'n'
set ylabel 'relative errors'
set key top left

set style data yerrorbars
set style fill solid 0.1

plot 'SR_1.34907566301_err.dat' using 1:2:3 with yerrorbars title 'naive iterative'


set terminal pngcairo
set output 'plot/SR_naive_rec.png'  
set title 'SR NR x = 1.34907566301'

set xlabel 'n'
set ylabel 'relative errors'
set key top left

set style data yerrorbars
set style fill solid 0.1

plot 'SR_1.34907566301_err.dat' using 1:4:5 with yerrorbars title 'naive recursive'


set terminal pngcairo
set output 'plot/SR_rapid_iter.png'  
set title 'SR RI x = 1.34907566301'

set xlabel 'n'
set ylabel 'relative errors'
set key top left

set style data yerrorbars
set style fill solid 0.1

plot 'SR_1.34907566301_err.dat' using 1:6:7 with yerrorbars title 'rapid iterative'


set terminal pngcairo
set output 'plot/SR_rapid_rec.png'  
set title 'SR RR x = 1.34907566301'

set xlabel 'n'
set ylabel 'relative errors'
set key top left

set style data yerrorbars
set style fill solid 0.1

plot 'SR_1.34907566301_err.dat' using 1:8:9 with yerrorbars title 'rapid recursive'




set terminal pngcairo
set output 'plot/UR_ni_log.png'  
set title 'UR NI log x = 1.34907566301'

set xlabel 'n'
set ylabel 'log relative errors'
set logscale y 10 
set yrang [1e-8 : 1e-3]
set key below left

set style data yerrorbars
set style fill solid 0.1

plot 'UR_1.34907566301_err.dat' using 1:2:3 with yerrorbars title 'naive iterative'


set terminal pngcairo
set output 'plot/UR_nr_log.png'  
set title 'UR NR log x = 1.34907566301'

set xlabel 'n'
set ylabel 'log relative errors'
set logscale y 10 
set yrang [1e-8 : 1e-3]
set key below left

set style data yerrorbars
set style fill solid 0.1

plot 'UR_1.34907566301_err.dat' using 1:4:5 with yerrorbars title 'naive recursive'


set terminal pngcairo
set output 'plot/UR_ri_log.png'  
set title 'UR RI log x = 1.34907566301'

set xlabel 'n'
set ylabel 'log relative errors'
set logscale y 10 
set yrang [1e-8 : 1e-3]
set key below left

set style data yerrorbars
set style fill solid 0.1

plot 'UR_1.34907566301_err.dat' using 1:6:7 with yerrorbars title 'rapid iterative'


set terminal pngcairo
set output 'plot/UR_rr_log.png'  
set title 'UR RR log x = 1.34907566301'

set xlabel 'n'
set ylabel 'log relative errors'
set logscale y 10 
set yrang [1e-8 : 1e-3]
set key below left

set style data yerrorbars
set style fill solid 0.1

plot 'UR_1.34907566301_err.dat' using 1:8:9 with yerrorbars title 'rapid recursive'


set terminal pngcairo
set output 'plot/SR_ni_log.png'  
set title 'SR NI log x = 1.34907566301'

set xlabel 'n'
set ylabel 'log relative errors'
set logscale y 10
set yrang [1e-8 : 1e-3]
set key below left

set style data yerrorbars
set style fill solid 0.1

plot 'SR_1.34907566301_err.dat' using 1:2:3 with yerrorbars title 'naive iterative'


set terminal pngcairo
set output 'plot/SR_nr_log.png'  
set title 'SR NR log x = 1.34907566301'

set xlabel 'n'
set ylabel 'log relative errors'
set logscale y 10
set yrang [1e-8 : 1e-3]
set key below left

set style data yerrorbars
set style fill solid 0.1

plot 'SR_1.34907566301_err.dat' using 1:4:5 with yerrorbars title 'naive recursive'


set terminal pngcairo
set output 'plot/SR_ri_log.png'  
set title 'SR RI log x = 1.34907566301'

set xlabel 'n'
set ylabel 'log relative errors'
set logscale y 10
set yrang [1e-8 : 1e-3]
set key below left

set style data yerrorbars
set style fill solid 0.1

plot 'SR_1.34907566301_err.dat' using 1:6:7 with yerrorbars title 'rapid iterative'


set terminal pngcairo
set output 'plot/SR_rr_log.png'  
set title 'SR RR log x = 1.34907566301'

set xlabel 'n'
set ylabel 'log relative errors'
set logscale y 10
set yrang [1e-8 : 1e-3]
set key below left

set style data yerrorbars
set style fill solid 0.1

plot 'SR_1.34907566301_err.dat' using 1:8:9 with yerrorbars title 'rapid recursive'