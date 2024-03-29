#!/bin/bash

# This script is used to run the inner product program with differnt vector sizes and randomly generated values
make all

mkdir -p rand_vec
echo "# Creating folder rand_vec"
mkdir -p ref
echo "# Creating folder ref"
mkdir -p UR
echo "# Creating folder UR"
mkdir -p SR
echo "# Creating folder SR"
sleep 1

i=10
while [ $i -le 300 ]
do
# generate random vectors with different sizes
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./vec_gen $i rand_vec/v_$i.dat

# references: random vectors
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./ref_main 0 $i rand_vec/v_$i.dat ref/ref_r_$i.dat

# UR results
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./ur_main 0 $i rand_vec/v_$i.dat UR/UR_r_$i.dat

# UR errors
echo -n "$i " >> UR/UR_r.err
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./ur_err UR/UR_r_$i.dat ref/ref_r_$i.dat >> UR/UR_r.err

    for k in {1..30}
    do
    # SR results
    sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so --mode=rr" verificarlo/verificarlo ./sr_main 0 $i rand_vec/v_$i.dat SR/SR_r_$i\_$k.dat

    # SR errors
    sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./sr_err SR/SR_r_$i\_$k.dat ref/ref_r_$i.dat >> SR/SR_r_$i.err
    done 

# calculate mean value and standard deviation of the errors
echo -n "$i " >> SR/SR_r.stat
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./stat SR/SR_r_$i.err >> SR/SR_r.stat

i=$((i + 10))
done

make clean

rm -Rf UR/*.dat SR/*.dat ref rand_vec SR/*.err