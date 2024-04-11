#!/bin/bash

# This script is used to run the self defined sum-product program with differnt vector sizes and a constant input value
make all

# constant value
x=1.000001

mkdir -p ref
echo "# Creating folder ref"
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
# references: constant vectors
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./ref_main 1 $j $i $x ref/ref_$x\_$i\_$j.dat

# UR results
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./ur_main 1 $j $i $x UR/UR_$x\_$i\_$j.dat

# UR errors
echo -n "$i " >> UR/UR_$x\_$j.err
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./ur_err UR/UR_$x\_$i\_$j.dat ref/ref_$x\_$i\_$j.dat >> UR/UR_$x\_$j.err

    for k in {1..10}
    do
    # SR results
    sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so --mode=rr" verificarlo/verificarlo ./sr_main 1 $j $i $x SR/SR_$x\_$i\_$j\_$k.dat
    # SR errors
    sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so --mode=rr" verificarlo/verificarlo ./sr_err SR/SR_$x\_$i\_$j\_$k.dat ref/ref_$x\_$i\_$j.dat >> SR/SR_$x\_$i\_$j.err
    
    rm -Rf UR/*.dat SR/*.dat
    docker rm $(docker ps -aq)
    done

# calculate mean value and standard deviation of the errors
echo -n "$i " >> SR/SR_$x\_$j.stat
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./stat SR/SR_$x\_$i\_$j.err >> SR/SR_$x\_$j.stat
# rm -Rf SR/*.err

j=$((j + 1))
done

j=1000
while [ $j -le 1000000 ]
do
# references: constant vectors
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./ref_main 1 $j $i $x ref/ref_$x\_$i\_$j.dat

# UR results
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./ur_main 1 $j $i $x UR/UR_$x\_$i\_$j.dat

# UR errors
echo -n "$i " >> UR/UR_$x\_$j.err
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./ur_err UR/UR_$x\_$i\_$j.dat ref/ref_$x\_$i\_$j.dat >> UR/UR_$x\_$j.err

    for k in {1..10}
    do
    # SR results
    sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so --mode=rr" verificarlo/verificarlo ./sr_main 1 $j $i $x SR/SR_$x\_$i\_$j\_$k.dat
    # SR errors
    sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./sr_err SR/SR_$x\_$i\_$j\_$k.dat ref/ref_$x\_$i\_$j.dat >> SR/SR_$x\_$i\_$j.err
    
    rm -Rf UR/*.dat SR/*.dat 
    docker rm $(docker ps -aq)
    done

# calculate mean value and standard deviation of the errors
echo -n "$i " >> SR/SR_$x\_$j.stat
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./stat SR/SR_$x\_$i\_$j.err >> SR/SR_$x\_$j.stat
# rm -Rf SR/*.err

j=$((j * 10))
done

i=$((i * 10))
done

make clean

rm -Rf ref 

echo "# x = 1.000001 finished!"