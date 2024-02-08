#!bin/bash

x=1.34907566301

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