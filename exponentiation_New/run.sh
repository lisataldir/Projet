#! /bin/bash

echo "# Creating directory results"
mkdir -p results

echo "# Creating subdirectory results/naif_iter, results/naif_rec, results/rapide_iter and results/rapide_rec"
mkdir -p results/naif_iter results/naif_rec results/rapide_iter results/rapide_rec

make 

x=1.34907566301
N=301

for i in {1..50}
do
echo "# Creating folder results//naif_rec/SR_$i.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca.so" verificarlo/verificarlo ./SR_main "$x" "$N" 0 > results/naif_rec/SR_$i.dat
echo "# Creating folder results/naif_iter/SR_$i.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca.so" verificarlo/verificarlo ./SR_main "$x" "$N" 1 > results/naif_iter/SR_$i.dat
echo "# Creating folder results/rapide_rec/SR_$i.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca.so" verificarlo/verificarlo ./SR_main "$x" "$N" 2 > results/rapide_rec/SR_$i.dat
echo "# Creating folder results/rapide_iter/SR_$i.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca.so" verificarlo/verificarlo ./SR_main "$x" "$N" 3 > results/rapide_iter/SR_$i.dat
done

echo "# Creating folder results/naif_rec/UR.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./UR_main "$x" "$N" 0 > results/naif_rec/UR.dat
echo "# Creating folder results/naif_iter/UR.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./UR_main "$x" "$N" 1 > results/naif_iter/UR.dat
echo "# Creating folder results/rapide_rec/UR.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./UR_main "$x" "$N" 2 > results/rapide_rec/UR.dat
echo "# Creating folder results/rapide_iter/UR.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./UR_main "$x" "$N" 3 > results/rapide_iter/UR.dat


echo "# Calculating ref value using naif_iter algo"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./ref_main "$x" "$N" 1 > results/UR.dat

for i in {1..50}
do
echo "# Creating folders for SR errors ：naif_iter"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./erreur "naif_iter" "$i" > results/naif_iter/err_$i.dat
echo "# Creating folders for SR errors ：naif_rec"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./erreur "naif_rec" "$i" > results/naif_rec/err_$i.dat
echo "# Creating folders for SR errors ：rapide_iter"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./erreur "rapide_iter" "$i" > results/rapide_iter/err_$i.dat
echo "# Creating folders for SR errors ：rapide_rec"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./erreur "rapide_rec" "$i" > results/rapide_rec/err_$i.dat
done

echo "# Creating folders for UR errors ：naif_iter"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./erreur "naif_iter" -1 > results/naif_iter/UR_err.dat
echo "# Creating folders for UR errors ：naif_rec"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./erreur "naif_rec" -1 > results/naif_rec/UR_err.dat
echo "# Creating folders for UR errors ：rapide_iter"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./erreur "rapide_iter" -1 > results/rapide_iter/UR_err.dat
echo "# Creating folders for UR errors ：rapide_rec"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./erreur "rapide_rec" -1 > results/rapide_rec/UR_err.dat

make clean
