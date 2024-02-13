#!/bin/bash


x=0.1
for i in {1..100}
do
verificarlo-c SR.c -o SR
VFC_BACKENDS="libinterflop_mca_int.so" ./SR "$x" 0 > results/naif_rec/SR_$i.dat
VFC_BACKENDS="libinterflop_mca_int.so" ./SR "$x" 1 > results/naif_iter/SR_$i.dat
VFC_BACKENDS="libinterflop_mca_int.so" ./SR "$x" 2 > results/rapide_rec/SR_$i.dat
VFC_BACKENDS="libinterflop_mca_int.so" ./SR "$x" 3 > results/rapide_iter/SR_$i.dat
done
rm -rf SR.o SR