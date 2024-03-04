#! /bin/bash

# Numérotation
awk '{
    print (NR-1)*5;
}' results/naif_rec/UR.dat > results/naif_rec/num.dat
paste "results/naif_rec/num.dat" "results/naif_rec/UR.dat" > results/naif_rec/URstat.dat
paste "results/naif_rec/num.dat" "results/naif_iter/UR.dat" > results/naif_iter/URstat.dat
paste "results/naif_rec/num.dat" "results/rapide_rec/UR.dat" > results/rapide_rec/URstat.dat
paste "results/naif_rec/num.dat" "results/rapide_iter/UR.dat" > results/rapide_iter/URstat.dat

# Regroupement de toutes nos données SR dans le même fichier
paste $(for i in {1..10}; do echo -n "results/naif_rec/SR_$i.dat "; done) > results/naif_rec/SR.dat
# Calcul de la moyenne
awk '{
    sum = 0;
    for (i = 1; i <= NF; i++) {
        sum += $i;
    }
    mean = sum / NF;
    print (NR-1)*5, mean;
}' results/naif_rec/SR.dat > results/naif_rec/SRstat.dat
rm -rf results/naif_rec/SR_*.dat results/naif_rec/SR.dat results/naif_rec/UR.dat

paste $(for i in {1..10}; do echo -n "results/naif_iter/SR_$i.dat "; done) > results/naif_iter/SR.dat
awk '{
    sum = 0;
    for (i = 1; i <= NF; i++) {
        sum += $i;
    }
    mean = sum / NF;
    print (NR-1)*5, mean;
}' results/naif_iter/SR.dat > results/naif_iter/SRstat.dat
rm -rf results/naif_iter/SR_*.dat results/naif_iter/SR.dat results/naif_iter/UR.dat

paste $(for i in {1..10}; do echo -n "results/rapide_rec/SR_$i.dat "; done) > results/rapide_rec/SR.dat
awk '{
    sum = 0;
    for (i = 1; i <= NF; i++) {
        sum += $i;
    }
    mean = sum / NF;
    print (NR-1)*5, mean;
}' results/rapide_rec/SR.dat > results/rapide_rec/SRstat.dat
rm -rf results/rapide_rec/SR_*.dat results/rapide_rec/SR.dat results/rapide_rec/UR.dat

paste $(for i in {1..10}; do echo -n "results/rapide_iter/SR_$i.dat "; done) > results/rapide_iter/SR.dat
awk '{
    sum = 0;
    for (i = 1; i <= NF; i++) {
        sum += $i;
    }
    mean = sum / NF;
    print (NR-1)*5, mean;
}' results/rapide_iter/SR.dat > results/rapide_iter/SRstat.dat
rm -rf results/rapide_iter/SR_*.dat results/rapide_iter/SR.dat results/rapide_iter/UR.dat

rm -rf results/naif_rec/num.dat