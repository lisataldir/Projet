# Comparaison méthodes itératives
set terminal png
set output 'plot_methode_iter.png'

set size square
set grid
set xlabel 'Puissance (n)'
set ylabel 'Erreur relative'

NR_ni = "../results2/naif_iter/URstat.dat"
SR_ni = "../results2/naif_iter/SRstat.dat"
NR_ri = "../results2/rapide_iter/URstat.dat"
SR_ri = "../results2/rapide_iter/SRstat.dat"

plot NR_ni with points pointsize 1.2 title "NR avec exp naif", \
     SR_ni with points pointsize 1.2 title "SR avec exp naif", \
     NR_ri with points pointsize 1.2 title "NR avec exp rapide", \
     SR_ri with points pointsize 1.2 title "SR avec exp rapide"

# Comparaison méthodes récursives
set terminal png   
set output 'plot_method_rec.png'  

set size square
set grid
set xlabel 'Puissance (n)'        
set ylabel 'Erreur relative' 

NR_nr = "../results2/naif_rec/URstat.dat"
SR_nr = "../results2/naif_rec/SRstat.dat"
NR_rr = "../results2/rapide_rec/URstat.dat"
SR_rr = "../results2/rapide_rec/SRstat.dat"

plot NR_nr with points pointsize 1.2 title "NR avec exp naif", \
     SR_nr with points pointsize 1.2 title "SR avec exp naif", \
     NR_rr with points pointsize 1.2 title "NR avec exp rapide", \
     SR_rr with points pointsize 1.2 title "SR avec exp rapide"