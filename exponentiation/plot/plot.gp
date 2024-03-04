set terminal png   
set output 'plot_ni.png'  

set size square
set grid
set xlabel 'n'        
set ylabel 'error' 

plot "../results/naif_iter/URstat.dat" with points pointtype 7 pointsize 0.8 title "NR", \
     "../results/naif_iter/SRstat.dat" with points title "SR"

set terminal png   
set output 'plot_nr.png'  

set size square
set grid
set xlabel 'n'         
set ylabel 'error' 

plot "../results/naif_rec/URstat.dat" with points pointtype 7 pointsize 0.8 title "NR", \
     "../results/naif_rec/SRstat.dat" with points title "SR"

set terminal png   
set output 'plot_ri.png'  

set size square
set grid
set xlabel 'n'         
set ylabel 'error' 

plot "../results/rapide_iter/URstat.dat" with points pointtype 7 pointsize 0.8 title "NR", \
     "../results/rapide_iter/SRstat.dat" with points title "SR"

set terminal png   
set output 'plot_rr.png'  

set size square
set grid
set xlabel 'n'         
set ylabel 'error' 

plot "../results/rapide_rec/URstat.dat" with points pointtype 7 pointsize 0.8 title "NR", \
     "../results/rapide_rec/SRstat.dat" with points title "SR"