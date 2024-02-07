#!/bin/bash

for i in {1..100}
do
verificarlo-c e.c -o err
VFC_BACKENDS="libinterflop_mca.so" ./err "SR_0.1_float_$i.dat" "SR_0.1_double.dat" "SR_0.1_err_$i.dat"
rm -rf e.o err
done