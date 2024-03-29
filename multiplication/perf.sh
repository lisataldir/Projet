#! /bin/bash

mkdir -p perf
x=0.1

# Avec Verificarlo (pour SR et RN)
make performance

echo "# Creating folder perf/SR.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so --mode=rr" verificarlo/verificarlo ./performance "$x" > perf/SR.dat
echo "# Creating folder perf/RN.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./performance "$x" > perf/RN.dat

make clean
