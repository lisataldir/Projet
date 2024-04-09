#!/bin/bash

# This script is used to run the self defined sum_product program with differnt vector sizes and randomly generated values
make all

mkdir -p rand_vec
echo "# Creating folder rand_vec"
mkdir -p ref
echo "# Creating folder ref"
mkdir -p UR
echo "# Creating folder UR"
mkdir -p SR
echo "# Creating folder SR"

i=1000
while [ $i -le 1000000 ]
do
# generate random vectors with different sizes
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./vec_gen $i rand_vec/v_$i.dat

    j=1
    while [ $j -le 2 ]
    do
    # references: random vectors
    sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./ref_main 0 $j $i rand_vec/v_$i.dat ref/ref_r_$i\_$j.dat

    # UR results
    sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./ur_main 0 $j $i rand_vec/v_$i.dat UR/UR_r_$i\_$j.dat

    # UR errors
    echo -n "$i " >> UR/UR_r\_$j.err
    sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./ur_err UR/UR_r_$i\_$j.dat ref/ref_r_$i\_$j.dat >> UR/UR_r\_$j.err

        for k in {1..10}
        do
        # SR results
        sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so --mode=rr" verificarlo/verificarlo ./sr_main 0 $j $i rand_vec/v_$i.dat SR/SR_r_$i\_$j\_$k.dat

        # SR errors
        sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./sr_err SR/SR_r_$i\_$j\_$k.dat ref/ref_r_$i\_$j.dat >> SR/SR_r_$i\_$j.err       
        rm -Rf UR/*.dat SR/*.dat
        done 

    # calculate mean value and standard deviation of the errors
    echo -n "$i " >> SR/SR_r\_$j.stat
    sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./stat SR/SR_r_$i\_$j.err >> SR/SR_r\_$j.stat
    rm -Rf SR/*.err

    docker rm $(docker ps -aq)

    j=$((j + 1))
    done

    j=1000
    while [ $j -le 1000000 ]
    do
    # references: random vectors
    sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./ref_main 0 $j $i rand_vec/v_$i.dat ref/ref_r_$i\_$j.dat

    # UR results
    sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./ur_main 0 $j $i rand_vec/v_$i.dat UR/UR_r_$i\_$j.dat

    # UR errors
    echo -n "$i " >> UR/UR_r\_$j.err
    sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./ur_err UR/UR_r_$i\_$j.dat ref/ref_r_$i\_$j.dat >> UR/UR_r\_$j.err

        for k in {1..10}
        do
        # SR results
        sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so --mode=rr" verificarlo/verificarlo ./sr_main 0 $j $i rand_vec/v_$i.dat SR/SR_r_$i\_$j\_$k.dat

        # SR errors
        sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./sr_err SR/SR_r_$i\_$j\_$k.dat ref/ref_r_$i\_$j.dat >> SR/SR_r_$i\_$j.err       
        rm -Rf UR/*.dat SR/*.dat
        done 

    # calculate mean value and standard deviation of the errors
    echo -n "$i " >> SR/SR_r\_$j.stat
    sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./stat SR/SR_r_$i\_$j.err >> SR/SR_r\_$j.stat
    rm -Rf SR/*.err
    
    docker rm $(docker ps -aq)

    j=$((j * 10))
    done

i=$((i * 10))
done

make clean

rm -Rf ref rand_vec

echo "# Random finished"