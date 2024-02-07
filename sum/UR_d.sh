#!/bin/bash

gcc -g -Wall -O3 -o double d.c
x=0.1
n=8000
./double "$x" "$n" > UR_0.1_double.dat
rm -rf d.o double
