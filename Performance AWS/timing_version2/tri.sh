#! /bin/bash

#nb_iter=20

cat timing_SR/raw_res.dat | grep sum >> timing_SR/raw_sum.dat
cat timing_SR/raw_res.dat | grep naif >> timing_SR/raw_naif.dat
cat timing_SR/raw_res.dat | grep rapid >> timing_SR/raw_rapid.dat

cat timing_UR/raw_res.dat | grep sum >> timing_UR/raw_sum.dat
cat timing_UR/raw_res.dat | grep naif >> timing_UR/raw_naif.dat
cat timing_UR/raw_res.dat | grep rapid >> timing_UR/raw_rapid.dat

python3 traitement_donnees.py

