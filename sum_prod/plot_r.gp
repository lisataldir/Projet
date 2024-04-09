set terminal png
set output 'plot/random_multi.png'
set title 'multiplication with randomly generated values' 

set xlabel 'sequential addition (n)'
set ylabel 'relative error'

SR = "./SR/SR_r_1.stat"
UR = "./UR/UR_r_1.err"

plot SR using 1:2 with points pointsize 1.2 title 'SR', \
     UR with points pointsize 1.2 title 'UR' 


set terminal png
set output 'plot/random_inner_product.png'
set title 'inner product with randomly generated vector' 

set xlabel 'vector size (n)'
set ylabel 'relative error'

SR = "./SR/SR_r_2.stat"
UR = "./UR/UR_r_2.err"

plot SR using 1:2 with points pointsize 1.2 title 'SR', \
     UR with points pointsize 1.2 title 'UR' 


set terminal png
set output 'plot/random_1000.png'
set title 'sum-product 1000 with randomly generated vector' 

set xlabel 'vector size (n)'
set ylabel 'relative error'

SR = "./SR/SR_r_1000.stat"
UR = "./UR/UR_r_1000.err"

plot SR using 1:2 with points pointsize 1.2 title 'SR', \
     UR with points pointsize 1.2 title 'UR' 


set terminal png
set output 'plot/random_10000.png'
set title 'sum-product 10000 with randomly generated vector' 

set xlabel 'vector size (n)'
set ylabel 'relative error'

SR = "./SR/SR_r_10000.stat"
UR = "./UR/UR_r_10000.err"

plot SR using 1:2 with points pointsize 1.2 title 'SR', \
     UR with points pointsize 1.2 title 'UR' 



set terminal png
set output 'plot/random_100000.png'
set title 'sum-product 100000 with randomly generated vector' 

set xlabel 'vector size (n)'
set ylabel 'relative error'

SR = "./SR/SR_r_100000.stat"
UR = "./UR/UR_r_100000.err"

plot SR using 1:2 with points pointsize 1.2 title 'SR', \
     UR with points pointsize 1.2 title 'UR' 


set terminal png
set output 'plot/random_1000000.png'
set title 'sum-product 1000000 with randomly generated vector' 

set xlabel 'vector size (n)'
set ylabel 'relative error'

SR = "./SR/SR_r_1000000.stat"
UR = "./UR/UR_r_1000000.err"

plot SR using 1:2 with points pointsize 1.2 title 'SR', \
     UR with points pointsize 1.2 title 'UR' 