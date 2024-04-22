#! /bin/bash

make 

echo "# Creating folder sommeSR.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so --mode=rr" verificarlo/verificarlo ./main 0 > sommeSR.dat
echo "# Creating folder exp_naifSR.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so --mode=rr" verificarlo/verificarlo ./main 1 > exp_naifSR.dat
echo "# Creating folder exp_rapideSR.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so --mode=rr" verificarlo/verificarlo ./main 2 > exp_rapideSR.dat

echo "# Creating folder sommeRN.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./main 0 > sommeRN.dat
echo "# Creating folder exp_naifRN.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./main 1 > exp_naifRN.dat
echo "# Creating folder exp_rapideRN.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./main 2 > exp_rapideRN.dat

make clean
