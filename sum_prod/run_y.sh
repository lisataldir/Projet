#!/bin/bash

# This script is used to run the self defined sum-product program with differnt vector sizes and a constant input value
make all

# constant value
y=0.99999987654321

mkdir -p reference
echo "# Creating folder reference"
mkdir -p UR
echo "# Creating folder UR"
mkdir -p SR
echo "# Creating folder SR"

i=1000
while [ $i -le 1000000 ]
do

j=1
while [ $j -le 2 ]
do
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./ref_main 1 $j $i $y >> reference/ref_$y\_$i\_$j.dat
# UR errors
echo -n "$i " >> UR/UR_$y\_$j.err
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./main 1 $j $i $y reference/ref_$y\_$i\_$j.dat >> UR/UR_$y\_$j.err

    for k in {1..10}
    do
    # SR errors
    sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so --mode=rr" verificarlo/verificarlo ./main 1 $j $i $y reference/ref_$y\_$i\_$j.dat >> SR/SR_$y\_$i\_$j.err
    
    docker rm $(docker ps -aq)
    done

# calculate mean value and standard deviation of the errors
echo -n "$i " >> SR/SR_$y\_$j.stat
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./stat SR/SR_$y\_$i\_$j.err >> SR/SR_$y\_$j.stat

j=$((j + 1))
done

j=1000
while [ $j -le 1000000 ]
do
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./ref_main 1 $j $i $y >> reference/ref_$y\_$i\_$j.dat
# UR errors
echo -n "$i " >> UR/UR_$y\_$j.err
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./main 1 $j $i $y reference/ref_$y\_$i\_$j.dat >> UR/UR_$y\_$j.err

    for k in {1..5}
    do
    # SR errors
    sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so --mode=rr" verificarlo/verificarlo ./main 1 $j $i $y reference/ref_$y\_$i\_$j.dat >> SR/SR_$y\_$i\_$j.err
    
    docker rm $(docker ps -aq)
    done

# calculate mean value and standard deviation of the errors
echo -n "$i " >> SR/SR_$y\_$j.stat
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./stat SR/SR_$y\_$i\_$j.err >> SR/SR_$y\_$j.stat

j=$((j * 10))
done

i=$((i * 10))
done

make clean
rm -Rf reference
echo "# y = 0.999999 finished!"