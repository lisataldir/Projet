#!bin/bash

echo "# Creating directory results"
mkdir results

echo "# Creating subdirectory results/naif_iter, results/naif_rec, results/rapide_iter and results/rapide_rec"
mkdir results/naif_iter results/naif_rec results/rapide_iter results/rapide_rec

sudo docker pull verificarlo/verificarlo
sudo docker run -v "$PWD":/workdir verificarlo/verificarlo verificarlo-c main.c algo.c algo.h -o main

x=0.1

for i in {1..10}
do
echo "# Creating folder results//naif_rec/SR_$i.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so" verificarlo/verificarlo ./main "$x" 0 > results//naif_rec/SR_$i.dat
echo "# Creating folder results/naif_iter/SR_$i.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so" verificarlo/verificarlo ./main "$x" 1 > results/naif_iter/SR_$i.dat
echo "# Creating folder results/rapide_rec/SR_$i.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so" verificarlo/verificarlo ./main "$x" 2 > results/rapide_rec/SR_$i.dat
echo "# Creating folder results/rapide_iter/SR_$i.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so" verificarlo/verificarlo ./main "$x" 3 > results/rapide_iter/SR_$i.dat
done

rm -rf main.o main