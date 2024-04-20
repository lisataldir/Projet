#! /bin/bash

NSAMPLES=33
echo "# Creating subdirectory results/results/naif_iter, results/results/naif_rec, results/results/rapide_iter and results/results/rapide_rec"
for i in {0..9}
do
mkdir -p results/results$i/naif_iter results/results$i/naif_rec results/results$i/rapide_iter results/results$i/rapide_rec
done

make 

x=(0.999999 1.000001 1.000010 1.000011 1.000101 1.000111 1.001000 1.001001 1.001010 1.001011)

for k in {0..9}
do
  for i in $(seq 1 $NSAMPLES)
  do
    echo "# Creating folder results/results1/naif_rec/SR_$i.dat"
    sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so --mode=rr" verificarlo/verificarlo ./main "${x[$k]}" 0 > results/results$k/naif_rec/SR_$i.dat
    echo "# Creating folder results/results/naif_iter/SR_$i.dat"
    sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so --mode=rr" verificarlo/verificarlo ./main "${x[$k]}" 1 > results/results$k/naif_iter/SR_$i.dat
    echo "# Creating folder results/results/rapide_rec/SR_$i.dat"
    sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so --mode=rr" verificarlo/verificarlo ./main "${x[$k]}" 2 > results/results$k/rapide_rec/SR_$i.dat
    echo "# Creating folder results/results/rapide_iter/SR_$i.dat"
    sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so --mode=rr" verificarlo/verificarlo ./main "${x[$k]}" 3 > results/results$k/rapide_iter/SR_$i.dat
  done

  # Regroupement de toutes nos données SR dans le même fichier
  paste $(for i in $(seq 1 $NSAMPLES); do echo -n "results/results$k/naif_rec/SR_$i.dat "; done) > results/results$k/naif_rec/SR.dat
  paste $(for i in $(seq 1 $NSAMPLES); do echo -n "results/results$k/naif_iter/SR_$i.dat "; done) > results/results$k/naif_iter/SR.dat
  paste $(for i in $(seq 1 $NSAMPLES); do echo -n "results/results$k/rapide_rec/SR_$i.dat "; done) > results/results$k/rapide_rec/SR.dat
  paste $(for i in $(seq 1 $NSAMPLES); do echo -n "results/results$k/rapide_rec/SR_$i.dat "; done) > results/results$k/rapide_iter/SR.dat

  echo "# Creating folder results/results1/naif_rec/UR.dat"
  sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./main "${x[$k]}" 0 > results/results$k/naif_rec/UR.dat
  echo "# Creating folder results/results/naif_iter/UR.dat"
  sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./main "${x[$k]}" 1 > results/results$k/naif_iter/UR.dat
  echo "# Creating folder results/results/rapide_rec/UR.dat"
  sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./main "${x[$k]}" 2 > results/results$k/rapide_rec/UR.dat
  echo "# Creating folder results/results/rapide_iter/UR.dat"
  sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so" verificarlo/verificarlo ./main "${x[$k]}" 3 > results/results$k/rapide_iter/UR.dat

done

make clean
