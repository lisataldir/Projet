# Comparaison méthodes itératives plot 0
set terminal png size 600, 400
set output 'plot0/plot_method_iter0.png'

set size square
set grid
set key top left
set xlabel 'Puissance (n)'
set ylabel 'Erreur relative'

RN_ni = "../results/results0/naif_iter/URstat.dat"
SR_ni = "../results/results0/naif_iter/SRstat.dat"

plot RN_ni w p pt 3 ps 2 lc rgb "#129bd3" title "RN", \
     SR_ni w p pt 9 ps 2 lc rgb "#41d47f" title "SR", \
     sqrt(x)*(2**(-23)) w l lt 2 lw 2 lc rgb "black" title "srqt(n)*u"

# plot 1
set terminal png size 600, 400
set output 'plot1/plot_method_iter1.png'

set size square
set grid
set key top left
set xlabel 'Puissance (n)'
set ylabel 'Erreur relative'

RN_ni = "../results/results1/naif_iter/URstat.dat"
SR_ni = "../results/results1/naif_iter/SRstat.dat"

plot RN_ni w p pt 3 ps 2 lc rgb "#129bd3" title "RN", \
     SR_ni w p pt 9 ps 2 lc rgb "#41d47f" title "SR", \
     sqrt(x)*(2**(-23)) w l lt 2 lw 2 lc rgb "black" title "srqt(n)*u"

# plot 2
set terminal png size 600, 400
set output 'plot2/plot_method_iter2.png'

set size square
set grid
set key top left
set xlabel 'Puissance (n)'
set ylabel 'Erreur relative'

RN_ni = "../results/results2/naif_iter/URstat.dat"
SR_ni = "../results/results2/naif_iter/SRstat.dat"

plot RN_ni w p pt 3 ps 2 lc rgb "#129bd3" title "RN", \
     SR_ni w p pt 9 ps 2 lc rgb "#41d47f" title "SR", \
     sqrt(x)*(2**(-23)) w l lt 2 lw 2 lc rgb "black" title "srqt(n)*u"

# plot 3
set terminal png size 600, 400
set output 'plot3/plot_method_iter3.png'

set size square
set grid
set key top left
set xlabel 'Puissance (n)'
set ylabel 'Erreur relative'

RN_ni = "../results/results3/naif_iter/URstat.dat"
SR_ni = "../results/results3/naif_iter/SRstat.dat"

plot RN_ni w p pt 3 ps 2 lc rgb "#129bd3" title "RN", \
     SR_ni w p pt 9 ps 2 lc rgb "#41d47f" title "SR", \
     sqrt(x)*(2**(-23)) w l lt 2 lw 2 lc rgb "black" title "srqt(n)*u"

# plot 4
set terminal png size 600, 400
set output 'plot4/plot_method_iter4.png'

set size square
set grid
set key top left
set xlabel 'Puissance (n)'
set ylabel 'Erreur relative'

RN_ni = "../results/results4/naif_iter/URstat.dat"
SR_ni = "../results/results4/naif_iter/SRstat.dat"

plot RN_ni w p pt 3 ps 2 lc rgb "#129bd3" title "RN", \
     SR_ni w p pt 9 ps 2 lc rgb "#41d47f" title "SR", \
     sqrt(x)*(2**(-23)) w l lt 2 lw 2 lc rgb "black" title "srqt(n)*u"

# plot 5
set terminal png size 600, 400
set output 'plot5/plot_method_iter5.png'

set size square
set grid
set key top left
set xlabel 'Puissance (n)'
set ylabel 'Erreur relative'

RN_ni = "../results/results5/naif_iter/URstat.dat"
SR_ni = "../results/results5/naif_iter/SRstat.dat"

plot RN_ni w p pt 3 ps 2 lc rgb "#129bd3" title "RN", \
     SR_ni w p pt 9 ps 2 lc rgb "#41d47f" title "SR", \
     sqrt(x)*(2**(-23)) w l lt 2 lw 2 lc rgb "black" title "srqt(n)*u"