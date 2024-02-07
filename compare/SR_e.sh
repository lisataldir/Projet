#!/bin/bash

# docker run -v /Users/yangyizhi/Documents/M1\ CHPS/105\ PPN/Projet:/workdir -it 4106c18170be4c6eb5c30b497344be0e0bf9fedfb69856793402b837ea8db154
# docker exec 666c0edb1aa429dae606a82a52181667fa6eea4e4cff12fd974936bf5803ab02 /bin/bash
# execute in docker container verificarlo/verificarlo (pseudo-terminal)

for i in {1..100}
do
verificarlo-c err.c -o err
VFC_BACKENDS="libinterflop_mca.so" ./err "SR_1.01_float_$i.dat" "SR_1.01_double.dat" "SR_1.01_err_$i.dat"
rm -rf err.o err
done