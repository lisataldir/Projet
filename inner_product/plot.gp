set terminal png
set output 'plot/random.png'
set title 'inner product with randomly generated vectors' 

set xlabel 'vector size (n)'
set ylabel 'relative error'

SR = "./SR/SR_r.stat"
UR = "./UR/UR_r.err"

plot SR using 1:2:3 with yerrorbars title 'SR', \
     UR with points pointsize 1.2 title 'UR' 


set terminal png
set output 'plot/1.1.png'
set title 'inner product with constant 1.1'

set xlabel 'vector size (n)'
set ylabel 'relative error'

SR = "./SR/SR_1.1.stat"
UR = "./UR/UR_1.1.err"

plot SR using 1:2:3 with yerrorbars title 'SR', \
     UR with points pointsize 1.2 title 'UR' 


set terminal png
set output 'plot/1.27987347.png'
set title 'inner product with constant 1.27987347'

set xlabel 'vector size (n)'
set ylabel 'relative error'

SR = "./SR/SR_1.27987347.stat"
UR = "./UR/UR_1.27987347.err"

plot SR using 1:2:3 with yerrorbars title 'SR', \
     UR with points pointsize 1.2 title 'UR' 


set terminal png
set output 'plot/1.318974023.png'
set title 'inner product with constant 1.318974023'

set xlabel 'vector size (n)'
set ylabel 'relative error'

SR = "./SR/SR_1.318974023.stat"
UR = "./UR/UR_1.318974023.err"

plot SR using 1:2:3 with yerrorbars title 'SR', \
     UR with points pointsize 1.2 title 'UR' 


set terminal png
set output 'plot/1.34907566301.png'
set title 'inner product with constant 1.34907566301'

set xlabel 'vector size (n)'
set ylabel 'relative error'

SR = "./SR/SR_1.34907566301.stat"
UR = "./UR/UR_1.34907566301.err"

plot SR using 1:2:3 with yerrorbars title 'SR', \
     UR with points pointsize 1.2 title 'UR' 


set terminal png
set output 'plot/2.png'
set title 'inner product with constant 2'

set xlabel 'vector size (n)'
set ylabel 'relative error'

SR = "./SR/SR_2.stat"
UR = "./UR/UR_2.err"

plot SR using 1:2:3 with yerrorbars title 'SR', \
     UR with points pointsize 1.2 title 'UR' 

