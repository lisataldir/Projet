#! /bin/bash

NSAMPLES=33

for k in {0..2}
do
# Numérotation
awk '{
    print (NR-1)*1000;
}' results$k/UR.dat > results$k/num.dat
paste "results$k/num.dat" "results$k/UR.dat" > results$k/URstat.dat

# Regroupement de toutes nos données SR dans le même fichier
paste $(for i in $(seq 1 $NSAMPLES); do echo -n "results$k/SR_$i.dat "; done) > results$k/SR.dat
awk '{
    sum = 0;
    for (i = 1; i <= NF; i++) {
        sum += $i;
    }
    mean = sum / NF;
    print (NR-1)*1000, mean;
}' results$k/SR.dat > results$k/SRstat.dat
#rm -rf results$k/SR_*.dat results$k/SR.dat results$k/UR.dat

#rm -rf results$k/num.dat

done
