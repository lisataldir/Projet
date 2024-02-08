#!/bin/bash

for i in {1..20}
do
make err_c
./err_c "results/UR_2.0_float_$i.dat" "ref_c/UR_2.0_double.dat" "error_c/UR_2.0_err_iter_$i.dat" "error_c/UR_2.0_err_rec_$i.dat"
make clean

make err_c
./err_c "results/UR_0.995_float_$i.dat" "ref_c/UR_0.995_double.dat" "error_c/UR_0.995_err_iter_$i.dat" "error_c/UR_0.995_err_rec_$i.dat"
make clean

make err_c
./err_c "results/UR_1.34907566301_float_$i.dat" "ref_c/UR_1.34907566301_double.dat" "error_c/UR_1.34907566301_err_iter_$i.dat" "error_c/UR_1.34907566301_err_rec_$i.dat"
make clean

make err_c
./err_c "results/UR_1.11_float_$i.dat" "ref_c/UR_1.11_double.dat" "error_c/UR_1.11_err_iter_$i.dat" "error_c/UR_1.11_err_rec_$i.dat"
make clean
done