#!/bin/bash

#docker exec 666c0edb1aa429dae606a82a52181667fa6eea4e4cff12fd974936bf5803ab02 /bin/bash
# execute in docker container verificarlo/verificarlo (pseudo-terminal)

for i in {1..20}
do
verificarlo-c err_py.c -o err_py
VFC_BACKENDS="libinterflop_mca.so" ./err_py "results/SR_2.0_float_$i.dat" "ref_py/2.0_py28.dat" "error_py/SR_2.0_err_iter_$i.dat" "error_py/SR_2.0_err_rec_$i.dat"
rm -rf err_py.o err_py

#verificarlo-c err_py.c -o err_py
#VFC_BACKENDS="libinterflop_mca.so" ./err_py "results/SR_0.995_float_$i.dat" "ref_py/0.995_py28.dat" "error_py/SR_0.995_err_iter_$i.dat" "error_py/SR_0.995_err_rec_$i.dat"
#rm -rf err_py.o err_py

#verificarlo-c err_py.c -o err_py
#VFC_BACKENDS="libinterflop_mca.so" ./err_py "results/SR_1.34907566301_float_$i.dat" "ref_py/1.34907566301_py28.dat" "error_py/SR_1.34907566301_err_iter_$i.dat" "error_py/SR_1.34907566301_err_rec_$i.dat"
#rm -rf err_py.o err_py

#verificarlo-c err_py.c -o err_py
#VFC_BACKENDS="libinterflop_mca.so" ./err_py "results/SR_1.11_float_$i.dat" "ref_py/1.11_py28.dat" "error_py/SR_1.11_err_iter_$i.dat" "error_py/SR_1.11_err_rec_$i.dat"
#rm -rf err_py.o err_py
done