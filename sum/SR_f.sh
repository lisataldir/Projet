#!/bin/bash

for i in {1..100}
do
x=0.1
n=8000
verificarlo-c f.c -o float
VFC_BACKENDS="libinterflop_mca.so" ./float "$x" "$n" > SR_0.1_float_$i.dat
rm -rf f.o float
done
