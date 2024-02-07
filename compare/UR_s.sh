#!/bin/bash

gcc -g -Wall -O3 -o stat stat.c
arg=$(echo UR_1.01_err_{1..100}.dat UR_1.01_err.dat)
echo "Files to be used as arguments: $arg"
./stat $arg
rm -rf stat.o stat

rm -rf UR_1.01_err_*.dat UR_1.01_float_*.dat UR_1.01_double.dat