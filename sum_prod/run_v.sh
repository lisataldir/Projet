#!/bin/bash

# This script is used to run the self defined sum-product program with differnt vector sizes and a constant input value
make all

# constant value 2: to check the correctness of the program (there shall be no errors)
v=2

mkdir -p ref
echo "# Creating folder ref"
mkdir -p UR
echo "# Creating folder UR"
mkdir -p SR
echo "# Creating folder SR"

i=10
while [ $i -le 100 ]
do

j=10
while [ $j -le 100 ]
do
# references: constant vectors
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./ref_main 1 $j $i $v ref/ref_$v\_$i\_$j.dat

# UR results
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./ur_main 1 $j $i $v UR/UR_$v\_$i\_$j.dat

# UR errors
echo -n "$i " >> UR/UR_$v\_$j.err
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./ur_err UR/UR_$v\_$i\_$j.dat ref/ref_$v\_$i\_$j.dat >> UR/UR_$v\_$j.err
    
# SR results
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so --mode=rr" verificarlo/verificarlo ./sr_main 1 $j $i $v SR/SR_$v\_$i\_$j.dat

# SR errors (only one repeat cause 2 shall not involke errors)
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./sr_err SR/SR_$v\_$i\_$j.dat ref/ref_$v\_$i\_$j.dat >> SR/SR_$v\_$i\_$j.err

# calculate mean value and standard deviation of the errors
echo -n "$i " >> SR/SR_$v\_$j.stat
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./stat SR/SR_$v\_$i\_$j.err >> SR/SR_$v\_$j.stat

rm -Rf UR/*.dat SR/*.dat SR/*.err
docker rm $(docker ps -aq)

j=$((j + 10))
done

i=$((i + 10))
done

make clean

rm -Rf ref 

echo "# v = 2 finished!"