a = 2 ** (-23)
k1 = 1000
k2 = 10000
k3 = 100000
k4 = 1000000

set terminal png
set output 'plot/1.000001_multi.png'
set title 'multiplication with value 1.000001' 

set xlabel 'sequential addition (log(n))'
set ylabel 'relative error log'

set logscale x 10
set logscale y 10

SR = "./SR/SR_1.000001_1.stat"
SR_1000 = "./SR/SR_1.000001_1000_1.err"
SR_10000 = "./SR/SR_1.000001_10000_1.err"
SR_100000 = "./SR/SR_1.000001_100000_1.err"
SR_1000000 = "./SR/SR_1.000001_1000000_1.err" 
UR = "./UR/UR_1.000001_1.err"

f(x) = a * x ** 0.5

plot SR using 1:2:3 with linespoits title 'SR' lc rgb(72, 124, 109), \
     SR using 1:2:3 with yerrorbars title 'SR error bar' lc rgb(72, 124, 109), \
     SR_1000 using (k1):1 with points pointsize 1.2 lc rgb(48,87, 48), \
     SR_10000 using (k2):1 with points pointsize 1.2 lc rgb(48,87, 48), \
     SR_100000 using (k3):1 with points pointsize 1.2 lc rgb(48,87, 48), \
     SR_1000000 using (k4):1 with points pointsize 1.2 lc rgb(48,87, 48), \
     UR with linespoints title 'UR' lc rgb(137, 173, 234), \
     f(x) with lines title 'upper bound' lc rgb 'red' 


set terminal png
set output 'plot/1.000001_inner_product.png'
set title 'inner product with vectors value 1.000001' 

set xlabel 'vector size (log(n))'
set ylabel 'relative error log'

set logscale x 10
set logscale y 10

SR = "./SR/SR_1.000001_2.stat"
SR_1000 = "./SR/SR_1.000001_1000_2.err"
SR_10000 = "./SR/SR_1.000001_10000_2.err"
SR_100000 = "./SR/SR_1.000001_100000_2.err"
SR_1000000 = "./SR/SR_1.000001_1000000_2.err" 
UR = "./UR/UR_1.000001_2.err"

f(x) = a * (x * 2) ** 0.5

plot SR using 1:2:3 with linespoits title 'SR' lc rgb(72, 124, 109), \
     SR using 1:2:3 with yerrorbars title 'SR error bar' lc rgb(72, 124, 109), \
     SR_1000 using (k1):1 with points pointsize 1.2 lc rgb(48,87, 48), \
     SR_10000 using (k2):1 with points pointsize 1.2 lc rgb(48,87, 48), \
     SR_100000 using (k3):1 with points pointsize 1.2 lc rgb(48,87, 48), \
     SR_1000000 using (k4):1 with points pointsize 1.2 lc rgb(48,87, 48), \
     UR with linespoints title 'UR' lc rgb(137, 173, 234), \
     f(x) with lines title 'upper bound' lc rgb 'red' 


set terminal png
set output 'plot/1.000001_1000.png'
set title 'sum-product 1000 with vectors value 1.000001' 

set xlabel 'vector size (log(n))'
set ylabel 'relative error log'

set logscale x 10
set logscale y 10

SR = "./SR/SR_1.000001_1000.stat"
SR_1000 = "./SR/SR_1.000001_1000_1000.err"
SR_10000 = "./SR/SR_1.000001_10000_1000.err"
SR_100000 = "./SR/SR_1.000001_100000_1000.err"
SR_1000000 = "./SR/SR_1.000001_1000000_1000.err" 
UR = "./UR/UR_1.000001_1000.err"

f(x) = a * (x * 1000) ** 0.5

plot SR using 1:2:3 with linespoits title 'SR' lc rgb(72, 124, 109), \
     SR using 1:2:3 with yerrorbars title 'SR error bar' lc rgb(72, 124, 109), \
     SR_1000 using (k1):1 with points pointsize 1.2 lc rgb(48,87, 48), \
     SR_10000 using (k2):1 with points pointsize 1.2 lc rgb(48,87, 48), \
     SR_100000 using (k3):1 with points pointsize 1.2 lc rgb(48,87, 48), \
     SR_1000000 using (k4):1 with points pointsize 1.2 lc rgb(48,87, 48), \
     UR with linespoints title 'UR' lc rgb(137, 173, 234), \
     f(x) with lines title 'upper bound' lc rgb 'red' 


