#!/bin/bash

for i in {1..20}
do
make err_py
./err_py "results/UR_2.0_float_$i.dat" "ref_py/2.0_py28.dat" "error_py/UR_2.0_err_iter_$i.dat" "error_py/UR_2.0_err_rec_$i.dat"
make clean

make err_py
./err_py "results/UR_0.995_float_$i.dat" "ref_py/0.995_py28.dat" "error_py/UR_0.995_err_iter_$i.dat" "error_py/UR_0.995_err_rec_$i.dat"
make clean

make err_py
./err_py "results/UR_1.34907566301_float_$i.dat" "ref_py/1.34907566301_py28.dat" "error_py/UR_1.34907566301_err_iter_$i.dat" "error_py/UR_1.34907566301_err_rec_$i.dat"
make clean

make err_py
./err_py "results/UR_1.11_float_$i.dat" "ref_py/1.11_py28.dat" "error_py/UR_1.11_err_iter_$i.dat" "error_py/UR_1.11_err_rec_$i.dat"
make clean
done