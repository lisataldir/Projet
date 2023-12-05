#!bin/bash

for i in {1..5}
do
    gcc reference.c -o reference
    x=$(sed -n '2p' results/output$i.dat)
    echo "# Creating folder ref$i.dat inside results"
    ./reference "$x" >> results/ref$i.dat
done

rm -rf reference.o reference