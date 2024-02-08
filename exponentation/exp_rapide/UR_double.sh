#!/bin/bash


make rapid
x=2.0
./rapid "$x" > ref_c/UR_2.0_double.dat
make clean

make rapid
y=0.995
./rapid "$y" > ref_c/UR_0.995_double.dat
make clean

make rapid
z=1.34907566301
./rapid "$z" > ref_c/UR_1.34907566301_double.dat
make clean

make rapid
h=1.11
./rapid "$h" > ref_c/UR_1.11_double.dat
make clean
