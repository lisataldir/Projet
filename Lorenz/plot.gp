set terminal pngcairo size 900,600 enhanced font 'Verdana,10'
set output 'lorenz_SR_32.png'
set xlabel "X axis"  
set ylabel "Y axis"  
set zlabel "Z axis"  
set grid
set view 60, 30, 1, 1
splot "results/SR_32.dat" using 1:2:3 with lines notitle

set terminal pngcairo size 900,600 enhanced font 'Verdana,10'
set output 'lorenz_RN_32.png'
set xlabel "X axis"  
set ylabel "Y axis"  
set zlabel "Z axis"  
set grid
set view 60, 30, 1, 1
splot "results/RN_32.dat" using 1:2:3 with lines notitle 

set terminal pngcairo size 900,600 enhanced font 'Verdana,10'
set output 'lorenz_SR_64.png'
set xlabel "X axis"  
set ylabel "Y axis"  
set zlabel "Z axis"  
set grid
set view 60, 30, 1, 1
splot "results/SR_64.dat" using 1:2:3 with lines notitle

set terminal pngcairo size 900,600 enhanced font 'Verdana,10'
set output 'lorenz_RN_64.png'
set xlabel "X axis" 
set ylabel "Y axis" 
set zlabel "Z axis"  
set grid
set view 60, 30, 1, 1
splot "results/RN_64.dat" using 1:2:3 with lines notitle 