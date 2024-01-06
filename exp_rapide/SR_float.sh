#!/bin/bash

#docker exec 666c0edb1aa429dae606a82a52181667fa6eea4e4cff12fd974936bf5803ab02 /bin/bash
# execute in docker container verificarlo/verificarlo (pseudo-terminal)

for i in {1..20}
do
x=2.0
#touch results/SR_2.0_float_$i.dat
#echo "# Creating folder results/SR_2.0_float_$i.dat"
verificarlo-c main.c exp_rapide.c -o main
VFC_BACKENDS="libinterflop_mca.so" ./main "$x" > results/SR_2.0_float_$i.dat
rm -rf main.o main

y=0.995
#touch results/SR_0.995_float_$i.dat
#echo "# Creating folder results/SR_0.995_float_$i.dat"
verificarlo-c main.c exp_rapide.c -o main
VFC_BACKENDS="libinterflop_mca.so" ./main "$y" > results/SR_0.995_float_$i.dat
rm -rf main.o main

z=1.34907566301
#touch results/SR_1.34907566301_float_$i.dat
#echo "# Creating folder results/SR_1.34907566301_float_$i.dat"
verificarlo-c main.c exp_rapide.c -o main
VFC_BACKENDS="libinterflop_mca.so" ./main "$z" > results/SR_1.34907566301_float_$i.dat
rm -rf main.o main

h=1.11
#touch results/SR_1.11_float_$i.dat
#echo "# Creating folder results/SR_1.11_float_$i.dat"
verificarlo-c main.c exp_rapide.c -o main
VFC_BACKENDS="libinterflop_mca.so" ./main "$h" > results/SR_1.11_float_$i.dat
rm -rf main.o main
done