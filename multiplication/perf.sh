#! /bin/bash

mkdir -p perf/naif_iter perf/naif_rec perf/rapide_iter perf/rapide_rec

make

x=0.1

echo "# Creating folder perf/naif_rec/SR.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so --mode=rr" verificarlo/verificarlo ./performance "$x" 0 > perf/naif_rec/SR.dat
echo "# Creating folder perf/naif_iter/SR.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so --mode=rr" verificarlo/verificarlo ./performance "$x" 1 > perf/naif_iter/SR.dat
echo "# Creating folder perf/rapide_rec/SR.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so --mode=rr" verificarlo/verificarlo ./performance "$x" 2 > perf/rapide_rec/SR.dat
echo "# Creating folder perf/rapide_iter/SR.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so --mode=rr" verificarlo/verificarlo ./performance "$x" 3 > perf/rapide_iter/SR.dat

echo "# Creating folder perf/naif_rec/RN.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./performance "$x" 0 > perf/naif_rec/RN.dat
echo "# Creating folder perf/naif_iter/RN.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./performance "$x" 1 > perf/naif_iter/RN.dat
echo "# Creating folder perf/rapide_rec/RN.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./performance "$x" 2 > perf/rapide_rec/RN.dat
echo "# Creating folder perf/rapide_iter/RN.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./performance "$x" 3 > perf/rapide_iter/RN.dat

make clean