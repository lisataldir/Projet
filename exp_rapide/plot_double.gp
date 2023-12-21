set terminal png   
set output 'SR_rap_rec_0.995_log.png'   

set title 'rapid recursive method: x = 0.995'    
set xlabel 'power n'         
set ylabel 'log(error)'      


set logscale y 10

plot 'error_rec_0.995_SR.dat' with points pointtype 7 pointsize 0.4
