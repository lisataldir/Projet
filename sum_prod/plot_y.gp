set terminal png
set output 'plot/0.999999_multi.png'
set title 'multiplication with value 0.999999' 

set xlabel 'sequential addition (n)'
set ylabel 'relative error'

SR = "./SR/SR_0.999999_1.stat"
UR = "./UR/UR_0.999999_1.err"

plot SR using 1:2 with points pointsize 1.2 title 'SR', \
     UR with points pointsize 1.2 title 'UR' 


set terminal png
set output 'plot/0.999999_inner_product.png'
set title 'inner product with vectors value 0.999999' 

set xlabel 'vector size (n)'
set ylabel 'relative error'

SR = "./SR/SR_0.999999_2.stat"
UR = "./UR/UR_0.999999_2.err"

plot SR using 1:2 with points pointsize 1.2 title 'SR', \
     UR with points pointsize 1.2 title 'UR' 


set terminal png
set output 'plot/0.999999_1000.png'
set title 'sum-product 1000 with vectors value 0.999999' 

set xlabel 'vector size (n)'
set ylabel 'relative error'

SR = "./SR/SR_0.999999_1000.stat"
UR = "./UR/UR_0.999999_1000.err"

plot SR using 1:2 with points pointsize 1.2 title 'SR', \
     UR with points pointsize 1.2 title 'UR' 


set terminal png
set output 'plot/0.999999_10000.png'
set title 'sum-product 10000 with vectors value 0.999999' 

set xlabel 'vector size (n)'
set ylabel 'relative error'

SR = "./SR/SR_0.999999_10000.stat"
UR = "./UR/UR_0.999999_10000.err"

plot SR using 1:2 with points pointsize 1.2 title 'SR', \
     UR with points pointsize 1.2 title 'UR' 



set terminal png
set output 'plot/0.999999_100000.png'
set title 'sum-product 100000 with vectors value 0.999999' 

set xlabel 'vector size (n)'
set ylabel 'relative error'

SR = "./SR/SR_0.999999_100000.stat"
UR = "./UR/UR_0.999999_100000.err"

plot SR using 1:2 with points pointsize 1.2 title 'SR', \
     UR with points pointsize 1.2 title 'UR' 


set terminal png
set output 'plot/0.999999_1000000.png'
set title 'sum-product 1000000 with vectors value 0.999999' 

set xlabel 'vector size (n)'
set ylabel 'relative error'

SR = "./SR/SR_0.999999_1000000.stat"
UR = "./UR/UR_0.999999_1000000.err"

plot SR using 1:2 with points pointsize 1.2 title 'SR', \
     UR with points pointsize 1.2 title 'UR' 