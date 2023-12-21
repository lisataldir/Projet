#!bin/bash

#on supprime tous les fichiers dont on a plus besoin
rm -rf results/SR*.dat results/UR*.dat results/ref*.dat

#pour x=2
paste $(for i in {1..10}; do echo -n "results/errSR_x_2_$i.dat "; done) > results/errSR_x_2.dat

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
}' results/errSR_x_2.dat > results/errSR_x_2stat.dat

rm -rf results/errSR_x_2_*.dat results/errSR_x_2.dat

#pour x rand
paste $(for i in {1..10}; do echo -n "results/errSR_x_rand_$i.dat "; done) > results/errSR_x_rand.dat

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
}' results/errSR_x_rand.dat > results/errSR_x_randstat.dat

rm -rf results/errSR_x_rand_*.dat results/errSR_x_rand.dat

#pour x = 3.995
paste $(for i in {1..10}; do echo -n "results/errSR_x_3_995_$i.dat "; done) > results/errSR_x_3_995.dat

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
}' results/errSR_x_3_995.dat > results/errSR_x_3_995stat.dat

rm -rf results/errSR_x_3_995_*.dat results/errSR_x_3_995.dat