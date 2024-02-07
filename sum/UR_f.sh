#!/bin/bash

for i in {1..100}
do
gcc -g -Wall -O3 -o float f.c
x=0.1
n=8000
./float "$x" "$n" > UR_0.1_float_$i.dat
rm -rf f.o float
done