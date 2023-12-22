#!/bin/bash

for i in {1..10}
do
make rapid
x=2.0
touch result_data/UR_2.0_float_$i.dat
echo "# Creating folder result_data/UR_2.0_float_$i.dat"
./rapid "$x" > result_data/UR_2.0_float_$i.dat
make clean

make rapid
y=0.995
touch result_data/UR_0.995_float_$i.dat
echo "# Creating folder result_data/UR_0.995_float_$i.dat"
./rapid "$y" > result_data/UR_0.995_float_$i.dat
make clean

make rapid
z=1.34907566301
touch result_data/UR_1.34907566301_float_$i.dat
echo "# Creating folder result_data/UR_1.34907566301_float_$i.dat"
./rapid "$z" > result_data/UR_1.34907566301_float_$i.dat
make clean

make rapid
h=1.11
touch result_data/UR_1.11_float_$i.dat
echo "# Creating folder result_data/UR_1.11_float_$i.dat"
./rapid "$h" > result_data/UR_1.11_float_$i.dat
make clean
done