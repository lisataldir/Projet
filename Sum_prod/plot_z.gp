a = 2 ** (-23)
k1 = 100
k2 = 1000
k3 = 10000
k4 = 100000

set terminal png
set key left
set format y '%.0t × 10^%T'
set format x '%.0t × 10^%T'


set output 'plot/1.00010002_multi.png'
set title 'multiplication with value 1.00010002' 

set xlabel 'sequential addition (log(n))'
set ylabel 'relative error log'

set logscale x 10
set logscale y 10

SR = "./SR/SR_1.00010002_1.stat"
SR_100 = "./SR/SR_1.00010002_100_1.err"
SR_1000 = "./SR/SR_1.00010002_1000_1.err"
SR_10000 = "./SR/SR_1.00010002_10000_1.err"
SR_100000 = "./SR/SR_1.00010002_100000_1.err" 
UR = "./UR/UR_1.00010002_1.err"

f(x) = a * x ** 0.5

plot SR using 1:2:3 with linespoints title 'SR' lc rgb(0, 153, 153), \
     SR using 1:2:3 with yerrorbars title 'SR error bar' lc rgb(0, 153, 153), \
     SR_100 using (k1):1 with points pointsize 1.2 lc rgb(128, 128, 128) notitle, \
     SR_1000 using (k2):1 with points pointsize 1.2 lc rgb(128, 128, 128) notitle, \
     SR_10000 using (k3):1 with points pointsize 1.2 lc rgb(128, 128, 128) notitle, \
     SR_100000 using (k4):1 with points pointsize 1.2 lc rgb(128, 128, 128) notitle, \
     UR with linespoints title 'UR' lc rgb 'violet', \
     f(x) with lines title 'upper bound' lc rgb 'red' 


set output 'plot/1.00010002_inner_product.png'
set title 'inner product with vectors value 1.00010002' 

set xlabel 'vector size (log(n))'
set ylabel 'relative error log'

set logscale x 10
set logscale y 10

SR = "./SR/SR_1.00010002_2.stat"
SR_100 = "./SR/SR_1.00010002_100_2.err"
SR_1000 = "./SR/SR_1.00010002_1000_2.err"
SR_10000 = "./SR/SR_1.00010002_10000_2.err"
SR_100000 = "./SR/SR_1.00010002_100000_2.err" 
UR = "./UR/UR_1.00010002_2.err"

f(x) = a * (x * 2) ** 0.5

plot SR using 1:2:3 with linespoints title 'SR' lc rgb(0, 153, 153), \
     SR using 1:2:3 with yerrorbars title 'SR error bar' lc rgb(0, 153, 153), \
     SR_100 using (k1):1 with points pointsize 1.2 lc rgb(128, 128, 128) notitle, \
     SR_1000 using (k2):1 with points pointsize 1.2 lc rgb(128, 128, 128) notitle, \
     SR_10000 using (k3):1 with points pointsize 1.2 lc rgb(128, 128, 128) notitle, \
     SR_100000 using (k4):1 with points pointsize 1.2 lc rgb(128, 128, 128) notitle, \
     UR with linespoints title 'UR' lc rgb 'violet', \
     f(x) with lines title 'upper bound' lc rgb 'red' 


set output 'plot/1.00010002_100.png'
set title 'sum-product 100 with vectors value 1.00010002' 

set xlabel 'vector size (log(n))'
set ylabel 'relative error log'

set logscale x 10
set logscale y 10

SR = "./SR/SR_1.00010002_100.stat"
SR_100 = "./SR/SR_1.00010002_100_100.err"
SR_1000 = "./SR/SR_1.00010002_1000_100.err"
SR_10000 = "./SR/SR_1.00010002_10000_100.err"
SR_100000 = "./SR/SR_1.00010002_100000_100.err" 
UR = "./UR/UR_1.00010002_100.err"

f(x) = a * (x * 100) ** 0.5

plot SR using 1:2:3 with linespoints title 'SR' lc rgb(0, 153, 153), \
     SR using 1:2:3 with yerrorbars title 'SR error bar' lc rgb(0, 153, 153), \
     SR_100 using (k1):1 with points pointsize 1.2 lc rgb(128, 128, 128) notitle, \
     SR_1000 using (k2):1 with points pointsize 1.2 lc rgb(128, 128, 128) notitle, \
     SR_10000 using (k3):1 with points pointsize 1.2 lc rgb(128, 128, 128) notitle, \
     SR_100000 using (k4):1 with points pointsize 1.2 lc rgb(128, 128, 128) notitle, \
     UR with linespoints title 'UR' lc rgb 'violet', \
     f(x) with lines title 'upper bound' lc rgb 'red' 


