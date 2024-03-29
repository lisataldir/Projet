set terminal png   
set output 'plot_ni.png'  

set grid
set xlabel 'mantisse'        
set ylabel 'prob'
set format x '%.2e'

plot "../results/naif_iter/stat.dat" with lines

set terminal png   
set output 'plot_nr.png'  

set grid
set xlabel 'mantisse'         
set ylabel 'prob'
set format x '%.2e'

plot "../results/naif_rec/stat.dat" with lines

set terminal png   
set output 'plot_ri.png'  

set grid
set xlabel 'mantisse'         
set ylabel 'prob' 
set format x '%.e'

plot "../results/rapide_iter/stat.dat" with lines

set terminal png
set output 'plot_rr.png'  

set grid
set xlabel 'mantisse'         
set ylabel 'prob' 
set format x '%.e'

plot "../results/rapide_rec/stat.dat" with lines
