# Naif iteratif
set terminal png
set output 'plot_ni.png'

set size square
set grid
set xlabel 'Puissance (n)'
set ylabel 'Erreur relative'

NR = "../results0/naif_iter/URstat.dat"
SR = "../results0/naif_iter/SRstat.dat"

f(x) = a*x**2 + b*x + c
fit f(x) SR using 1:2 via a, b, c

plot NR with points pointsize 1.2 title "NR", \
     SR with points pointsize 1.2 title "SR", \
     f(x) with lines title "Courbe de régression SR"

# Naif récursif
set terminal png   
set output 'plot_nr.png'  

set size square
set grid
set xlabel 'Puissance (n)'        
set ylabel 'Erreur relative' 

NR = "../results0/naif_rec/URstat.dat"
SR = "../results0/naif_rec/SRstat.dat"

f(x) = a*x**2 + b*x + c
fit f(x) SR using 1:2 via a, b, c

plot NR with points pointsize 1.2 title "NR", \
     SR with points pointsize 1.2 title "SR", \
     f(x) with lines title "Courbe de régression SR"

# Rapide itératif
set terminal png   
set output 'plot_ri.png'  

set size square
set grid
set xlabel 'Puissance (n)'        
set ylabel 'Erreur relative'  

NR = "../results0/rapide_iter/URstat.dat"
SR = "../results0/rapide_iter/SRstat.dat"

f(x) = a*x**2 + b*x + c
fit f(x) SR using 1:2 via a, b, c

plot NR with points pointsize 1.2 title "NR", \
     SR with points pointsize 1.2 title "SR", \
     f(x) with lines title "Courbe de régression SR"

# Rapide récursif
set terminal png   
set output 'plot_rr.png'  

set size square
set grid
set xlabel 'Puissance (n)'        
set ylabel 'Erreur relative'  

NR = "../results0/rapide_rec/URstat.dat"
SR = "../results0/rapide_rec/SRstat.dat"

f(x) = a*x**2 + b*x + c
fit f(x) SR using 1:2 via a, b, c

plot NR with points pointsize 1.2 title "NR", \
     SR with points pointsize 1.2 title "SR", \
     f(x) with lines title "Courbe de régression SR"