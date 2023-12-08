#!bin/bash

echo "# Creating directory results"
mkdir results

sudo docker pull verificarlo/verificarlo

x=2
echo "# Creating folder results/SR_x_2.dat"
touch results/SR_x_2.dat
sudo docker run -v "$PWD":/workdir verificarlo/verificarlo verificarlo-c main.c -o main
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca.so" verificarlo/verificarlo ./main "$x" >> results/SR_x_2.dat
rm -rf main.o main

y=0.5
echo "# Creating folder results/SR_x_0_5.dat"
touch results/SR_x_0_5.dat
sudo docker run -v "$PWD":/workdir verificarlo/verificarlo verificarlo-c main.c -o main
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca.so" verificarlo/verificarlo ./main "$y" >> results/SR_x_0_5.dat
rm -rf main.o main

z=1.34907566301
echo "# Creating folder results/SR_x_rand.dat"
touch results/SR_x_rand.dat
sudo docker run -v "$PWD":/workdir verificarlo/verificarlo verificarlo-c main.c -o main
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca.so" verificarlo/verificarlo ./main "$z" >> results/SR_x_rand.dat
rm -rf main.o main