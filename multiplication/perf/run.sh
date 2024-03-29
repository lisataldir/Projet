#! /bin/bash

x=0.1

make
./performance "$x" > RN_gcc.dat

make clean