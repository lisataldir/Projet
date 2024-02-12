#!bin/bash

# Regroupement de toutes nos données SR dans le même fichier
paste $(for i in {1..10}; do echo -n "results/naif_rec/SR_$i.dat "; done) > results/naif_rec/SR.dat
# Calcul de la moyenne et de l'écart type
awk '{
    sum = 0;
    sumsq = 0;
    for (i = 2; i <= NF; i += 2) {
        sum += $i;
        sumsq += $i^2;
    }
    mean = sum / (NF / 2);
    stdev = sqrt(sumsq / (NF / 2) - (mean^2));
    print mean, stdev;
}' results/naif_rec/SR.dat > results/naif_rec/SR_stat.dat


paste $(for i in {1..10}; do echo -n "results/naif_iter/SR_$i.dat "; done) > results/naif_iter/SR.dat
awk '{
    sum = 0;
    sumsq = 0;
    for (i = 2; i <= NF; i += 2) {
        sum += $i;
        sumsq += $i^2;
    }
    mean = sum / (NF / 2);
    stdev = sqrt(sumsq / (NF / 2) - (mean^2));
    print mean, stdev;
}' results/naif_iter/SR.dat > results/naif_iter/SR_stat.dat

paste $(for i in {1..10}; do echo -n "results/rapide_rec/SR_$i.dat "; done) > results/rapide_rec/SR.dat
awk '{
    sum = 0;
    sumsq = 0;
    for (i = 2; i <= NF; i += 2) {
        sum += $i;
        sumsq += $i^2;
    }
    mean = sum / (NF / 2);
    stdev = sqrt(sumsq / (NF / 2) - (mean^2));
    print mean, stdev;
}' results/rapide_rec/SR.dat > results/rapide_rec/SR_stat.dat

paste $(for i in {1..10}; do echo -n "results/rapide_iter/SR_$i.dat "; done) > results/rapide_iter/SR.dat
awk '{
    sum = 0;
    sumsq = 0;
    for (i = 2; i <= NF; i += 2) {
        sum += $i;
        sumsq += $i^2;
    }
    mean = sum / (NF / 2);
    stdev = sqrt(sumsq / (NF / 2) - (mean^2));
    print mean, stdev;
}' results/rapide_iter/SR.dat > results/rapide_iter/SR_stat.dat