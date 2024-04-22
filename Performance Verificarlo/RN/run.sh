#! /bin/bash

make 

echo "# Creating folder somme.dat"
./main 0 > somme.dat
echo "# Creating folder exp_naif.dat"
./main 1 > exp_naif.dat
echo "# Creating folder exp_rapide.dat"
./main 2 > exp_rapide.dat

make clean
