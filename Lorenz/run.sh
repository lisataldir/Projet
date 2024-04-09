#! /bin/bash

echo "# Creating directory results"
mkdir -p results/

make

sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so --mode=rr" verificarlo/verificarlo ./lorenz 7000 > results/SR.dat
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./lorenz 7000 > results/RN.dat
