#!/bin/bash

# docker exec 666c0edb1aa429dae606a82a52181667fa6eea4e4cff12fd974936bf5803ab02 /bin/bash
# execute in docker container verificarlo/verificarlo (pseudo-terminal)


for i in {1..100}
do
x=1.01
n=8000
verificarlo-c float.c -o float
VFC_BACKENDS="libinterflop_mca.so" ./float "$x" "$n" > SR_1.01_float_$i.dat
rm -rf float.o float
done
