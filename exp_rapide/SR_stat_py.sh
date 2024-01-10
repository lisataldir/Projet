#!/bin/bash

a=UR
b=SR
c=error_c
d=error_py


# docker exec 666c0edb1aa429dae606a82a52181667fa6eea4e4cff12fd974936bf5803ab02 /bin/bash

verificarlo-c stat.c -o stat -lm
iter1=$(echo ./"$d"/"${b}"_0.995_err_iter_{1..20}.dat ./"$d"/"${b}"_0.995_err_iter.dat)
echo "Files to be used as arguments: $iter1"
VFC_BACKENDS="libinterflop_mca.so" ./stat $iter1
rm -rf stat.o stat


verificarlo-c stat.c -o stat -lm
rec1=$(echo ./"$d"/"${b}"_0.995_err_rec_{1..20}.dat ./"$d"/"${b}"_0.995_err_rec.dat)
echo "Files to be used as arguments: $rec1"
VFC_BACKENDS="libinterflop_mca.so" ./stat $rec1
rm -rf stat.o stat


verificarlo-c stat.c -o stat -lm
iter2=$(echo ./"$d"/"${b}"_1.11_err_iter_{1..20}.dat ./"$d"/"${b}"_1.11_err_iter.dat)
echo "Files to be used as arguments: $iter2"
VFC_BACKENDS="libinterflop_mca.so" ./stat $iter2
rm -rf stat.o stat


verificarlo-c stat.c -o stat -lm
rec2=$(echo ./"$d"/"${b}"_1.11_err_rec_{1..20}.dat ./"$d"/"${b}"_1.11_err_rec.dat)
echo "Files to be used as arguments: $rec2"
VFC_BACKENDS="libinterflop_mca.so" ./stat $rec2
rm -rf stat.o stat


verificarlo-c stat.c -o stat -lm
iter3=$(echo ./"$d"/"${b}"_1.34907566301_err_iter_{1..20}.dat ./"$d"/"${b}"_1.34907566301_err_iter.dat)
echo "Files to be used as arguments: $iter3"
VFC_BACKENDS="libinterflop_mca.so" ./stat $iter3
rm -rf stat.o stat


verificarlo-c stat.c -o stat -lm
rec3=$(echo ./"$d"/"${b}"_1.34907566301_err_rec_{1..20}.dat ./"$d"/"${b}"_1.34907566301_err_rec.dat)
echo "Files to be used as arguments: $rec3"
VFC_BACKENDS="libinterflop_mca.so" ./stat $rec3
rm -rf stat.o stat


verificarlo-c stat.c -o stat -lm
iter4=$(echo ./"$d"/"${b}"_2.0_err_iter_{1..20}.dat ./"$d"/"${b}"_2.0_err_iter.dat)
echo "Files to be used as arguments: $iter4"
VFC_BACKENDS="libinterflop_mca.so" ./stat $iter4
rm -rf stat.o stat


verificarlo-c stat.c -o stat -lm
rec4=$(echo ./"$d"/"${b}"_2.0_err_rec_{1..20}.dat ./"$d"/"${b}"_2.0_err_rec.dat)
echo "Files to be used as arguments: $rec4"
VFC_BACKENDS="libinterflop_mca.so" ./stat $rec4
rm -rf stat.o stat
