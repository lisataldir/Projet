set terminal png   
set output 'plot_ni.png'  

set size square
set grid
set xlabel 'mantisse'        
set ylabel 'prob'

plot "../results/naif_iter/stat.dat" with boxes

set terminal png   
set output 'plot_nr.png'  

set size square
set grid
set xlabel 'mantisse'         
set ylabel 'prob'

plot "../results/naif_rec/stat.dat" with boxes

set terminal png   
set output 'plot_ri.png'  

set size square
set grid
set xlabel 'mantisse'         
set ylabel 'prob' 

plot "../results/rapide_iter/stat.dat" with boxes

set terminal png
set output 'plot_rr.png'  

set size square
set grid
set xlabel 'mantisse'         
set ylabel 'prob' 

plot "../results/rapide_rec/stat.dat" with boxes
