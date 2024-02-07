#!/bin/bash

for i in {1..100}
do
gcc -g -Wall -O3 -o err e.c
./err "UR_0.1_float_$i.dat" "UR_0.1_double.dat" "UR_0.1_err_$i.dat"
rm -rf e.o err
done