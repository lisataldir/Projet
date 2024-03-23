# Comparaison méthodes itératives
set terminal png
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

plot NR_ni w p ps 1.2 pt 7 title "exp naif NR", \
     SR_ni w p ps 1.2 pt 9 title "exp naif SR", \
     NR_ri w p ps 1.2 pt 7 title "exp rapide NR", \
     SR_ri w p ps 1.2 pt 9 title "exp rapide SR"

# Comparaison méthodes récursives
set terminal png   
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

plot NR_nr w p ps 1.2 pt 7 title "exp naif NR", \
     SR_nr w p ps 1.2 pt 9 title "exp naif SR", \
     NR_rr w p ps 1.2 pt 7 title "exp rapide NR", \
     SR_rr w p ps 1.2 pt 9 title "exp rapide SR"