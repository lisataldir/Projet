#!/bin/bash

for i in {1..20}
do
make rapid
x=2.0
touch results/UR_2.0_double_$i.dat
echo "# Creating folder results/UR_2.0_double_$i.dat"
./rapid "$x" > results/UR_2.0_double_$i.dat
make clean

make rapid
y=0.995
touch results/UR_0.995_double_$i.dat
echo "# Creating folder results/UR_0.995_double_$i.dat"
./rapid "$y" > results/UR_0.995_double_$i.dat
make clean

make rapid
z=1.34907566301
touch results/UR_1.34907566301_double_$i.dat
echo "# Creating folder results/UR_1.34907566301_double_$i.dat"
./rapid "$z" > results/UR_1.34907566301_double_$i.dat
make clean

make rapid
h=1.11
touch results/UR_1.11_double_$i.dat
echo "# Creating folder results/UR_1.11_double_$i.dat"
./rapid "$h" > results/UR_1.11_double_$i.dat
make clean
done