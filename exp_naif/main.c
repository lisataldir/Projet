#include <stdio.h>
#include <stdlib.h>
#include <math.h>
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

    //random number between 0 and 5
    srand(time(NULL));
    double x = (double)rand()/RAND_MAX*5;

    double tmp;
    for (int n = 0; n < 51; n++){
        tmp = exp_naif_iter(x, n);
        printf("%f\n", tmp);
    }
    return 0;
}
