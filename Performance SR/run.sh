#! /bin/bash

echo "# Creating subdirectory timing_SR/ and timing_UR/"
rm -rf timing_SR/ timing_UR/
sleep 0.5
mkdir -p timing_SR/ timing_UR/

#nb_iter=1000

for i in {1..33}
do
echo "$i-ieme experience de 1000 repetitions de calculs"
NEURON_RT_STOCHASTIC_ROUNDING_EN=0 python3 performance.py 1000 >> timing_UR/raw_res.dat #UR
NEURON_RT_STOCHASTIC_ROUNDING_EN=1 python3 performance.py 1000 >> timing_SR/raw_res.dat #SR
done

for mode in "timing_UR" "timing_SR"
do
for algo in "naif" "rapid"
do
grep "$algo" "$mode"/raw_res.dat >> "$mode"/raw_"$algo".dat
done
done

python3 traitement_donnees.py 1000
