set terminal png   
set output 'plot_ni.png'  

set size square
set grid
set xlabel 'n'        
set ylabel 'error' 
set logscale y
set format y "%e"

plot "../results/naif_iter/SR_stat.dat" using 1:3 with points pointtype 7 pointsize 0.8 title "NR", \
     "../results/naif_iter/SR_stat.dat" using 1:2 with points title "SR"


set terminal png   
set output 'plot_nr.png'  

set size square
set grid
set xlabel 'n'         
set ylabel 'error' 
set logscale y
set format y "%e"

plot "../results/naif_rec/SR_stat.dat" using 1:3 with points pointtype 7 pointsize 0.8 title "NR", \
     "../results/naif_rec/SR_stat.dat" using 1:2 with points title "SR"

set terminal png   
set output 'plot_ri.png'  

set size square
set grid
set xlabel 'n'         
set ylabel 'error' 
set logscale y
set format y "%e"

plot "../results/rapide_iter/SR_stat.dat" using 1:3 with points pointtype 7 pointsize 0.8 title "NR", \
     "../results/rapide_iter/SR_stat.dat" using 1:2 with points title "SR"

set terminal png   
set output 'plot_rr.png'  

set size square
set grid
set xlabel 'n'         
set ylabel 'error' 
set logscale y
set format y "%e"

plot "../results/rapide_rec/SR_stat.dat" using 1:3 with points pointtype 7 pointsize 0.8 title "NR", \
     "../results/rapide_rec/SR_stat.dat" using 1:2 with points title "SR"