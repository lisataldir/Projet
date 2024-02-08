#!/bin/bash

a=UR
b=SR
c=error_c
d=error_py


# docker exec 666c0edb1aa429dae606a82a52181667fa6eea4e4cff12fd974936bf5803ab02 /bin/bash

make stat
iter1=$(echo ./"$d"/"${a}"_0.995_err_iter_{1..20}.dat ./"$d"/"${a}"_0.995_err_iter.dat)
echo "Files to be used as arguments: $iter1"
./stat $iter1
make clean


make stat
rec1=$(echo ./"$d"/"${a}"_0.995_err_rec_{1..20}.dat ./"$d"/"${a}"_0.995_err_rec.dat)
echo "Files to be used as arguments: $rec1"
./stat $rec1
make clean


make stat
iter2=$(echo ./"$d"/"${a}"_1.11_err_iter_{1..20}.dat ./"$d"/"${a}"_1.11_err_iter.dat)
echo "Files to be used as arguments: $iter2"
./stat $iter2
make clean


make stat
rec2=$(echo ./"$d"/"${a}"_1.11_err_rec_{1..20}.dat ./"$d"/"${a}"_1.11_err_rec.dat)
echo "Files to be used as arguments: $rec2"
./stat $rec2
make clean


make stat
iter3=$(echo ./"$d"/"${a}"_1.34907566301_err_iter_{1..20}.dat ./"$d"/"${a}"_1.34907566301_err_iter.dat)
echo "Files to be used as arguments: $iter3"
./stat $iter3
make clean


make stat
rec3=$(echo ./"$d"/"${a}"_1.34907566301_err_rec_{1..20}.dat ./"$d"/"${a}"_1.34907566301_err_rec.dat)
echo "Files to be used as arguments: $rec3"
./stat $rec3
make clean


make stat
iter4=$(echo ./"$d"/"${a}"_2.0_err_iter_{1..20}.dat ./"$d"/"${a}"_2.0_err_iter.dat)
echo "Files to be used as arguments: $iter4"
./stat $iter4
make clean


make stat
rec4=$(echo ./"$d"/"${a}"_2.0_err_rec_{1..20}.dat ./"$d"/"${a}"_2.0_err_rec.dat)
echo "Files to be used as arguments: $rec4"
./stat $rec4
make clean
