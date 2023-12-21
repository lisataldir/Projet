#!bin/bash

echo "# Creating directory results"
mkdir results

sudo docker pull verificarlo/verificarlo

for i in {1..10}
do
x=2.0
echo "# Creating folder results/SR_x_2.dat"
sudo docker run -v "$PWD":/workdir verificarlo/verificarlo verificarlo-c main.c -o main
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so" verificarlo/verificarlo ./main "$x" > results/SR_x_2_$i.dat
rm -rf main.o main

y=3.995
echo "# Creating folder results/SR_x_3_995.dat"
sudo docker run -v "$PWD":/workdir verificarlo/verificarlo verificarlo-c main.c -o main
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so" verificarlo/verificarlo ./main "$y" > results/SR_x_3_995_$i.dat
rm -rf main.o main

z=1.34907566301
echo "# Creating folder results/SR_x_rand.dat"
sudo docker run -v "$PWD":/workdir verificarlo/verificarlo verificarlo-c main.c -o main
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so" verificarlo/verificarlo ./main "$z" > results/SR_x_rand_$i.dat
rm -rf main.o main
done
