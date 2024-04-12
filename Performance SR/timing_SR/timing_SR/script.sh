#! /bin/bash

cat raw_res.dat | grep sum >> results_sum.dat
cat raw_res.dat | grep naif >> results_naif.dat
cat raw_res.dat | grep rapid >> results_rapid.dat