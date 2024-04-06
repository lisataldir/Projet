# Comparaison exponentiation naif par rapport à x
set terminal png size 800, 600
set output 'plot_compare_naif.png'

set size square
set grid
set key top left
set xlabel 'Puissance (n)'
set ylabel 'Erreur relative'

x0 = 1.34907566301
x1 = 1.318974023 
x2 = 1.27987347
x3 = 1.25
x4 = 1.3
x5 = 2

plot for [i=0:5] sprintf("../results%d/naif_iter/SRstat.dat", i) w l lw 1.6 title sprintf("x = %.11f", value(sprintf("x%d", i)))

# Comparaison exponentiation rapide par rapport à x
set terminal png size 800, 600
set output 'plot_compare_rapide.png'

set size square
set grid
set key top left
set xlabel 'Puissance (n)'
set ylabel 'Erreur relative'

x0 = 1.34907566301
x1 = 1.318974023 
x2 = 1.27987347
x3 = 1.25
x4 = 1.3
x5 = 2

plot for [i=0:5] sprintf("../results%d/rapide_iter/SRstat.dat", i) w l lw 1.6 title sprintf("x = %.11f", value(sprintf("x%d", i)))
