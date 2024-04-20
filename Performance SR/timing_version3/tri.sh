#! /bin/bash

cat timeSR/res.dat | grep sum >> timeSR/sum.dat
cat timeSR/res.dat | grep naif >> timeSR/naif.dat
cat timeSR/res.dat | grep rapid >> timeSR/rapid.dat

cat timeRN/res.dat | grep sum >> timeRN/sum.dat
cat timeRN/res.dat | grep naif >> timeRN/naif.dat
cat timeRN/res.dat | grep rapid >> timeRN/rapid.dat