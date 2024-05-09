#! /bin/bash

make 

echo "# Creating folder somme60.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so --mode=rr" verificarlo/verificarlo ./main 0 60 > somme60.dat
echo "# Creating folder exp_naif60.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so --mode=rr" verificarlo/verificarlo ./main 1 60 > exp_naif60.dat
echo "# Creating folder exp_rapide60.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so --mode=rr" verificarlo/verificarlo ./main 2 60 > exp_rapide60.dat

echo "# Creating folder somme10000.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so --mode=rr" verificarlo/verificarlo ./main 0 10000 > somme10000.dat
echo "# Creating folder exp_naif10000.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so --mode=rr" verificarlo/verificarlo ./main 1 10000 > exp_naif10000.dat
echo "# Creating folder exp_rapide10000.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so --mode=rr" verificarlo/verificarlo ./main 2 10000 > exp_rapide10000.dat

make clean
