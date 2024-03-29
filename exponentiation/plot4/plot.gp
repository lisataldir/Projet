# Comparaison méthodes itératives
set terminal png size 800, 600
set output 'plot_method_iter.png'

set size square
set grid
set key top left
set xlabel 'Puissance (n)'
set ylabel 'Erreur relative'

RN_ni = "../results4/naif_iter/URstat.dat"
SR_ni = "../results4/naif_iter/SRstat.dat"
RN_ri = "../results4/rapide_iter/URstat.dat"
SR_ri = "../results4/rapide_iter/SRstat.dat"

plot RN_ni w l lw 1.7 lc rgb "#333333" title "exp naif RN", \
     SR_ni w l lw 1.7 lc rgb "#0000FF" title "exp naif SR", \
     RN_ri w l lw 1.7 lc rgb "#999999" title "exp rapide RN", \
     SR_ri w l lw 1.7 lc rgb "#9999FF" title "exp rapide SR"

# Comparaison méthodes récursives
set terminal png size 800, 600
set output 'plot_method_rec.png'  

set size square
set grid
set key top left
set xlabel 'Puissance (n)'        
set ylabel 'Erreur relative' 

RN_RN = "../results4/naif_rec/URstat.dat"
SR_RN = "../results4/naif_rec/SRstat.dat"
RN_rr = "../results4/rapide_rec/URstat.dat"
SR_rr = "../results4/rapide_rec/SRstat.dat"

plot RN_RN w l lw 1.7 lc rgb "#333333" title "exp naif RN", \
     SR_RN w l lw 1.7 lc rgb "#0000FF" title "exp naif SR", \
     RN_rr w l lw 1.7 lc rgb "#999999" title "exp rapide RN", \
     SR_rr w l lw 1.7 lc rgb "#9999FF" title "exp rapide SR"