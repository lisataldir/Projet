#!/bin/bash

gcc -g -Wall -O3 -o double double.c
x=1.01
n=8000
./double "$x" "$n" > UR_1.01_double.dat
rm -rf double.o double
