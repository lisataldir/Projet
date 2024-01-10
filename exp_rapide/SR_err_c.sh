#!/bin/bash

# docker exec 666c0edb1aa429dae606a82a52181667fa6eea4e4cff12fd974936bf5803ab02 /bin/bash
# execute in docker container verificarlo/verificarlo (pseudo-terminal)

for i in {1..20}
do
verificarlo-c err_c.c -o err_c
VFC_BACKENDS="libinterflop_mca.so" ./err_c "results/SR_2.0_float_$i.dat" "ref_c/SR_2.0_double.dat" "error_c/SR_2.0_err_iter_$i.dat" "error_c/SR_2.0_err_rec_$i.dat"
rm -rf err_c.o err_c

verificarlo-c err_c.c -o err_c
VFC_BACKENDS="libinterflop_mca.so" ./err_c "results/SR_0.995_float_$i.dat" "ref_c/SR_0.995_double.dat" "error_c/SR_0.995_err_iter_$i.dat" "error_c/SR_0.995_err_rec_$i.dat"
rm -rf err_c.o err_c

verificarlo-c err_c.c -o err_c
VFC_BACKENDS="libinterflop_mca.so" ./err_c "results/SR_1.34907566301_float_$i.dat" "ref_c/SR_1.34907566301_double.dat" "error_c/SR_1.34907566301_err_iter_$i.dat" "error_c/SR_1.34907566301_err_rec_$i.dat"
rm -rf err_c.o err_c

verificarlo-c err_c.c -o err_c
VFC_BACKENDS="libinterflop_mca.so" ./err_c "results/SR_1.11_float_$i.dat" "ref_c/SR_1.11_double.dat" "error_c/SR_1.11_err_iter_$i.dat" "error_c/SR_1.11_err_rec_$i.dat"
rm -rf err_c.o err_c
done