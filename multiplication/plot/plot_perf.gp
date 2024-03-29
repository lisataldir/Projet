set terminal png size 800,600  
set output 'perfRNvsSR.png'  

set size ratio 1
set key top left
set grid
set xlabel 'Itérations (n)'        
set ylabel 'Temps (en ms)' 

plot "../perf/RN.dat" w lp ls 2 lw 2 pt 9 ps 1.2 lc rgb "black" title "RN avec Vérificarlo", \
     "../perf/RN_gcc.dat" w lp ls 2 lw 2 pt 9 ps 1.2 lc rgb "gray" title "RN avec gcc", \
     "../perf/SR.dat" w lp ls 2 lw 2 pt 9 ps 1.2 lc rgb "#1f77b4" title "SR"