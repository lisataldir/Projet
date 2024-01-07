#!/bin/bash

for i in {1..20}
do
make error
./error "results/UR_2.0_float_$i.dat" "results/UR_2.0_double_$i.dat" "results/UR_2.0_err_iter_$i.dat" "results/UR_2.0_err_rec_$i.dat"
make clean

make error
./error "results/UR_0.995_float_$i.dat" "results/UR_0.995_double_$i.dat" "results/UR_0.995_err_iter_$i.dat" "results/UR_0.995_err_rec_$i.dat"
make clean

make error
./error "results/UR_1.34907566301_float_$i.dat" "results/UR_1.34907566301_double_$i.dat" "results/UR_1.34907566301_err_iter_$i.dat" "results/UR_1.34907566301_err_rec_$i.dat"
make clean

make error
./error "results/UR_1.11_float_$i.dat" "results/UR_1.11_double_$i.dat" "results/UR_1.11_err_iter_$i.dat" "results/UR_1.11_err_rec_$i.dat"
make clean
done