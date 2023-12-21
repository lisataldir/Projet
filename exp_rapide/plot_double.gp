set terminal png   
set output 'UR_rap_rec_0.995_log.png'   

set title 'rapid recative method: x = 0.995'    
set xlabel 'power n'         
set ylabel 'log(error)'      


set logscale y 10

plot 'error_rec_0.995_default_UR.dat' with points pointtype 7 pointsize 0.4
