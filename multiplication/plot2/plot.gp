set terminal png size 800,600  
set output 'plot_ni.png'  

set size ratio 1
set key top left
set grid
set xlabel 'Multiplication (n)'        
set ylabel 'Erreur relative' 

plot "../results2/naif_iter/URstat.dat" w lp ls 2 lw 2 pt 9 ps 1.2 lc rgb "black" title "RN", \
     "../results2/naif_iter/SRstat.dat" w l lw 4 lc rgb "#1f77b4" title "SR"

set terminal png size 800,600    
set output 'plot_nr.png'  

set size ratio 1
set key top left
set grid
set xlabel 'Multiplication (n)'        
set ylabel 'Erreur relative' 

plot "../results2/naif_rec/URstat.dat" w lp ls 2 lw 2 pt 9 ps 1.2 lc rgb "black" title "RN", \
     "../results2/naif_rec/SRstat.dat" w l lw 4 lc rgb "#1f77b4" title "SR"

set terminal png size 800,600    
set output 'plot_ri.png'  

set size ratio 1
set key top left
set grid
set xlabel 'Multiplication (n)'        
set ylabel 'Erreur relative'  

plot "../results2/rapide_iter/URstat.dat" w lp ls 2 lw 2 pt 9 ps 1.2 lc rgb "black" title "RN", \
     "../results2/rapide_iter/SRstat.dat" w l lw 4 lc rgb "#1f77b4" title "SR"

set terminal png size 800,600    
set output 'plot_rr.png'  

set size ratio 1
set key top left
set grid
set xlabel 'Multiplication (n)'        
set ylabel 'Erreur relative'  

plot "../results2/rapide_rec/URstat.dat" w lp ls 2 lw 2 pt 9 ps 1.2 lc rgb "black" title "RN", \
     "../results2/rapide_rec/SRstat.dat" w l lw 4 lc rgb "#1f77b4" title "SR"