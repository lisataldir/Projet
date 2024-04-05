# Comparaison exponentiation naif par rapport à x
set terminal png size 800, 600
set output 'SR_sum_x_0_1.png'

set size square
set grid
set key top left
set xlabel 'Itérations (n)'
set ylabel 'Erreur relative'

f(x) = a*x**2 + b*x + c
fit f(x) "../results0/SRstat.dat" using 1:2 via a,b,c

plot "../results0/SRstat.dat" w p pt 9 ps 1.2 lc rgb "#1f77b4" title 'SR', \
     f(x) w l lw 2 lc rgb 'black' title 'Droite de régression', \
     sqrt(x)*(2**(-23)) w l ls 2 lc rgb "#b238cb" title "srqt(n)*u"


set terminal png size 800, 600
set output 'SR_sum_x_1_1.png'

set size square
set grid
set key top left
set xlabel 'Itérations (n)'
set ylabel 'Erreur relative'

f(x) = a*x**2 + b*x + c
fit f(x) "../results1/SRstat.dat" using 1:2 via a,b,c

plot "../results1/SRstat.dat" w p pt 9 ps 1.2 lc rgb "#1f77b4" title 'SR', \
     f(x) w l lw 2 lc rgb 'black' title 'Droite de régression', \
     sqrt(x)*(2**(-23)) w l ls 5 lw 2 lc rgb "#b238cb" title "sqrt(n)*u"

set terminal png size 800, 600
set output 'SR_sum_x_1_2.png'

set size square
set grid
set key top left
set xlabel 'Itérations (n)'
set ylabel 'Erreur relative'

f(x) = a*x**2 + b*x + c
fit f(x) "../results2/SRstat.dat" using 1:2 via a,b,c

plot "../results2/SRstat.dat" w p pt 9 ps 1.2 lc rgb "#1f77b4" title 'SR', \
     f(x) w l lw 2 lc rgb 'black' title 'Droite de régression', \
     sqrt(x)*(2**(-23)) w l ls 5 lw 2 lc rgb "#b238cb" title "sqrt(n)*u"

set terminal png size 800, 600
set output 'SR_sum_all_x.png'

set size square
set grid
set key top left
set xlabel 'Itérations (n)'
set ylabel 'Erreur relative'

plot "../results2/SRstat.dat" w l lw 2 lc rgb "#add8e6" title 'x=1.2', \
     "../results1/SRstat.dat" w l lw 2 lc rgb "#4169e1" title 'x=1.1', \
     "../results0/SRstat.dat" w l lw 2 lc rgb "#00008b" title 'x=0.1'
