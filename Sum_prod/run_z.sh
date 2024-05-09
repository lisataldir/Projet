#!/bin/bash

# This script is used to run the self defined sum-product program with differnt vector sizes and a constant input value
make all

# constant value
z=1.00010002

mkdir -p UR
echo "# Creating folder UR"
mkdir -p SR
echo "# Creating folder SR"

i=100
while [ $i -le 100000 ]
do

j=1
while [ $j -le 2 ]
do
# UR errors
echo -n "$i " >> UR/UR_$z\_$j.err
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./main 1 $j $i $z >> UR/UR_$z\_$j.err

    for k in {1..10}
    do
    # SR errors
    sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so --mode=rr" verificarlo/verificarlo ./main 1 $j $i $z >> SR/SR_$z\_$i\_$j.err
    
    docker rm $(docker ps -aq)
    done

# calculate mean value and standard deviation of the errors
echo -n "$i " >> SR/SR_$z\_$j.stat
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./stat SR/SR_$z\_$i\_$j.err >> SR/SR_$z\_$j.stat

j=$((j + 1))
done

j=100
while [ $j -le 100000 ]
do
# UR errors
echo -n "$i " >> UR/UR_$z\_$j.err
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./main 1 $j $i $z >> UR/UR_$z\_$j.err

    for k in {1..5}
    do
    # SR errors
    sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so --mode=rr" verificarlo/verificarlo ./main 1 $j $i $z >> SR/SR_$z\_$i\_$j.err
    
    docker rm $(docker ps -aq)
    done

# calculate mean value and standard deviation of the errors
echo -n "$i " >> SR/SR_$z\_$j.stat
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./stat SR/SR_$z\_$i\_$j.err >> SR/SR_$z\_$j.stat

j=$((j * 10))
done

i=$((i * 10))
done

make clean

echo "# z = 1.00010002 finished!"