set terminal pngcairo
set output 'Usual_Roundoff_Error.png'  
set title 'UR x = 1.01'

set xlabel 'n'
set ylabel 'relative errors'
set key top left

set style data yerrorbars
set style fill solid 0.1

plot 'UR_1.01_err.dat' using 1:2:3 with yerrorbars title 'naive iterative', \
    '' using 1:4:5 with yerrorbars title 'naive recursive', \
    '' using 1:6:7 with yerrorbars title 'rapid iterative', \
    '' using 1:8:9 with yerrorbars title 'rapid recursive'



set terminal pngcairo
set output 'Stochastic_Roundoff_Error.png'  
set title 'SR x = 1.01'

set xlabel 'n'
set ylabel 'relative errors'
set key top left

set style data yerrorbars
set style fill solid 0.1

plot 'SR_1.01_err.dat' using 1:2:3 with yerrorbars title 'naive iterative', \
    '' using 1:4:5 with yerrorbars title 'naive recursive', \
    '' using 1:6:7 with yerrorbars title 'rapid iterative', \
    '' using 1:8:9 with yerrorbars title 'rapid recursive'



set terminal pngcairo
set output 'Usual_Roundoff_Error_log.png'  
set title 'UR x = 1.01'

set xlabel 'n'
set ylabel 'log relative errors'
set logscale y 10 
set yrang [1e-20 : 1e-3]
set key below left

set style data yerrorbars
set style fill solid 0.1

plot 'UR_1.01_err.dat' using 1:2:3 with yerrorbars title 'naive iterative', \
    '' using 1:4:5 with yerrorbars title 'naive recursive', \
    '' using 1:6:7 with yerrorbars title 'rapid iterative', \
    '' using 1:8:9 with yerrorbars title 'rapid recursive'



set terminal pngcairo
set output 'Stochastic_Roundoff_Error_log.png'  
set title 'SR x = 1.01'

set xlabel 'n'
set ylabel 'log relative errors'
set logscale y 10
set yrang [1e-20 : 1e-3]
set key below left

set style data yerrorbars
set style fill solid 0.1

plot 'SR_1.01_err.dat' using 1:2:3 with yerrorbars title 'naive iterative', \
    '' using 1:4:5 with yerrorbars title 'naive recursive', \
    '' using 1:6:7 with yerrorbars title 'rapid iterative', \
    '' using 1:8:9 with yerrorbars title 'rapid recursive'
