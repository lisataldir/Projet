#!/bin/bash

for i in {1..100}
do
gcc -g -Wall -O3 -o err err.c
./err "UR_1.01_float_$i.dat" "UR_1.01_double.dat" "UR_1.01_err_$i.dat"
rm -rf err.o err
done