set terminal png   
set output 'plot_ni.png'  

set size square
set grid
set xlabel 'Puissance (n)'        
set ylabel 'Erreur relative' 

plot "../results0/naif_iter/URstat.dat" with points pointsize 1.2 title "NR", \
     "../results0/naif_iter/SRstat.dat" with points pointsize 1.2 title "SR"

set terminal png   
set output 'plot_nr.png'  

set size square
set grid
set xlabel 'Puissance (n)'        
set ylabel 'Erreur relative' 

plot "../results0/naif_rec/URstat.dat" with points pointsize 1.2 title "NR", \
     "../results0/naif_rec/SRstat.dat" with points pointsize 1.2 title "SR"

set terminal png   
set output 'plot_ri.png'  

set size square
set grid
set xlabel 'Puissance (n)'        
set ylabel 'Erreur relative'  

plot "../results0/rapide_iter/URstat.dat" with points pointsize 1.2 title "NR", \
     "../results0/rapide_iter/SRstat.dat" with points pointsize 1.2 title "SR"

set terminal png   
set output 'plot_rr.png'  

set size square
set grid
set xlabel 'Puissance (n)'        
set ylabel 'Erreur relative'  

plot "../results0/rapide_rec/URstat.dat" with points pointsize 1.2 title "NR", \
     "../results0/rapide_rec/SRstat.dat" with points pointsize 1.2 title "SR"