#! /bin/bash

x=0.1

make
./performance "$x" 0 > RN_gcc_nr.dat
./performance "$x" 1 > RN_gcc_ni.dat
./performance "$x" 2 > RN_gcc_rr.dat
./performance "$x" 3 > RN_gcc_ri.dat

make clean