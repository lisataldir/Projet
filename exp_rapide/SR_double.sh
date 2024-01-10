#!/bin/bash

# docker exec 666c0edb1aa429dae606a82a52181667fa6eea4e4cff12fd974936bf5803ab02 /bin/bash
# execute in docker container verificarlo/verificarlo (pseudo-terminal)


x=2.0
verificarlo-c main.c exp_rapide.c -o main
VFC_BACKENDS="libinterflop_mca.so" ./main "$x" > ref_c/SR_2.0_double.dat
rm -rf main.o main

y=0.995
verificarlo-c main.c exp_rapide.c -o main
VFC_BACKENDS="libinterflop_mca.so" ./main "$y" > ref_c/SR_0.995_double.dat
rm -rf main.o main

z=1.34907566301
verificarlo-c main.c exp_rapide.c -o main
VFC_BACKENDS="libinterflop_mca.so" ./main "$z" > ref_c/SR_1.34907566301_double.dat
rm -rf main.o main

h=1.11
verificarlo-c main.c exp_rapide.c -o main
VFC_BACKENDS="libinterflop_mca.so" ./main "$h" > ref_c/SR_1.11_double.dat
rm -rf main.o main
