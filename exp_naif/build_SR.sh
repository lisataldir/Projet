#!bin/bash

echo "# Creating directory results"
mkdir results

sudo docker pull verificarlo/verificarlo

x=$(2)
echo "# Creating folder SR_x_$x.dat inside results"
touch results/SR_x_$x.dat
sudo docker run -v "$PWD":/workdir verificarlo/verificarlo verificarlo-c main.c -o main
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca.so" verificarlo/verificarlo ./main "$x" >> results/SR_x_$x.dat
rm -rf main.o main

y=$(0.5)
echo "# Creating folder SR_x_$y.dat inside results"
touch results/SR_x_$y.dat
sudo docker run -v "$PWD":/workdir verificarlo/verificarlo verificarlo-c main.c -o main
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca.so" verificarlo/verificarlo ./main "$y" >> results/SR_x_$y.dat
rm -rf main.o main

z=$(1.34907566301)
echo "# Creating folder SR_x_rand.dat inside results"
touch results/SR_x_rand.dat
sudo docker run -v "$PWD":/workdir verificarlo/verificarlo verificarlo-c main.c -o main
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca.so" verificarlo/verificarlo ./main "$z" >> results/SR_x_rad.dat
rm -rf main.o main

