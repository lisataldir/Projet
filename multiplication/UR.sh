#!/bin/bash

mkdir -p results/naif_rec
mkdir -p results/naif_iter
mkdir -p results/rapide_rec
mkdir -p results/rapide_iter

x=0.1

make

echo "# Creating folder results/naif_rec/UR.dat"
./main "$x" 0 > results/naif_rec/UR.dat
echo "# Creating folder results/naif_iter/UR.dat"
./main "$x" 1 > results/naif_iter/UR.dat
echo "# Creating folder results/rapide_rec/UR.dat"
./main "$x" 2 > results/rapide_rec/UR.dat
echo "# Creating folder results/rapide_iter/UR.dat"
./main "$x" 3 > results/rapide_iter/UR.dat

make clean