set terminal png   
set output 'plot_nr.png'  

set size square
set grid
set xlabel 'n'         
set ylabel 'error' 


plot "../results/naif_rec/UR.dat" with points pointtype 7 pointsize 0.8 title "UR", \
     "../results/naif_rec/SRstat.dat" using 0:1 with points title "SR", \
     f(x) with lines linewidth 2 title "Droite de régression SR"