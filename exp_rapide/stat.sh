#!/bin/bash

a=UR
b=SR
c=results
d=error_py


#docker exec 666c0edb1aa429dae606a82a52181667fa6eea4e4cff12fd974936bf5803ab02 /bin/bash

verificarlo-c stat.c -o stat -lm

iter1=$(echo ./"$c"/"${b}"_0.995_err_iter_{1..20}.dat ./"$c"/"${b}"_0.995_err_iter.dat)
echo "Files to be used as arguments: $iter1"
VFC_BACKENDS="libinterflop_mca.so" ./stat $iter1


rec1=$(echo ./"$c"/"${b}"_0.995_err_rec_{1..20}.dat ./"$c"/"${b}"_0.995_err_rec.dat)
echo "Files to be used as arguments: $rec1"
VFC_BACKENDS="libinterflop_mca.so" ./stat $rec1


iter2=$(echo ./"$c"/"${b}"_1.11_err_iter_{1..20}.dat ./"$c"/"${b}"_1.11_err_iter.dat)
echo "Files to be used as arguments: $iter2"
VFC_BACKENDS="libinterflop_mca.so" ./stat $iter2


rec2=$(echo ./"$c"/"${b}"_1.11_err_rec_{1..20}.dat ./"$c"/"${b}"_1.11_err_rec.dat)
echo "Files to be used as arguments: $rec2"
VFC_BACKENDS="libinterflop_mca.so" ./stat $rec2


iter3=$(echo ./"$c"/"${b}"_1.34907566301_err_iter_{1..20}.dat ./"$c"/"${b}"_1.34907566301_err_iter.dat)
echo "Files to be used as arguments: $iter3"
VFC_BACKENDS="libinterflop_mca.so" ./stat $iter3


rec3=$(echo ./"$c"/"${b}"_1.34907566301_err_rec_{1..20}.dat ./"$c"/"${b}"_1.34907566301_err_rec.dat)
echo "Files to be used as arguments: $rec3"
VFC_BACKENDS="libinterflop_mca.so" ./stat $rec3


iter4=$(echo ./"$c"/"${b}"_2.0_err_iter_{1..20}.dat ./"$c"/"${b}"_2.0_err_iter.dat)
echo "Files to be used as arguments: $iter4"
VFC_BACKENDS="libinterflop_mca.so" ./stat $iter4


rec4=$(echo ./"$c"/"${b}"_2.0_err_rec_{1..20}.dat ./"$c"/"${b}"_2.0_err_rec.dat)
echo "Files to be used as arguments: $rec4"
VFC_BACKENDS="libinterflop_mca.so" ./stat $rec4

rm -rf stat.o stat
