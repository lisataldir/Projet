# Comparaison méthodes itératives
set terminal png
set output 'plot_method_iter.png'

set size square
set grid
set key top left
set xlabel 'Puissance (n)'
set ylabel 'Erreur relative'

NR_ni = "../results1/naif_iter/URstat.dat"
SR_ni = "../results1/naif_iter/SRstat.dat"
NR_ri = "../results1/rapide_iter/URstat.dat"
SR_ri = "../results1/rapide_iter/SRstat.dat"

plot NR_ni with points pointsize 1.2 title "exp naif NR", \
     SR_ni with points pointsize 1.2 title "exp naif SR", \
     NR_ri with points pointsize 1.2 title "exp rapide NR", \
     SR_ri with points pointsize 1.2 title "exp rapide SR"

# Comparaison méthodes récursives
set terminal png   
set output 'plot_method_rec.png'  

set size square
set grid
set key top left
set xlabel 'Puissance (n)'        
set ylabel 'Erreur relative' 

NR_nr = "../results1/naif_rec/URstat.dat"
SR_nr = "../results1/naif_rec/SRstat.dat"
NR_rr = "../results1/rapide_rec/URstat.dat"
SR_rr = "../results1/rapide_rec/SRstat.dat"

plot NR_nr with points pointsize 1.2 title "exp naif NR", \
     SR_nr with points pointsize 1.2 title "exp naif SR", \
     NR_rr with points pointsize 1.2 title "exp rapide NR", \
     SR_rr with points pointsize 1.2 title "exp rapide SR"