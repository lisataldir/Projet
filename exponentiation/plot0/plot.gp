# Comparaison méthodes itératives
set terminal png
set output 'plot_method_iter.png'

set size square
set grid
set xlabel 'Puissance (n)'
set ylabel 'Erreur relative'

NR_ni = "../results0/naif_iter/URstat.dat"
SR_ni = "../results0/naif_iter/SRstat.dat"
NR_ri = "../results0/rapide_iter/URstat.dat"
SR_ri = "../results0/rapide_iter/SRstat.dat"

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

NR_nr = "../results0/naif_rec/URstat.dat"
SR_nr = "../results0/naif_rec/SRstat.dat"
NR_rr = "../results0/rapide_rec/URstat.dat"
SR_rr = "../results0/rapide_rec/SRstat.dat"

plot NR_nr with points pointsize 1.2 title "NR avec exp naif", \
     SR_nr with points pointsize 1.2 title "SR avec exp naif", \
     NR_rr with points pointsize 1.2 title "NR avec exp rapide", \
     SR_rr with points pointsize 1.2 title "SR avec exp rapide"