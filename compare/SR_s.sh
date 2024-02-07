#!/bin/bash

# docker run -v /Users/yangyizhi/Documents/M1\ CHPS/105\ PPN/Projet:/workdir -it 4106c18170be4c6eb5c30b497344be0e0bf9fedfb69856793402b837ea8db154
# docker exec 666c0edb1aa429dae606a82a52181667fa6eea4e4cff12fd974936bf5803ab02 /bin/bash

verificarlo-c stat.c -o stat -lm
arg=$(echo SR_1.01_err_{1..100}.dat SR_1.01_err.dat)
echo "Files to be used as arguments: $arg"
VFC_BACKENDS="libinterflop_mca.so" ./stat $arg
rm -rf stat.o stat

rm -rf SR_1.01_err_*.dat SR_1.01_float_*.dat SR_1.01_double.dat