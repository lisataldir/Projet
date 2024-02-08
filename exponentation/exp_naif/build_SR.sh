#!bin/bash

echo "# Creating directory results_iteratif results_recursif"
mkdir results_iteratif results_recursif

sudo docker pull verificarlo/verificarlo
sudo docker run -v "$PWD":/workdir verificarlo/verificarlo verificarlo-c main.c -o main

y=3.995
z=1.34907566301

for i in {1..10}
do

echo "# Creating folder results_iteratif/SR_x_3_995.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so" verificarlo/verificarlo ./main "$y" 0 > results_iteratif/SR_x_3_995_$i.dat
echo "# Creating folder results_recursif/SR_x_3_995.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so" verificarlo/verificarlo ./main "$y" 1 > results_recursif/SR_x_3_995_$i.dat

echo "# Creating folder results_iteratif/SR_x_rand.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so" verificarlo/verificarlo ./main "$z" 0 > results_iteratif/SR_x_rand_$i.dat
echo "# Creating folder results_recursif/SR_x_rand.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so" verificarlo/verificarlo ./main "$z" 1 > results_recursif/SR_x_rand_$i.dat

done

rm -rf main.o main