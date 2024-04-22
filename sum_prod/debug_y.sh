#!/bin/bash

make all
y=0.999999

i=1000
while [ $i -le 1000000 ]
do
j=100000
while [ $j -le 1000000 ]
do
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./ref_main 1 $j $i $y >> ref_y\_$i\_$j.dat
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./main 1 $j $i $y ref_y\_$i\_$j.dat >> UR_y\_$j.err
for k in {1..3}
do
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so --mode=rr" verificarlo/verificarlo ./main 1 $j $i $y ref_y\_$i\_$j.dat >> SR_y\_$i\_$j.err
done
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./stat SR_y\_$i\_$j.err >> SR_y\_$j.stat
j=$((j * 10))
done

i=$((i * 10))
done

docker rm $(docker ps -aq)
make clean