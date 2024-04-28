#! /bin/bash

echo "# Creating subdirectory timing_SR/ and timing_UR/"
rm -rf timing_SR/ timing_UR/
sleep 0.5
mkdir -p timing_SR/ timing_UR/

#nb_iter=20

for i in {1..33}
do
echo "$i-ieme experience avec 1000 repetitions de calculs"
NEURON_RT_STOCHASTIC_ROUNDING_EN=1 python3 performance.py 20 >> timing_SR/raw_res.dat #RNE
NEURON_RT_STOCHASTIC_ROUNDING_EN=0 python3 performance.py 20 >> timing_UR/raw_res.dat #SR
done

