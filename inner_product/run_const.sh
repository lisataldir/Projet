#!/bin/bash

# This script is used to run the inner product program with differnt vector sizes and a constant input value
make all

# constant values
x=1.1
y=1.27987347
z=1.318974023
w=1.34907566301
v=2

mkdir -p ref
echo "# Creating folder ref"
mkdir -p UR
echo "# Creating folder UR"
mkdir -p SR
echo "# Creating folder SR"

i=10
while [ $i -le 100000 ]
do
# references: constant vectors
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./ref_main 1 $i $x ref/ref_$x\_$i.dat
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./ref_main 1 $i $y ref/ref_$y\_$i.dat
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./ref_main 1 $i $z ref/ref_$z\_$i.dat
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./ref_main 1 $i $w ref/ref_$w\_$i.dat
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./ref_main 1 $i $v ref/ref_$v\_$i.dat

# UR results
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./ur_main 1 $i $x UR/UR_$x\_$i.dat
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./ur_main 1 $i $y UR/UR_$y\_$i.dat
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./ur_main 1 $i $z UR/UR_$z\_$i.dat
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./ur_main 1 $i $w UR/UR_$w\_$i.dat
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./ur_main 1 $i $v UR/UR_$v\_$i.dat

# UR errors
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./ur_err UR/UR_$x\_$i.dat ref/ref_$x\_$i.dat >> UR/UR_$x.err
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./ur_err UR/UR_$y\_$i.dat ref/ref_$y\_$i.dat >> UR/UR_$y.err
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./ur_err UR/UR_$z\_$i.dat ref/ref_$z\_$i.dat >> UR/UR_$z.err
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./ur_err UR/UR_$w\_$i.dat ref/ref_$w\_$i.dat >> UR/UR_$w.err
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./ur_err UR/UR_$v\_$i.dat ref/ref_$v\_$i.dat >> UR/UR_$v.err

    for k in {1..30}
    do
    # SR results
    sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so --mode=rr" verificarlo/verificarlo ./sr_main 1 $i $x SR/SR_$x\_$i\_$k.dat
    sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so --mode=rr" verificarlo/verificarlo ./sr_main 1 $i $y SR/SR_$y\_$i\_$k.dat
    sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so --mode=rr" verificarlo/verificarlo ./sr_main 1 $i $z SR/SR_$z\_$i\_$k.dat
    sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so --mode=rr" verificarlo/verificarlo ./sr_main 1 $i $w SR/SR_$w\_$i\_$k.dat
    sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so --mode=rr" verificarlo/verificarlo ./sr_main 1 $i $v SR/SR_$v\_$i\_$k.dat

    # SR errors
    sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./sr_err SR/SR_$x\_$i\_$k.dat ref/ref_$x\_$i.dat >> SR/SR_$x\_$i.err
    sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./sr_err SR/SR_$y\_$i\_$k.dat ref/ref_$y\_$i.dat >> SR/SR_$y\_$i.err
    sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./sr_err SR/SR_$z\_$i\_$k.dat ref/ref_$z\_$i.dat >> SR/SR_$z\_$i.err
    sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./sr_err SR/SR_$w\_$i\_$k.dat ref/ref_$w\_$i.dat >> SR/SR_$w\_$i.err
    sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./sr_err SR/SR_$v\_$i\_$k.dat ref/ref_$v\_$i.dat >> SR/SR_$v\_$i.err
    done 

# calculate mean value and standard deviation of the errors
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./stat SR/SR_$x\_$i.err >> SR/SR_$x.stat
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./stat SR/SR_$y\_$i.err >> SR/SR_$y.stat
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./stat SR/SR_$z\_$i.err >> SR/SR_$z.stat
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./stat SR/SR_$w\_$i.err >> SR/SR_$w.stat
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./stat SR/SR_$v\_$i.err >> SR/SR_$v.stat

i=$((i * 10))
done

make clean

rm -Rf UR/*.dat SR/*.dat ref SR/*.err