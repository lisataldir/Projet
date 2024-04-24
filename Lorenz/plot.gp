set terminal pngcairo size 900,600 enhanced font 'Verdana,10'
set output 'lorenz_SR_32.png'
set object 1 rectangle from screen 0,0 to screen 1,1 fillcolor rgb 'black' behind
set xlabel "X axis" textcolor rgb 'white'
set ylabel "Y axis" textcolor rgb 'white'
set zlabel "Z axis" textcolor rgb 'white'
set border linewidth 0.8 linecolor rgb 'white'
set xtics textcolor rgb 'white'
set ytics textcolor rgb 'white'
set ztics textcolor rgb 'white'
set grid lc rgb 'white'
set view 60, 30, 1, 1
splot "results/SR_32.dat" using 1:2:3 with lines linecolor '#FFD700' notitle

set terminal pngcairo size 900,600 enhanced font 'Verdana,10'
set object 1 rectangle from screen 0,0 to screen 1,1 fillcolor rgb 'black' behind
set output 'lorenz_RN_32.png'
set xlabel "X axis" textcolor rgb 'white'
set ylabel "Y axis" textcolor rgb 'white'
set zlabel "Z axis" textcolor rgb 'white'
set border linewidth 0.8 linecolor rgb 'white'
set xtics textcolor rgb 'white'
set ytics textcolor rgb 'white'
set ztics textcolor rgb 'white'
set grid lc rgb 'white'
set view 60, 30, 1, 1
splot "results/RN_32.dat" using 1:2:3 with lines linecolor '#FFD700' notitle 

set terminal pngcairo size 900,600 enhanced font 'Verdana,10'
set output 'lorenz_SR_64.png'
set object 1 rectangle from screen 0,0 to screen 1,1 fillcolor rgb 'black' behind
set xlabel "X axis" textcolor rgb 'white'
set ylabel "Y axis" textcolor rgb 'white'
set zlabel "Z axis" textcolor rgb 'white'
set border linewidth 0.8 linecolor rgb 'white'
set xtics textcolor rgb 'white'
set ytics textcolor rgb 'white'
set ztics textcolor rgb 'white'
set grid lc rgb 'white'
set view 60, 30, 1, 1
splot "results/SR_64.dat" using 1:2:3 with lines linecolor '#FFD700' notitle

set terminal pngcairo size 900,600 enhanced font 'Verdana,10'
set object 1 rectangle from screen 0,0 to screen 1,1 fillcolor rgb 'black' behind
set output 'lorenz_RN_64.png'
set xlabel "X axis" textcolor rgb 'white'
set ylabel "Y axis" textcolor rgb 'white'
set zlabel "Z axis" textcolor rgb 'white'
set border linewidth 0.8 linecolor rgb 'white'
set xtics textcolor rgb 'white'
set ytics textcolor rgb 'white'
set ztics textcolor rgb 'white'
set grid lc rgb 'white'
set view 60, 30, 1, 1
splot "results/RN_64.dat" using 1:2:3 with lines linecolor '#FFD700' notitle 