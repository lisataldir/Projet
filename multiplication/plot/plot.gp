# Comparaison exponentiation naif par rapport à x
set terminal png
set output 'plot_compare_naif.png'

set size square
set grid
set key top left
set xlabel 'Multiplication (n)'
set ylabel 'Erreur relative'

x0 = 0.1
x1 = 1.1
x2 = 1.2

plot for [i=0:2] sprintf("../results%d/naif_iter/SRstat.dat", i) w p ps 1.2 pt 9 title sprintf("x = %.1f", value(sprintf("x%d", i)))