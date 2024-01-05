#!bin/bash

y=3.995
z=1.34907566301

gcc main.c -o main

echo "# Creating folder results_iteratif/UR_x_3_995.dat"
./main "$y" 0 > results_iteratif/UR_x_3_995.dat
echo "# Creating folder results_recursif/UR_x_3_995.dat"
./main "$y" 1 > results_recursif/UR_x_3_995.dat

echo "# Creating folder results_iteratif/UR_x_rand.dat"
./main "$z" 0 > results_iteratif/UR_x_rand.dat
echo "# Creating folder results_recursif/UR_x_rand.dat"
./main "$z" 1 > results_recursif/UR_x_rand.dat

rm -rf main.o main