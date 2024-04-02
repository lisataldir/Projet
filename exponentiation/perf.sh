#! /bin/bash

mkdir -p perf
x=1.1

# Avec Verificarlo (pour SR et RN)
make performance

echo "# Creating folder perf/SR_nr.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so --mode=rr" verificarlo/verificarlo ./performance "$x" 0 > perf/SR_nr.dat
echo "# Creating folder perf/SR_ni.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so --mode=rr" verificarlo/verificarlo ./performance "$x" 1 > perf/SR_ni.dat
echo "# Creating folder perf/SR_ri.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so --mode=rr" verificarlo/verificarlo ./performance "$x" 2 > perf/SR_rr.dat
echo "# Creating folder perf/SR_rr.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so --mode=rr" verificarlo/verificarlo ./performance "$x" 3 > perf/SR_ri.dat

echo "# Creating folder perf/RN_nr.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./performance "$x" 0 > perf/RN_nr.dat
echo "# Creating folder perf/RN_ni.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./performance "$x" 1 > perf/RN_ni.dat
echo "# Creating folder perf/RN_rr.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./performance "$x" 2 > perf/RN_rr.dat
echo "# Creating folder perf/RN_ri.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./performance "$x" 3 > perf/RN_ri.dat

make clean