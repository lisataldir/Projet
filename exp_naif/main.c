#include <stdio.h>
#include <stdlib.h>
#include <time.h>

double exp_naif_iter(double x, int n){
    double r = 1;
    for(int i = 0; i < n; i++)
    {
        r *=x;
    }
    return r;
}

int main(int argc, char** argv){

    //random number between 0 and 3
    srand(time(NULL));
    double x = (double)rand()/RAND_MAX*3;

    double tmp;
    for (int n = 0; n < 31; n++){
        tmp = exp_naif_iter(x, n);
        // calcul en simple précision
        printf("%.16f\n", tmp);
    }
    return 0;
}
