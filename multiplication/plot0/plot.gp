set terminal png   
set output 'plot_ni.png'  

set size square
set key top left
set grid
set xlabel 'Multiplication (n)'        
set ylabel 'Erreur relative' 

plot "../results0/naif_iter/URstat.dat" w p ps 1.2 pt 9 lc rgb "black" title "NR", \
     "../results0/naif_iter/SRstat.dat" w p ps 1.2 pt 7 lc rgb "blue" title "SR"

set terminal png   
set output 'plot_nr.png'  

set size square
set key top left
set grid
set xlabel 'Multiplication (n)'        
set ylabel 'Erreur relative' 

plot "../results0/naif_rec/URstat.dat" w p ps 1.2 pt 9 lc rgb "black" title "NR", \
     "../results0/naif_rec/SRstat.dat" w p ps 1.2 pt 7 lc rgb "blue" title "SR"

set terminal png   
set output 'plot_ri.png'  

set size square
set key top left
set grid
set xlabel 'Multiplication (n)'        
set ylabel 'Erreur relative'  

plot "../results0/rapide_iter/URstat.dat" w p ps 1.2 pt 9 lc rgb "black" title "NR", \
     "../results0/rapide_iter/SRstat.dat" w p ps 1.2 pt 7 lc rgb "blue" title "SR"

set terminal png   
set output 'plot_rr.png'  

set size square
set key top left
set grid
set xlabel 'Multiplication (n)'        
set ylabel 'Erreur relative'  

plot "../results0/rapide_rec/URstat.dat" w p ps 1.2 pt 9 lc rgb "black" title "NR", \
     "../results0/rapide_rec/SRstat.dat" w p ps 1.2 pt 7 lc rgb "blue" title "SR"