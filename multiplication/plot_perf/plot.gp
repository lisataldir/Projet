set terminal png size 800,600  
set output 'plot_ni.png'  

set size ratio 1
set key top left
set grid
set xlabel 'Itération (n)'        
set ylabel 'Temps (en ms)' 

plot "../perf/naif_iter/RN.dat" w lp ls 2 lw 2 pt 9 ps 1.2 lc rgb "black" title "RN", \
     "../perf/naif_iter/SR.dat" w lp ls 2 lw 2 pt 9 ps 1.2 lc rgb "#1f77b4" title "SR"

set terminal png size 800,600    
set output 'plot_nr.png'  

set size ratio 1
set key top left
set grid
set xlabel 'Itération (n)'        
set ylabel 'Temps (en ms)' 

plot "../perf/naif_rec/RN.dat" w lp ls 2 lw 2 pt 9 ps 1.2 lc rgb "black" title "RN", \
     "../perf/naif_rec/SR.dat" w lp ls 2 lw 2 pt 9 ps 1.2 lc rgb "#1f77b4" title "SR"

set terminal png size 800,600    
set output 'plot_ri.png'  

set size ratio 1
set key top left
set grid
set xlabel 'Itération (n)'        
set ylabel 'Temps (en ms)'  

plot "../perf/rapide_iter/RN.dat" w lp ls 2 lw 2 pt 9 ps 1.2 lc rgb "black" title "RN", \
     "../perf/rapide_iter/SR.dat" w lp ls 2 lw 2 pt 9 ps 1.2 lc rgb "#1f77b4" title "SR"

set terminal png size 800,600    
set output 'plot_rr.png'  

set size ratio 1
set key top left
set grid
set xlabel 'Itération (n)'        
set ylabel 'Temps (en ms)'  

plot "../perf/rapide_rec/RN.dat" w lp ls 2 lw 2 pt 9 ps 1.2 lc rgb "black" title "RN", \
     "../perf/rapide_rec/SR.dat" w lp ls 2 lw 2 pt 9 ps 1.2 lc rgb "#1f77b4" title "SR"