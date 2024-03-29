set terminal png size 800,600  
set output 'plot_sum_x_0_1.png'  

set size ratio 1
set key top left
set grid
set xlabel 'Itérations (n)'        
set ylabel 'Erreur relative' 

plot "../results0/URstat.dat" w lp ls 2 lw 2 pt 9 ps 1.2 lc rgb "black" title "RN", \
     "../results0/SRstat.dat" w l lw 4 lc rgb "#1f77b4" title "SR"

set terminal png size 800,600  
set output 'plot_sum_x_1_1.png'  

set size ratio 1
set key top left
set grid
set xlabel 'Itérations (n)'        
set ylabel 'Erreur relative' 

plot "../results1/URstat.dat" w lp ls 2 lw 2 pt 9 ps 1.2 lc rgb "black" title "RN", \
     "../results1/SRstat.dat" w l lw 4 lc rgb "#1f77b4" title "SR"

set terminal png size 800,600  
set output 'plot_sum_x_1_2.png'  

set size ratio 1
set key top left
set grid
set xlabel 'Itérations (n)'        
set ylabel 'Erreur relative' 

plot "../results2/URstat.dat" w lp ls 2 lw 2 pt 9 ps 1.2 lc rgb "black" title "RN", \
     "../results2/SRstat.dat" w l lw 4 lc rgb "#1f77b4" title "SR"