set terminal png
set output 'plot/1.000001_10000.png'
set title 'sum-product 10000 with vectors value 1.000001' 

set xlabel 'vector size (log(n))'
set ylabel 'relative error log'

set logscale x 10
set logscale y 10

SR = "./SR/SR_1.000001_10000.stat"
SR_1000 = "./SR/SR_1.000001_1000_10000.err"
SR_10000 = "./SR/SR_1.000001_10000_10000.err"
SR_100000 = "./SR/SR_1.000001_100000_10000.err"
SR_1000000 = "./SR/SR_1.000001_1000000_10000.err" 
UR = "./UR/UR_1.000001_10000.err"

f(x) = a * (x * 10000) ** 0.5

plot SR using 1:2:3 with linespoits title 'SR' lc rgb(72, 124, 109), \
     SR using 1:2:3 with yerrorbars title 'SR error bar' lc rgb(72, 124, 109), \
     SR_1000 using (k1):1 with points pointsize 1.2 lc rgb(48,87, 48), \
     SR_10000 using (k2):1 with points pointsize 1.2 lc rgb(48,87, 48), \
     SR_100000 using (k3):1 with points pointsize 1.2 lc rgb(48,87, 48), \
     SR_1000000 using (k4):1 with points pointsize 1.2 lc rgb(48,87, 48), \
     UR with linespoints title 'UR' lc rgb(137, 173, 234), \
     f(x) with lines title 'upper bound' lc rgb 'red' 



set terminal png
set output 'plot/1.000001_100000.png'
set title 'sum-product 100000 with vectors value 1.000001' 

set xlabel 'vector size (log(n))'
set ylabel 'relative error log'

set logscale x 10
set logscale y 10

SR = "./SR/SR_1.000001_100000.stat"
SR_1000 = "./SR/SR_1.000001_1000_100000.err"
SR_10000 = "./SR/SR_1.000001_10000_100000.err"
SR_100000 = "./SR/SR_1.000001_100000_100000.err"
SR_1000000 = "./SR/SR_1.000001_1000000_100000.err" 
UR = "./UR/UR_1.000001_100000.err"

f(x) = a * (x * 100000) ** 0.5

plot SR using 1:2:3 with linespoits title 'SR' lc rgb(72, 124, 109), \
     SR using 1:2:3 with yerrorbars title 'SR error bar' lc rgb(72, 124, 109), \
     SR_1000 using (k1):1 with points pointsize 1.2 lc rgb(48,87, 48), \
     SR_10000 using (k2):1 with points pointsize 1.2 lc rgb(48,87, 48), \
     SR_100000 using (k3):1 with points pointsize 1.2 lc rgb(48,87, 48), \
     SR_1000000 using (k4):1 with points pointsize 1.2 lc rgb(48,87, 48), \
     UR with linespoints title 'UR' lc rgb(137, 173, 234), \
     f(x) with lines title 'upper bound' lc rgb 'red' 


set terminal png
set output 'plot/1.000001_1000000.png'
set title 'sum-product 1000000 with vectors value 1.000001' 

set xlabel 'vector size (log(n))'
set ylabel 'relative error log'

set logscale x 10
set logscale y 10

SR = "./SR/SR_1.000001_1000000.stat"
SR_1000 = "./SR/SR_1.000001_1000_1000000.err"
SR_10000 = "./SR/SR_1.000001_10000_1000000.err"
SR_100000 = "./SR/SR_1.000001_100000_1000000.err"
SR_1000000 = "./SR/SR_1.000001_1000000_1000000.err" 
UR = "./UR/UR_1.000001_1000000.err"

f(x) = a * (x * 1000000) ** 0.5

plot SR using 1:2:3 with linespoits title 'SR' lc rgb(72, 124, 109), \
     SR using 1:2:3 with yerrorbars title 'SR error bar' lc rgb(72, 124, 109), \
     SR_1000 using (k1):1 with points pointsize 1.2 lc rgb(48,87, 48), \
     SR_10000 using (k2):1 with points pointsize 1.2 lc rgb(48,87, 48), \
     SR_100000 using (k3):1 with points pointsize 1.2 lc rgb(48,87, 48), \
     SR_1000000 using (k4):1 with points pointsize 1.2 lc rgb(48,87, 48), \
     UR with linespoints title 'UR' lc rgb(137, 173, 234), \
     f(x) with lines title 'upper bound' lc rgb 'red' 