#!bin/bash

echo "# Creating directory results"
mkdir results

sudo docker pull verificarlo/verificarlo

for i in {1..20}
do
    echo "# Creating folder output$i.dat inside results"
    touch results/output$i.dat
    sudo docker run -v "$PWD":/workdir verificarlo/verificarlo verificarlo-c main.c -o main
    sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca.so" verificarlo/verificarlo ./main >> results/output$i.dat
done

rm -rf main.o main

