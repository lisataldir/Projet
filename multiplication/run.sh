#! /bin/bash

echo "# Creating subdirectory results"
for i in {0..2}
do
mkdir -p results$i
done

make

x=(0.1 1.1 1.2)

for k in {0..2}
do
for i in {1..33}
do
echo "# Creating folder results/SR_$i.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so --mode=rr" verificarlo/verificarlo ./main "${x[$k]}" > results$k/SR_$i.dat
done

echo "# Creating folder results/UR.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./main "${x[$k]}" > results$k/UR.dat
done

make clean

