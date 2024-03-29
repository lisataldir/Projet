#! /bin/bash

echo "# Creating directory results"
mkdir -p results

echo "# Creating subdirectory results/naif_iter, results/naif_rec, results/rapide_iter and results/rapide_rec"
mkdir -p results/naif_iter results/naif_rec results/rapide_iter results/rapide_rec

sleep 3
make

x=1.1
n=100
N=100000
sleep 3

echo "# Creating folder results//naif_rec/SR_$i.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so --mode=rr" verificarlo/verificarlo ./SR_main "$x" "$n" "$N" 0 > results/naif_rec/SR.dat
echo "# Creating folder results/naif_iter/SR_$i.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so --mode=rr" verificarlo/verificarlo ./SR_main "$x" "$n" "$N" 1 > results/naif_iter/SR.dat
echo "# Creating folder results/rapide_rec/SR_$i.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so --mode=rr" verificarlo/verificarlo ./SR_main "$x" "$n" "$N" 2 > results/rapide_rec/SR.dat
echo "# Creating folder results/rapide_iter/SR_$i.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so --mode=rr" verificarlo/verificarlo ./SR_main "$x" "$n" "$N" 3 > results/rapide_iter/SR.dat

echo "# Calculating ref value using naif_iter algo"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./ref_main "$x" "$n" "$N" 1 > results/UR.dat

echo "# Creating folders for SR errors: naif_iter"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./erreur "naif_iter" > results/naif_iter/err.dat
echo "# Creating folders for SR errors: naif_rec"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./erreur "naif_rec" > results/naif_rec/err.dat
echo "# Creating folders for SR errors: rapide_iter"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./erreur "rapide_iter" > results/rapide_iter/err.dat
echo "# Creating folders for SR errors: rapide_rec"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./erreur "rapide_rec" > results/rapide_rec/err.dat

grep -o '\.[0-9]*' results/naif_rec/err.dat > results/naif_rec/err_mantisse.dat
grep -o '\.[0-9]*' results/naif_iter/err.dat > results/naif_iter/err_mantisse.dat
grep -o '\.[0-9]*' results/rapide_rec/err.dat > results/rapide_rec/err_mantisse.dat
grep -o '\.[0-9]*' results/rapide_iter/err.dat > results/rapide_iter/err_mantisse.dat

sort results/naif_rec/err_mantisse.dat > results/naif_rec/err_mantisse_sort.dat
sort results/naif_iter/err_mantisse.dat > results/naif_iter/err_mantisse_sort.dat
sort results/rapide_rec/err_mantisse.dat > results/rapide_rec/err_mantisse_sort.dat
sort results/rapide_iter/err_mantisse.dat > results/rapide_iter/err_mantisse_sort.dat

sleep 3

echo "# Creating folders for naif_iter stat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./stat "naif_iter" "$N" > results/naif_iter/stat.dat
echo "# Creating folders for naif_rec stat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./stat "naif_rec" "$N" > results/naif_rec/stat.dat
echo "# Creating folders for rapide_iter stat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./stat "rapide_iter" "$N" > results/rapide_iter/stat.dat
echo "# Creating folders for rapide_rec stat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./stat "rapide_rec" "$N" > results/rapide_rec/stat.dat

sleep 3

echo "# Creating folders for naif_iter stat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./stat_sign_bit "naif_iter" "$N" > results/naif_iter/stat_sign_bit.dat
echo "# Creating folders for naif_rec stat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./stat_sign_bit "naif_rec" "$N" > results/naif_rec/stat_sign_bit.dat
echo "# Creating folders for rapide_iter stat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./stat_sign_bit "rapide_iter" "$N" > results/rapide_iter/stat_sign_bit.dat
echo "# Creating folders for rapide_rec stat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./stat_sign_bit "rapide_rec" "$N" > results/rapide_rec/stat_sign_bit.dat

