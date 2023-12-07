#!bin/bash

gcc sr.c -o sr
x=$(2)
echo "# Creating folder results/ref_x_2.dat"
./reference "$x" >> results/ref_x_2.dat
rm -rf sr.o sr

gcc sr.c -o sr
y=$(0.5)
echo "# Creating folder results/ref_x_0_5.dat"
./reference "$y" >> results/ref_x_0_5.dat
rm -rf sr.o sr

gcc sr.c -o sr
z=$(1.34907566301)
echo "# Creating folder results/ref_x_rand.dat"
./reference "$z" >> results/ref_x_rand.dat
rm -rf sr.o sr