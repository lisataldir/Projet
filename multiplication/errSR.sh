#! /bin/bash

for k in {0..2}
do
# Numérotation
awk '{
    print (NR-1)*1000;
}' results$k/naif_rec/UR.dat > results$k/naif_rec/num.dat
paste "results$k/naif_rec/num.dat" "results$k/naif_rec/UR.dat" > results$k/naif_rec/URstat.dat
paste "results$k/naif_rec/num.dat" "results$k/naif_iter/UR.dat" > results$k/naif_iter/URstat.dat
paste "results$k/naif_rec/num.dat" "results$k/rapide_rec/UR.dat" > results$k/rapide_rec/URstat.dat
paste "results$k/naif_rec/num.dat" "results$k/rapide_iter/UR.dat" > results$k/rapide_iter/URstat.dat

# Regroupement de toutes nos données SR dans le même fichier
paste $(for i in {1..10}; do echo -n "results$k/naif_rec/SR_$i.dat "; done) > results$k/naif_rec/SR.dat
# Calcul de la moyenne
awk '{
    sum = 0;
    for (i = 1; i <= NF; i++) {
        sum += $i;
    }
    mean = sum / NF;
    print (NR-1)*1000, mean;
}' results$k/naif_rec/SR.dat > results$k/naif_rec/SRstat.dat
rm -rf results$k/naif_rec/SR_*.dat results$k/naif_rec/SR.dat results$k/naif_rec/UR.dat

paste $(for i in {1..10}; do echo -n "results$k/naif_iter/SR_$i.dat "; done) > results$k/naif_iter/SR.dat
awk '{
    sum = 0;
    for (i = 1; i <= NF; i++) {
        sum += $i;
    }
    mean = sum / NF;
    print (NR-1)*1000, mean;
}' results$k/naif_iter/SR.dat > results$k/naif_iter/SRstat.dat
rm -rf results$k/naif_iter/SR_*.dat results$k/naif_iter/SR.dat results$k/naif_iter/UR.dat

paste $(for i in {1..10}; do echo -n "results$k/rapide_rec/SR_$i.dat "; done) > results$k/rapide_rec/SR.dat
awk '{
    sum = 0;
    for (i = 1; i <= NF; i++) {
        sum += $i;
    }
    mean = sum / NF;
    print (NR-1)*1000, mean;
}' results$k/rapide_rec/SR.dat > results$k/rapide_rec/SRstat.dat
rm -rf results$k/rapide_rec/SR_*.dat results$k/rapide_rec/SR.dat results$k/rapide_rec/UR.dat

paste $(for i in {1..10}; do echo -n "results$k/rapide_iter/SR_$i.dat "; done) > results$k/rapide_iter/SR.dat
awk '{
    sum = 0;
    for (i = 1; i <= NF; i++) {
        sum += $i;
    }
    mean = sum / NF;
    print (NR-1)*1000, mean;
}' results$k/rapide_iter/SR.dat > results$k/rapide_iter/SRstat.dat
rm -rf results$k/rapide_iter/SR_*.dat results$k/rapide_iter/SR.dat results$k/rapide_iter/UR.dat

rm -rf results$k/naif_rec/num.dat

done
