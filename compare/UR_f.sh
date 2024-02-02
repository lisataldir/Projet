#!/bin/bash

for i in {1..100}
do
gcc -g -Wall -O3 -o float float.c
x=1.01
n=8000
./float "$x" "$n" > UR_1.01_float_$i.dat
rm -rf float.o float
done