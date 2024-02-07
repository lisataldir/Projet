set terminal pngcairo
set output 'UR_naive_iter.png'  
set title 'UR NI x = 0.1'

set xlabel 'n'
set ylabel 'relative errors'
set key top left

set style data yerrorbars
set style fill solid 0.1

plot 'UR_0.1_err.dat' using 1:2:3 with yerrorbars title 'naive iterative'


set terminal pngcairo
set output 'UR_naive_rec.png'  
set title 'UR NR x = 0.1'

set xlabel 'n'
set ylabel 'relative errors'
set key top left

set style data yerrorbars
set style fill solid 0.1

plot 'UR_0.1_err.dat' using 1:4:5 with yerrorbars title 'naive recursive'



set terminal pngcairo
set output 'UR_rapid_iter.png'  
set title 'UR RI x = 0.1'

set xlabel 'n'
set ylabel 'relative errors'
set key top left

set style data yerrorbars
set style fill solid 0.1

plot 'UR_0.1_err.dat' using 1:6:7 with yerrorbars title 'rapid iterative'


set terminal pngcairo
set output 'UR_rapid_rec.png'  
set title 'UR RR x = 0.1'

set xlabel 'n'
set ylabel 'relative errors'
set key top left

set style data yerrorbars
set style fill solid 0.1

plot 'UR_0.1_err.dat' using 1:8:9 with yerrorbars title 'rapid recursive'



set terminal pngcairo
set output 'SR_naive_iter.png'  
set title 'SR NI x = 0.1'

set xlabel 'n'
set ylabel 'relative errors'
set key top left

set style data yerrorbars
set style fill solid 0.1

plot 'SR_0.1_err.dat' using 1:2:3 with yerrorbars title 'naive iterative'


set terminal pngcairo
set output 'SR_naive_rec.png'  
set title 'SR NR x = 0.1'

set xlabel 'n'
set ylabel 'relative errors'
set key top left

set style data yerrorbars
set style fill solid 0.1

plot 'SR_0.1_err.dat' using 1:4:5 with yerrorbars title 'naive recursive'


set terminal pngcairo
set output 'SR_rapid_iter.png'  
set title 'SR RI x = 0.1'

set xlabel 'n'
set ylabel 'relative errors'
set key top left

set style data yerrorbars
set style fill solid 0.1

plot 'SR_0.1_err.dat' using 1:6:7 with yerrorbars title 'rapid iterative'


set terminal pngcairo
set output 'SR_rapid_rec.png'  
set title 'SR RR x = 0.1'

set xlabel 'n'
set ylabel 'relative errors'
set key top left

set style data yerrorbars
set style fill solid 0.1

plot 'SR_0.1_err.dat' using 1:8:9 with yerrorbars title 'rapid recursive'


