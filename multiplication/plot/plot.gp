# Comparaison exponentiation naif par rapport à x
set terminal png size 800, 600
set output 'sum_0.png'

set size square
set grid
set key top left
set xlabel 'Multiplication (n)'
set ylabel 'Erreur relative'

f(x) = a*x**2 + b*x + c
fit f(x) "../results0/naif_iter/SRstat.dat" using 1:2 via a,b,c

plot "../results0/naif_iter/SRstat.dat" every 5 w p pt 9 ps 1.2 lc rgb "#1f77b4" title 'SR', \
     f(x) w l lw 2 lc rgb 'black' title 'Droite de régression'


set terminal png size 800, 600
set output 'sum_1.png'

set size square
set grid
set key top left
set xlabel 'Multiplication (n)'
set ylabel 'Erreur relative'

f(x) = a*x**2 + b*x + c
fit f(x) "../results1/naif_iter/SRstat.dat" using 1:2 via a,b,c

plot "../results1/naif_iter/SRstat.dat" every 5 w p pt 9 ps 1.2 lc rgb "#1f77b4" title 'SR', \
     f(x) w l lw 2 lc rgb 'black' title 'Droite de régression'
