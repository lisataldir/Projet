#!/bin/bash


x=0.1
n=8000
verificarlo-c d.c -o double
VFC_BACKENDS="libinterflop_mca.so" ./double "$x" "$n" > SR_0.1_double.dat
rm -rf d.o double