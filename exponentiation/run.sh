#! /bin/bash

echo "# Creating subdirectory results/naif_iter, results/naif_rec, results/rapide_iter and results/rapide_rec"
for i in {0..2}
do
mkdir -p results$i/naif_iter results$i/naif_rec results$i/rapide_iter results$i/rapide_rec
done

make 

x=(1.34907566301 1.111 1.20987347)

for k in {0..2}
do
for i in {1..80}
do
echo "# Creating folder results1/naif_rec/SR_$i.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so" verificarlo/verificarlo ./main "${x[$k]}" 0 > results$k/naif_rec/SR_$i.dat
echo "# Creating folder results/naif_iter/SR_$i.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so" verificarlo/verificarlo ./main "${x[$k]}" 1 > results$k/naif_iter/SR_$i.dat
echo "# Creating folder results/rapide_rec/SR_$i.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so" verificarlo/verificarlo ./main "${x[$k]}" 2 > results$k/rapide_rec/SR_$i.dat
echo "# Creating folder results/rapide_iter/SR_$i.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so" verificarlo/verificarlo ./main "${x[$k]}" 3 > results$k/rapide_iter/SR_$i.dat
done

echo "# Creating folder results1/naif_rec/UR.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./main "${x[$k]}" 0 > results$k/naif_rec/UR.dat
echo "# Creating folder results/naif_iter/UR.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./main "${x[$k]}" 1 > results$k/naif_iter/UR.dat
echo "# Creating folder results/rapide_rec/UR.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./main "${x[$k]}" 2 > results$k/rapide_rec/UR.dat
echo "# Creating folder results/rapide_iter/UR.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./main "${x[$k]}" 3 > results$k/rapide_iter/UR.dat
done


