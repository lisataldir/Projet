a = 2 ** (-23)

set terminal png
set output 'plot/1.000001_multi.png'
set title 'multiplication with value 1.000001' 

set xlabel 'sequential addition (log(n))'
set ylabel 'relative error log'

set logscale x 10
set logscale y 10

SR = "./SR/SR_1.000001_1.stat"
UR = "./UR/UR_1.000001_1.err"

f(x) = a * x ** 0.5

plot SR using 1:2 with points pointsize 1.2 title 'SR', \
     UR with points pointsize 1.2 title 'UR', \
     f(x) with lines title 'upper bound' 


set terminal png
set output 'plot/1.000001_inner_product.png'
set title 'inner product with vectors value 1.000001' 

set xlabel 'vector size (log(n))'
set ylabel 'relative error log'

set logscale x 10
set logscale y 10

SR = "./SR/SR_1.000001_2.stat"
UR = "./UR/UR_1.000001_2.err"

f(x) = a * (x * 2) ** 0.5

plot SR using 1:2 with points pointsize 1.2 title 'SR', \
     UR with points pointsize 1.2 title 'UR', \
     f(x) with lines title 'upper bound' 


set terminal png
set output 'plot/1.000001_1000.png'
set title 'sum-product 1000 with vectors value 1.000001' 

set xlabel 'vector size (log(n))'
set ylabel 'relative error log'

set logscale x 10
set logscale y 10

SR = "./SR/SR_1.000001_1000.stat"
UR = "./UR/UR_1.000001_1000.err"

f(x) = a * (x * 1000) ** 0.5

plot SR using 1:2 with points pointsize 1.2 title 'SR', \
     UR with points pointsize 1.2 title 'UR', \
     f(x) with lines title 'upper bound' 


set terminal png
set output 'plot/1.000001_10000.png'
set title 'sum-product 10000 with vectors value 1.000001' 

set xlabel 'vector size (log(n))'
set ylabel 'relative error log'

set logscale x 10
set logscale y 10

SR = "./SR/SR_1.000001_10000.stat"
UR = "./UR/UR_1.000001_10000.err"

f(x) = a * (x * 10000) ** 0.5

plot SR using 1:2 with points pointsize 1.2 title 'SR', \
     UR with points pointsize 1.2 title 'UR', \
     f(x) with lines title 'upper bound' 



set terminal png
set output 'plot/1.000001_100000.png'
set title 'sum-product 100000 with vectors value 1.000001' 

set xlabel 'vector size (log(n))'
set ylabel 'relative error log'

set logscale x 10
set logscale y 10

SR = "./SR/SR_1.000001_100000.stat"
UR = "./UR/UR_1.000001_100000.err"

f(x) = a * (x * 100000) ** 0.5

plot SR using 1:2 with points pointsize 1.2 title 'SR', \
     UR with points pointsize 1.2 title 'UR', \
     f(x) with lines title 'upper bound' 


set terminal png
set output 'plot/1.000001_1000000.png'
set title 'sum-product 1000000 with vectors value 1.000001' 

set xlabel 'vector size (log(n))'
set ylabel 'relative error log'

set logscale x 10
set logscale y 10

SR = "./SR/SR_1.000001_1000000.stat"
UR = "./UR/UR_1.000001_1000000.err"

f(x) = a * (x * 1000000) ** 0.5

plot SR using 1:2 with points pointsize 1.2 title 'SR', \
     UR with points pointsize 1.2 title 'UR', \
     f(x) with lines title 'upper bound' 