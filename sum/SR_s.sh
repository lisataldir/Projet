#!/bin/bash

verificarlo-c s.c -o stat -lm
arg=$(echo SR_0.1_err_{1..100}.dat SR_0.1_err.dat)
echo "Files to be used as arguments: $arg"
VFC_BACKENDS="libinterflop_mca.so" ./stat $arg
rm -rf s.o stat

rm -rf SR_0.1_err_*.dat SR_0.1_float_*.dat SR_0.1_double.dat