set output 'plot/1.00010002_1000.png'
set title 'sum-product 1000 with vectors value 1.00010002' 

set xlabel 'vector size (log(n))'
set ylabel 'relative error log'

set logscale x 10
set logscale y 10

SR = "./SR/SR_1.00010002_1000.stat"
SR_100 = "./SR/SR_1.00010002_100_1000.err"
SR_1000 = "./SR/SR_1.00010002_1000_1000.err"
SR_10000 = "./SR/SR_1.00010002_10000_1000.err"
SR_100000 = "./SR/SR_1.00010002_100000_1000.err" 
UR = "./UR/UR_1.00010002_1000.err"

f(x) = a * (x * 1000) ** 0.5

plot SR using 1:2:3 with linespoints title 'SR' lc rgb(0, 153, 153), \
     SR using 1:2:3 with yerrorbars title 'SR error bar' lc rgb(0, 153, 153), \
     SR_100 using (k1):1 with points pointsize 1.2 lc rgb(128, 128, 128) notitle, \
     SR_1000 using (k2):1 with points pointsize 1.2 lc rgb(128, 128, 128) notitle, \
     SR_10000 using (k3):1 with points pointsize 1.2 lc rgb(128, 128, 128) notitle, \
     SR_100000 using (k4):1 with points pointsize 1.2 lc rgb(128, 128, 128) notitle, \
     UR with linespoints title 'UR' lc rgb 'violet', \
     f(x) with lines title 'upper bound' lc rgb 'red' 



set output 'plot/1.00010002_10000.png'
set title 'sum-product 10000 with vectors value 1.00010002' 

set xlabel 'vector size (log(n))'
set ylabel 'relative error log'

set logscale x 10
set logscale y 10

SR = "./SR/SR_1.00010002_10000.stat"
SR_100 = "./SR/SR_1.00010002_100_10000.err"
SR_1000 = "./SR/SR_1.00010002_1000_10000.err"
SR_10000 = "./SR/SR_1.00010002_10000_10000.err"
SR_100000 = "./SR/SR_1.00010002_100000_10000.err" 
UR = "./UR/UR_1.00010002_10000.err"

f(x) = a * (x * 10000) ** 0.5

plot SR using 1:2:3 with linespoints title 'SR' lc rgb(0, 153, 153), \
     SR using 1:2:3 with yerrorbars title 'SR error bar' lc rgb(0, 153, 153), \
     SR_100 using (k1):1 with points pointsize 1.2 lc rgb(128, 128, 128) notitle, \
     SR_1000 using (k2):1 with points pointsize 1.2 lc rgb(128, 128, 128) notitle, \
     SR_10000 using (k3):1 with points pointsize 1.2 lc rgb(128, 128, 128) notitle, \
     SR_100000 using (k4):1 with points pointsize 1.2 lc rgb(128, 128, 128) notitle, \
     UR with linespoints title 'UR' lc rgb 'violet', \
     f(x) with lines title 'upper bound' lc rgb 'red' 


set output 'plot/1.00010002_100000.png'
set title 'sum-product 100000 with vectors value 1.00010002' 

set xlabel 'vector size (log(n))'
set ylabel 'relative error log'

set logscale x 10
set logscale y 10

SR = "./SR/SR_1.00010002_100000.stat"
SR_100 = "./SR/SR_1.00010002_100_100000.err"
SR_1000 = "./SR/SR_1.00010002_1000_100000.err"
SR_10000 = "./SR/SR_1.00010002_10000_100000.err"
SR_100000 = "./SR/SR_1.00010002_100000_100000.err" 
UR = "./UR/UR_1.00010002_100000.err"

f(x) = a * (x * 100000) ** 0.5

plot SR using 1:2:3 with linespoints title 'SR' lc rgb(0, 153, 153), \
     SR using 1:2:3 with yerrorbars title 'SR error bar' lc rgb(0, 153, 153), \
     SR_100 using (k1):1 with points pointsize 1.2 lc rgb(128, 128, 128) notitle, \
     SR_1000 using (k2):1 with points pointsize 1.2 lc rgb(128, 128, 128) notitle, \
     SR_10000 using (k3):1 with points pointsize 1.2 lc rgb(128, 128, 128) notitle, \
     SR_100000 using (k4):1 with points pointsize 1.2 lc rgb(128, 128, 128) notitle, \
     UR with linespoints title 'UR' lc rgb 'violet', \
     f(x) with lines title 'upper bound' lc rgb 'red' 