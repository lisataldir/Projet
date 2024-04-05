# Comparaison exponentiation naif par rapport à x
set terminal png size 600,400  
set output 'SR_sum_x_0_1.png'

set size square
set grid
set key top left
set xlabel 'Itérations (n)'
set ylabel 'Erreur relative'

plot "../results0/SRstat.dat" w p pt 9 ps 2 lc rgb "#41d47f" title "SR", \
     sqrt(x)*(2**(-23)) w l lt 2 lw 2 lc rgb "black" title "sqrt(n)*u"


set terminal png size 600,400  
set output 'SR_sum_x_1_1.png'

set size square
set grid
set key top left
set xlabel 'Itérations (n)'
set ylabel 'Erreur relative'

plot "../results0/SRstat.dat" w p pt 9 ps 2 lc rgb "#41d47f" title "SR", \
     sqrt(x)*(2**(-23)) w l lt 2 lw 2 lc rgb "black" title "sqrt(n)*u"

set terminal png size 600,400  
set output 'SR_sum_x_1_2.png'

set size square
set grid
set key top left
set xlabel 'Itérations (n)'
set ylabel 'Erreur relative'

plot "../results0/SRstat.dat" w p pt 9 ps 2 lc rgb "#41d47f" title "SR", \
     sqrt(x)*(2**(-23)) w l lt 2 lw 2 lc rgb "black" title "sqrt(n)*u"

set terminal png size 600,400  
set output 'SR_sum_all_x.png'

set size square
set grid
set key top left
set xlabel 'Itérations (n)'
set ylabel 'Erreur relative'

plot "../results2/SRstat.dat" w l lw 2 lc rgb "#add8e6" title 'x=1.2', \
     "../results1/SRstat.dat" w l lw 2 lc rgb "#4169e1" title 'x=1.1', \
     "../results0/SRstat.dat" w l lw 2 lc rgb "#00008b" title 'x=0.1'
