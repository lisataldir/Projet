set terminal png   
set output 'plot_rr.png'  

set size square
set grid
set xlabel 'n'         
set ylabel 'error' 

f(x) = a*x + b
fit f(x) "../results/rapide_rec/SRstat.dat" using 0:1 via a, b

plot "../results/rapide_rec/UR.dat" with points pointtype 7 pointsize 0.8 title "UR", \
     "../results/rapide_rec/SRstat.dat" using 0:1:2 with yerrorbars title "SR", \
     f(x) with lines linewidth 2 title "Droite de régression SR"