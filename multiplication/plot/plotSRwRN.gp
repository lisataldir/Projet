set terminal png size 600,400  
set output 'plot_sum_x_0_1.png'  

set size ratio 1
set key top left
set grid
set xlabel 'Itérations (n)'        
set ylabel 'Erreur relative' 

plot "../results0/URstat.dat" w p pt 3 ps 2 lc rgb "#129bd3" title "RN", \
     "../results0/SRstat.dat" w p pt 9 ps 2 lc rgb "#41d47f" title "SR", \
     sqrt(x)*(2**(-23)) w l lt 2 lw 2 lc rgb "black" title "sqrt(n)*u"

set terminal png size 600,400   
set output 'plot_sum_x_1_1.png'  

set size ratio 1
set key top left
set grid
set xlabel 'Itérations (n)'        
set ylabel 'Erreur relative' 

plot "../results1/URstat.dat" w p pt 3 ps 2 lc rgb "#129bd3" title "RN", \
     "../results1/SRstat.dat" w p pt 9 ps 2 lc rgb "#41d47f" title "SR", \
     sqrt(x)*(2**(-23)) w l lt 2 lw 2 lc rgb "black" title "sqrt(n)*u"

set terminal png size 600,400   
set output 'plot_sum_x_1_2.png'  

set size ratio 1
set key top left
set grid
set xlabel 'Itérations (n)'        
set ylabel 'Erreur relative' 

plot "../results2/URstat.dat" w p pt 3 ps 2 lc rgb "#129bd3" title "RN", \
     "../results2/SRstat.dat" w p pt 9 ps 2 lc rgb "#41d47f" title "SR", \
     sqrt(x)*(2**(-23)) w l lt 2 lw 2 lc rgb "black" title "sqrt(n)*u"