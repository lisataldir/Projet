# Comparaison méthodes itératives
set terminal png size 800, 600
set output 'plot_method_iter.png'

set size square
set grid
set key top left
set xlabel 'Puissance (n)'
set ylabel 'Erreur relative'

RN_ni = "../results3/naif_iter/URstat.dat"
SR_ni = "../results3/naif_iter/SRstat.dat"
RN_ri = "../results3/rapide_iter/URstat.dat"
SR_ri = "../results3/rapide_iter/SRstat.dat"

plot RN_ni w l lw 1.7 lc rgb "#333333" title "exp naif RN", \
     SR_ni w l lw 1.7 lc rgb "#0000FF" title "exp naif SR", \
     RN_ri w l lw 1.7 lc rgb "#999999" title "exp rapide RN", \
     SR_ri w l lw 1.7 lc rgb "#9999FF" title "exp rapide SR", \
     sqrt(x)*(2**(-23)) w l lt 2 lc rgb "#b238cb" title "srqt(n)*u"

# Comparaison méthodes récursives
set terminal png size 800, 600
set output 'plot_method_rec.png'  

set size square
set grid
set key top left
set xlabel 'Puissance (n)'        
set ylabel 'Erreur relative' 

RN_RN = "../results3/naif_rec/URstat.dat"
SR_RN = "../results3/naif_rec/SRstat.dat"
RN_rr = "../results3/rapide_rec/URstat.dat"
SR_rr = "../results3/rapide_rec/SRstat.dat"

plot RN_RN w l lw 1.7 lc rgb "#333333" title "exp naif RN", \
     SR_RN w l lw 1.7 lc rgb "#0000FF" title "exp naif SR", \
     RN_rr w l lw 1.7 lc rgb "#999999" title "exp rapide RN", \
     SR_rr w l lw 1.7 lc rgb "#9999FF" title "exp rapide SR", \
     sqrt(x)*(2**(-23)) w l lt 2 lc rgb "#b238cb" title "srqt(n)*u"