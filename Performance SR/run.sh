#! /bin/bash

echo "# Creating subdirectory timing_SR/ and timing_UR/"
rm -rf timing_SR/ timing_UR/
sleep 0.5
mkdir -p timing_SR/ timing_UR/

for i in {1..20}
do
echo "# Testing"
python3 performance.py >> timing_UR/raw_res.dat

echo "# Creating folder timing_UR/raw_res.dat"
#NEURON_RT_STOCHASTIC_ROUNDING_EN=0 python3 preformance.py >> timing_UR/raw_res.dat #UR
echo "# Creating folder timing_SR/raw_res.dat"
#NEURON_RT_STOCHASTIC_ROUNDING_EN=1 python3 preformance.py >> timing_SR/raw_res.dat #SR
done


