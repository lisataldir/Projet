set terminal png   
set output 'plot_ni.png'  

set size square
set grid
set xlabel 'n'         
set ylabel 'error' 

plot "../results/naif_iter/UR.dat" with points pointtype 7 pointsize 0.8 title "RN", \
     "../results/naif_iter/SR_stat.dat" with points title "SR"