#! /bin/bash

echo "# Creating directory results"
mkdir -p results/

make

sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so --mode=rr" verificarlo/verificarlo ./lorenz_32 7000 > results/SR_32.dat
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./lorenz_32 7000 > results/RN_32.dat

sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so --mode=rr" verificarlo/verificarlo ./lorenz_64 7000 > results/SR_64.dat
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./lorenz_64 7000 > results/RN_64.dat
