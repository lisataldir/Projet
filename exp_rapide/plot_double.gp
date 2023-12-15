set terminal png   
set output 'UR_rap_iter_1.34907566301_log.png'   

set title 'rapid recursive method: x = 1.34907566301'    
set xlabel 'power n'         
set ylabel 'log(error)'      


set logscale y 10

plot 'error_iter_1.34907566301_double.dat' with points pointtype 7 pointsize 0.4
