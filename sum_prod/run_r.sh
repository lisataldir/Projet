#!/bin/bash

# This script is used to run the self defined sum_product program with differnt vector sizes and randomly generated values
make all

mkdir -p rand_vec
echo "# Creating folder rand_vec"
mkdir -p UR
echo "# Creating folder UR"
mkdir -p SR
echo "# Creating folder SR"

i=100
while [ $i -le 100000 ]
do
# generate random vectors with different sizes
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./vec_gen $i rand_vec/v_$i.dat

    j=1
    while [ $j -le 2 ]
    do
    # UR errors
    echo -n "$i " >> UR/UR_r\_$j.err
    sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./main 0 $j $1 rand_vec/v_$i.dat >> UR/UR_r\_$j.err

        for k in {1..10}
        do
        # SR errors
        sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so --mode=rr" verificarlo/verificarlo ./main 0 $j $1 rand_vec/v_$i.dat >> SR/SR_r_$i\_$j.err       
        done 

    # calculate mean value and standard deviation of the errors
    echo -n "$i " >> SR/SR_r\_$j.stat
    sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./stat SR/SR_r_$i\_$j.err >> SR/SR_r\_$j.stat
    docker rm $(docker ps -aq)

    j=$((j + 1))
    done

    j=100
    while [ $j -le 100000 ]
    do
    # UR errors
    echo -n "$i " >> UR/UR_r\_$j.err
    sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./main 0 $j $1 rand_vec/v_$i.dat >> UR/UR_r\_$j.err

        for k in {1..5}
        do
        # SR errors
        sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so --mode=rr" verificarlo/verificarlo ./main 0 $j $1 rand_vec/v_$i.dat >> SR/SR_r_$i\_$j.err       
        done 

    # calculate mean value and standard deviation of the errors
    echo -n "$i " >> SR/SR_r\_$j.stat
    sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./stat SR/SR_r_$i\_$j.err >> SR/SR_r\_$j.stat    
    docker rm $(docker ps -aq)

    j=$((j * 10))
    done

i=$((i * 10))
done

make clean

rm -Rf rand_vec

echo "# Random finished"