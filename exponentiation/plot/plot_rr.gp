set terminal png   
set output 'plot_rr.png'  

set size square
set grid
set xlabel 'n'         
set ylabel 'error' 

plot "../results/rapide_rec/UR.dat" with points pointtype 7 pointsize 0.8 title "UR", \
     "../results/rapide_rec/SR_stat.dat" with points title "SR"