#!bin/bash

#on supprime tous les fichiers dont on a plus besoin
rm -rf results_*/SR*.dat results_*/UR*.dat results_*/ref*.dat

#pour x rand
paste $(for i in {1..10}; do echo -n "results_iteratif/errSR_x_rand_$i.dat "; done) > results_iteratif/errSR_x_rand.dat

#Calcul de la moyenne et de l'écart type
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
}' results_iteratif/errSR_x_rand.dat > results_iteratif/errSR_x_randstat.dat

rm -rf results_iteratif/errSR_x_rand_*.dat results_iteratif/errSR_x_rand.dat

paste $(for i in {1..10}; do echo -n "results_recursif/errSR_x_rand_$i.dat "; done) > results_recursif/errSR_x_rand.dat

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
}' results_recursif/errSR_x_rand.dat > results_recursif/errSR_x_randstat.dat

rm -rf results_recursif/errSR_x_rand_*.dat results_recursif/errSR_x_rand.dat


#pour x = 3.995
paste $(for i in {1..10}; do echo -n "results_iteratif/errSR_x_3_995_$i.dat "; done) > results_iteratif/errSR_x_3_995.dat

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
}' results_iteratif/errSR_x_3_995.dat > results_iteratif/errSR_x_3_995stat.dat

rm -rf results_iteratif/errSR_x_3_995_*.dat results_iteratif/errSR_x_3_995.dat

paste $(for i in {1..10}; do echo -n "results_recursif/errSR_x_3_995_$i.dat "; done) > results_recursif/errSR_x_3_995.dat

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
}' results_recursif/errSR_x_3_995.dat > results_recursif/errSR_x_3_995stat.dat

rm -rf results_recursif/errSR_x_3_995_*.dat results_recursif/errSR_x_3_995.dat