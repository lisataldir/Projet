#!bin/bash

gcc main.c -o main
x=2
echo "# Creating folder results/UR_x_2.dat"
./main "$x" > results/UR_x_2.dat
rm -rf main.o main

gcc main.c -o main
y=3.995
echo "# Creating folder results/UR_x_3_995.dat"
./main "$y" > results/UR_x_3_995.dat
rm -rf main.o main

gcc main.c -o main
z=1.34907566301
echo "# Creating folder results/UR_x_rand.dat"
./main "$z" > results/UR_x_rand.dat
rm -rf main.o main