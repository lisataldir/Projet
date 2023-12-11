set terminal png   
set output 'double_rap_rec_1.34907566301.png'   

set title 'rapid recursive method: x = 1.34907566301'    
set xlabel 'power n'         
set ylabel 'error'         

plot 'error_rec_1.34907566301_double.dat' with points pointtype 7 pointsize 1 title 'Data Points'
