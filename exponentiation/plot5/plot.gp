# Comparaison méthodes itératives
set terminal png size 800, 600
set output 'plot_method_iter.png'

set size square
set grid
set key top left
set xlabel 'Puissance (n)'
set ylabel 'Erreur relative'

NR_ni = "../results5/naif_iter/URstat.dat"
SR_ni = "../results5/naif_iter/SRstat.dat"
NR_ri = "../results5/rapide_iter/URstat.dat"
SR_ri = "../results5/rapide_iter/SRstat.dat"

plot NR_ni w l lw 1.7 lc rgb "#333333" title "exp naif NR", \
     SR_ni w l lw 1.7 lc rgb "#0000FF" title "exp naif SR", \
     NR_ri w l lw 1.7 lc rgb "#999999" title "exp rapide NR", \
     SR_ri w l lw 1.7 lc rgb "#9999FF" title "exp rapide SR"

# Comparaison méthodes récursives
set terminal png size 800, 600
set output 'plot_method_rec.png'  

set size square
set grid
set key top left
set xlabel 'Puissance (n)'        
set ylabel 'Erreur relative' 

NR_nr = "../results5/naif_rec/URstat.dat"
SR_nr = "../results5/naif_rec/SRstat.dat"
NR_rr = "../results5/rapide_rec/URstat.dat"
SR_rr = "../results5/rapide_rec/SRstat.dat"

plot NR_nr w l lw 1.7 lc rgb "#333333" title "exp naif NR", \
     SR_nr w l lw 1.7 lc rgb "#0000FF" title "exp naif SR", \
     NR_rr w l lw 1.7 lc rgb "#999999" title "exp rapide NR", \
     SR_rr w l lw 1.7 lc rgb "#9999FF" title "exp rapide SR"