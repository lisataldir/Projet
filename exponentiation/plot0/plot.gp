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

f(x) = a*x**2 + b*x + c
fit f(x) SR_ni using 0:1 via a, b, c
fbis(x) = a*x**2 + b*x + c
fit fbis(x) SR_ri using 0:1 via a, b, c

plot NR_ni with points pointsize 1.2 title "NR avec exp naif", \
     SR_ni with points pointsize 1.2 title "SR avec exp naif", \
     f(x) with lines title "Courbe de régression SR avec exp naif", \
     fbis(x) with lines title "Courbe de régression SR avec exp rapide", \
     NR_ri with points pointsize 1.2 title "NR avec exp rapide", \
     SR_ri with points pointsize 1.2 title "SR avec exp rapide",

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

f(x) = a*x**2 + b*x + c
fit f(x) SR_nr using 0:1 via a, b, c
fbis(x) = a*x**2 + b*x + c
fit fbis(x) SR_rr using 0:1 via a, b, c

plot NR_nr with points pointsize 1.2 title "NR avec exp naif", \
     SR_nr with points pointsize 1.2 title "SR avec exp naif", \
     f(x) with lines title "Courbe de régression SR avec exp naif", \
     fbis(x) with lines title "Courbe de régression SR avec exp rapide", \
     NR_rr with points pointsize 1.2 title "NR avec exp rapide", \
     SR_rr with points pointsize 1.2 title "SR avec exp rapide",