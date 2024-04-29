#!/bin/bash

# This script is used to run the self defined sum-product program with differnt vector sizes and a constant input value
make all

# constant value 2: to check the correctness of the program (there shall be no errors)
v=2.0

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
# UR errors
echo -n "$i " >> UR/UR_$v\_$j.err
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./main 1 $j $i $v >> UR/UR_$v\_$j.err
    
# SR errors (only one repeat cause 2 shall not involke errors)
echo -n "$i " >> SR/SR_$v\_$j.err
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so --mode=rr" verificarlo/verificarlo ./main 1 $j $i $v >> SR/SR_$v\_$j.err

docker rm $(docker ps -aq)

j=$((j + 10))
done

i=$((i + 10))
done

make clean

echo "# v = 2 finished!"