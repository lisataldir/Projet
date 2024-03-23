# Comparaison exponentiation naif par rapport à x
set terminal png
set output 'plot_compare_naif.png'

set size square
set grid
set key top left
set xlabel 'Multiplication (n)'
set ylabel 'Erreur relative'

plot "../results0/naif_iter/SRstat.dat" w p ps 1.2 pt 9 lc rgb "#1f77b4" title "x = 0.1", \
     "../results1/naif_iter/SRstat.dat" w p ps 1.2 pt 9 lc rgb "black" title "x = 1.1", \
     "../results2/naif_iter/SRstat.dat" w p ps 1.2 pt 9 lc rgb "gray" title "x = 1.2", \
