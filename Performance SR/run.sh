#! /bin/bash

echo "# Creating subdirectory timing_SR/ and timing_UR/"
rm -rf timing_SR/ timing_UR/
sleep 0.5
mkdir -p timing_SR/ timing_UR/

#nb_iter=1000

for i in {1..100}
do
echo "$i-ieme experience avec 1000 repetitions de calculs"
echo "RNE..."
NEURON_RT_STOCHASTIC_ROUNDING_EN=0 python3 performance.py 1000 >> timing_UR/raw_res.dat #RNE
echo "SR..."
NEURON_RT_STOCHASTIC_ROUNDING_EN=1 python3 performance.py 1000 >> timing_SR/raw_res.dat #SR
done
