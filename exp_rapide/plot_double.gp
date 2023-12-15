set terminal png   
set output 'UR_rap_rec_1.11_log.png'   

set title 'rapid recursive method: x = 1.11'    
set xlabel 'power n'         
set ylabel 'log(error)'      

#set logscale x 10
set logscale y 10

plot 'error_rec_1.11_double_UR.dat' with points pointtype 7 pointsize 0.1
