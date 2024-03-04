#! /bin/bash

echo "# Creating directory results"
mkdir -p results

echo "# Creating subdirectory results/naif_iter, results/naif_rec, results/rapide_iter and results/rapide_rec"
mkdir -p results/naif_iter results/naif_rec results/rapide_iter results/rapide_rec

make 

x=1.34907566301

for i in {1..50}
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

echo "# Creating folder results/naif_rec/UR.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./main "$x" 0 > results/naif_rec/UR.dat
echo "# Creating folder results/naif_iter/UR.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./main "$x" 1 > results/naif_iter/UR.dat
echo "# Creating folder results/rapide_rec/UR.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./main "$x" 2 > results/rapide_rec/UR.dat
echo "# Creating folder results/rapide_iter/UR.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./main "$x" 3 > results/rapide_iter/UR.dat
