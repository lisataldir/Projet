#! /bin/bash

echo "# Creating subdirectory timeSR/ and timeRN/"
mkdir -p timeSR/ timeRN/

echo "Start of the experience with RN"
NEURON_RT_STOCHASTIC_ROUNDING_EN=0 python3 performance.py > timeRN/res.dat
echo "End of the experience with RN"

echo "Start of the experience with SR"
NEURON_RT_STOCHASTIC_ROUNDING_EN=1 python3 performance.py > timeSR/res.dat
echo "SEnd of the experience with SR"
