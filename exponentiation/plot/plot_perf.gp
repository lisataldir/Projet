set terminal png size 800,600  
set output 'perfRNvsSR_nr.png'  

set size ratio 1
set key top left
set grid
set xlabel 'Itérations (n)'        
set ylabel 'Temps (en ms)' 

plot "../perf/RN_nr.dat" w lp ls 2 lw 2 pt 6 ps 1.2 lc rgb "black" title "RN avec Vérificarlo", \
     "../perf/RN_gcc_nr.dat" w lp ls 2 lw 2 pt 6 ps 1.2 lc rgb "gray" title "RN avec gcc", \
     "../perf/SR_nr.dat" w lp ls 2 lw 2 pt 6 ps 1.2 lc rgb "#1f77b4" title "SR"

set terminal png size 800,600  
set output 'perfRNvsSR_ni.png'  

set size ratio 1
set key top left
set grid
set xlabel 'Itérations (n)'        
set ylabel 'Temps (en ms)' 

plot "../perf/RN_ni.dat" w lp ls 2 lw 2 pt 6 ps 1.2 lc rgb "black" title "RN avec Vérificarlo", \
     "../perf/RN_gcc_ni.dat" w lp ls 2 lw 2 pt 6 ps 1.2 lc rgb "gray" title "RN avec gcc", \
     "../perf/SR_ni.dat" w lp ls 2 lw 2 pt 6 ps 1.2 lc rgb "#1f77b4" title "SR"

set terminal png size 800,600  
set output 'perfRNvsSR_rr.png'  

set size ratio 1
set key top left
set grid
set xlabel 'Itérations (n)'        
set ylabel 'Temps (en ms)' 

plot "../perf/RN_rr.dat" w lp ls 2 lw 2 pt 6 ps 1.2 lc rgb "black" title "RN avec Vérificarlo", \
     "../perf/RN_gcc_rr.dat" w lp ls 2 lw 2 pt 6 ps 1.2 lc rgb "gray" title "RN avec gcc", \
     "../perf/SR_rr.dat" w lp ls 2 lw 2 pt 6 ps 1.2 lc rgb "#1f77b4" title "SR"

set terminal png size 800,600  
set output 'perfRNvsSR_ri.png'  

set size ratio 1
set key top left
set grid
set xlabel 'Itérations (n)'        
set ylabel 'Temps (en ms)' 

plot "../perf/RN_ri.dat" w lp ls 2 lw 2 pt 6 ps 1.2 lc rgb "black" title "RN avec Vérificarlo", \
     "../perf/RN_gcc_ri.dat" w lp ls 2 lw 2 pt 6 ps 1.2 lc rgb "gray" title "RN avec gcc", \
     "../perf/SR_ri.dat" w lp ls 2 lw 2 pt 6 ps 1.2 lc rgb "#1f77b4" title "SR"