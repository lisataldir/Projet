#!/bin/bash

# docker exec 666c0edb1aa429dae606a82a52181667fa6eea4e4cff12fd974936bf5803ab02 /bin/bash

verificarlo-c stat.c -o stat -lm
arg=$(echo SR_1.01_err_{1..100}.dat SR_1.01_err.dat)
echo "Files to be used as arguments: $arg"
VFC_BACKENDS="libinterflop_mca.so" ./stat $arg
rm -rf stat.o stat