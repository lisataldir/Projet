#!bin/bash

y=3.995
z=1.34907566301

gcc reference.c -o reference

echo "# Creating folder results_iteratif/ref_x_3_995.dat"
./reference "$y" 0 > results_iteratif/ref_x_3_995.dat
echo "# Creating folder results_recursif/ref_x_3_995.dat"
./reference "$y" 1 > results_recursif/ref_x_3_995.dat

echo "# Creating folder results_iteratif/ref_x_rand.dat"
./reference "$z" 0 > results_iteratif/ref_x_rand.dat
echo "# Creating folder results_recursif/ref_x_rand.dat"
./reference "$z" 1 > results_recursif/ref_x_rand.dat

rm -rf reference.o reference
