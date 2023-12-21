#!bin/bash

gcc reference.c -o reference
x=2.0
echo "# Creating folder results/ref_x_2.dat"
./reference "$x" > results/ref_x_2.dat
rm -rf reference.o reference

gcc reference.c -o reference
y=3.995
echo "# Creating folder results/ref_x_3_995.dat"
./reference "$y" > results/ref_x_3_995.dat
rm -rf reference.o reference

gcc reference.c -o reference
z=1.34907566301
echo "# Creating folder results/ref_x_rand.dat"
./reference "$z" > results/ref_x_rand.dat
rm -rf reference.o reference