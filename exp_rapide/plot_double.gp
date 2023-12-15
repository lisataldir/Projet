set terminal png   
set output 'double_rap_iter_1.11.png'   

set title 'rapid recursive method: x = 1.11'    
set xlabel 'power n'         
set ylabel 'error'         

plot 'error_iter_1.11_double_UR.dat' with points pointtype 7 pointsize 1 title 'Data Points'
