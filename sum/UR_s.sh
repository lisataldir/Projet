#!/bin/bash

gcc -g -Wall -O3 -o stat s.c
arg=$(echo UR_0.1_err_{1..100}.dat UR_0.1_err.dat)
echo "Files to be used as arguments: $arg"
./stat $arg
rm -rf s.o stat

rm -rf UR_0.1_err_*.dat UR_0.1_float_*.dat UR_0.1_double.dat