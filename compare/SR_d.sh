#!/bin/bash

# docker run -v /Users/yangyizhi/Documents/M1\ CHPS/105\ PPN/Projet:/workdir -it 4106c18170be4c6eb5c30b497344be0e0bf9fedfb69856793402b837ea8db154
# docker exec 666c0edb1aa429dae606a82a52181667fa6eea4e4cff12fd974936bf5803ab02 /bin/bash
# execute in docker container verificarlo/verificarlo (pseudo-terminal)


x=1.01
n=8000
verificarlo-c double.c -o double
VFC_BACKENDS="libinterflop_mca.so" ./double "$x" "$n" > SR_1.01_double.dat
rm -rf double.o double