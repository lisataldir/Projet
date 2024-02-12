#include <stdio.h>
#include <stdlib.h>
#include <math.h>

// Référence
double ref_exp(double x, int n)
{
    double r = 1;
    for(int i = 0; i < n; i++)
    {
        r *=x;
    }
    return r;
}

// Version float
float exp_ni(float x, int n)
{
    float r = 1;
    for(int i = 0; i < n; i++)
    {
        r *=x;
    }
    return r;
}

float exp_nr(float x, int n)
{
    if (n==0) 
    {
        return 1;
    }
    return x * exp_nr(x, n-1);
}

float exp_rr(float x, int n)
{
    float tmp;
     if(n == 0) return 1;

    if(n % 2 == 0) {
        tmp = exp_rr(x, n/2);
        return tmp * tmp;
    } else {
        tmp = exp_rr(x, (n-1)/2);
        return x * tmp * tmp;
    }
}

float exp_ri(float x, int n)
{
    float r=1;

    while(n!=0){
        
        if((n&1)==1){
            r = r*x;
        }
        x =x*x;
        n = n >> 1;
    }
    return r;
}

int main(int argc, char** argv){

    if (argc < 3){
        printf("%s usage : [x], [ind]", argv[0]);
        return 1;
    }

    double x = atof(argv[1]);
    int ind = atoi(argv[2]);
    int N = 151;

    float err_nr, err_ni, err_rr, err_ri;
    float tmp;

    if (ind == 0) {
        for (int n = 0; n < N; n++){
            tmp = ref_exp(x, n);
            err_nr = fabs((tmp - exp_nr(x, n)) / tmp);
            printf("%f\n", err_nr);
        }
    } else if (ind == 1) {
        for (int n = 0; n < N; n++){
            tmp = ref_exp(x, n);
            err_ni = fabs((tmp - exp_ni(x, n)) / tmp);
            printf("%f\n", err_ni);
        }
    } else if (ind == 2) {
        for (int n = 0; n < N; n++){
            tmp = ref_exp(x, n);
            err_rr = fabs((tmp - exp_rr(x, n)) / tmp);
            printf("%f\n", err_rr);
        }
    } else if (ind == 3) {
        for (int n = 0; n < N; n++){
            tmp = ref_exp(x, n);
            err_ri = fabs((tmp - exp_ri(x, n))/ tmp);
            printf("%f\n", err_ri);
        }
    }

    return 0;
}