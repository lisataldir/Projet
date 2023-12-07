#!bin/bash

gcc sr.c -o sr
x=$(2)
echo "# Creating folder results/ref_x_$x.dat"
./reference "$x" >> results/ref_x_$x.dat
rm -rf sr.o sr

gcc sr.c -o sr
y=$(0.5)
echo "# Creating folder results/ref_x_$y.dat"
./reference "$y" >> results/ref_x_$y.dat
rm -rf sr.o sr

gcc sr.c -o sr
z=$(1.34907566301)
echo "# Creating folder results/ref_x_rand.dat"
./reference "$z" >> results/ref_x_rand.dat
rm -rf sr.o sr