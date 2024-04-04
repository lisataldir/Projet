set terminal pngcairo enhanced font 'Verdana,10'
set output 'lorenz_SR.png'
set title "Lorenz SR"
set xlabel "X axis"
set ylabel "Y axis"
set zlabel "Z axis"
set grid
set view 60, 30, 1, 1
splot "results/SR.dat" using 1:2:3 with lines notitle

set terminal pngcairo enhanced font 'Verdana,10'
set output 'lorenz_RN.png'
set title "Lorenz RN"
set xlabel "X axis"
set ylabel "Y axis"
set zlabel "Z axis"
set grid
set view 60, 30, 1, 1
splot "results/RN.dat" using 1:2:3 with lines notitle
