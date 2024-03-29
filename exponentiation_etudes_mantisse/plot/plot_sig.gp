set terminal png   
set output 'plot_ni.png'  

set grid
set xlabel 'sign bit'        
set ylabel 'prob'

plot "../results/naif_iter/stat_sign_bit.dat" with lines

set terminal png   
set output 'plot_nr.png'  

set grid
set xlabel 'sign bit'         
set ylabel 'prob'

plot "../results/naif_rec/stat_sign_bit.dat" with lines

set terminal png   
set output 'plot_ri.png'  

set grid
set xlabel 'sign bit'         
set ylabel 'prob' 

plot "../results/rapide_iter/stat_sign_bit.dat" with lines

set terminal png
set output 'plot_rr.png'  

set grid
set xlabel 'sign bit'         
set ylabel 'prob' 

plot "../results/rapide_rec/stat_sign_bit.dat" with lines
