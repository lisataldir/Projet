#! /bin/bash

NSAMPLES=33

for k in {0..7}
do
# Numérotation
awk '{
    print (NR-1)*500;
}' results/results$k/naif_rec/UR.dat > results/results$k/naif_rec/num.dat
paste "results/results$k/naif_rec/num.dat" "results/results$k/naif_rec/UR.dat" > results/results$k/naif_rec/URstat.dat
paste "results/results$k/naif_rec/num.dat" "results/results$k/naif_iter/UR.dat" > results/results$k/naif_iter/URstat.dat
paste "results/results$k/naif_rec/num.dat" "results/results$k/rapide_rec/UR.dat" > results/results$k/rapide_rec/URstat.dat
paste "results/results$k/naif_rec/num.dat" "results/results$k/rapide_iter/UR.dat" > results/results$k/rapide_iter/URstat.dat

# Regroupement de toutes nos données SR dans le même fichier
paste $(for i in $(seq 1 $NSAMPLES); do echo -n "results/results$k/naif_rec/SR_$i.dat "; done) > results/results$k/naif_rec/SR.dat
# Calcul de la moyenne
awk '{
    sum = 0;
    for (i = 1; i <= NF; i++) {
        sum += $i;
    }
    mean = sum / NF;
    print (NR-1)*500, mean;
}' results/results$k/naif_rec/SR.dat > results/results$k/naif_rec/SRstat.dat
#rm -rf results/results$k/naif_rec/SR_*.dat results/results$k/naif_rec/SR.dat results/results$k/naif_rec/UR.dat

paste $(for i in $(seq 1 $NSAMPLES); do echo -n "results/results$k/naif_iter/SR_$i.dat "; done) > results/results$k/naif_iter/SR.dat
awk '{
    sum = 0;
    for (i = 1; i <= NF; i++) {
        sum += $i;
    }
    mean = sum / NF;
    print (NR-1)*500, mean;
}' results/results$k/naif_iter/SR.dat > results/results$k/naif_iter/SRstat.dat
#rm -rf results/results$k/naif_iter/SR_*.dat results/results$k/naif_iter/SR.dat results/results$k/naif_iter/UR.dat

paste $(for i in $(seq 1 $NSAMPLES); do echo -n "results/results$k/rapide_rec/SR_$i.dat "; done) > results/results$k/rapide_rec/SR.dat
awk '{
    sum = 0;
    for (i = 1; i <= NF; i++) {
        sum += $i;
    }
    mean = sum / NF;
    print (NR-1)*500, mean;
}' results/results$k/rapide_rec/SR.dat > results/results$k/rapide_rec/SRstat.dat
#rm -rf results/results$k/rapide_rec/SR_*.dat results/results$k/rapide_rec/SR.dat results/results$k/rapide_rec/UR.dat

paste $(for i in $(seq 1 $NSAMPLES); do echo -n "results/results$k/rapide_iter/SR_$i.dat "; done) > results/results$k/rapide_iter/SR.dat
awk '{
    sum = 0;
    for (i = 1; i <= NF; i++) {
        sum += $i;
    }
    mean = sum / NF;
    print (NR-1)*500, mean;
}' results/results$k/rapide_iter/SR.dat > results/results$k/rapide_iter/SRstat.dat
#rm -rf results/results$k/rapide_iter/SR_*.dat results/results$k/rapide_iter/SR.dat results/results$k/rapide_iter/UR.dat

#rm -rf results/results$k/naif_rec/num.dat

done
