#include <stdio.h>
#include <stdlib.h>
#include <math.h>

// version double
double ref_exp_ni(double x, int n)
{
    double r = 1;
    for(int i = 0; i < n; i++)
    {
        r *=x;
    }
    return r;
}

double ref_exp_nr(double x, int n)
{
    if (n==0) {
        return 1;
    }
    return x*ref_exp_nr(x, n-1);
}

double ref_exp_rr(double x, int n)
{
    double tmp;
    if(n == 0){
        return 1;
    } else if(n == 1) {
        return x;
    } else if(n % 2 == 0) {
        tmp = ref_exp_rr(n>>1, x);
        return tmp * tmp;
    } else {
        tmp = ref_exp_rr(n>>1, x);
        return x * tmp * tmp;
    }
}

double ref_exp_ri(double x, int n)
{
    double r=1;

    while(n!=0){
        
        if((n&1)==1){
            r = r*x;
        }
        x =x*x;
        n = n >> 1;
    }
    return r;
}

// version float
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
     if(n == 0)
        return 1;
    else if(n == 1)
        return x;
    else if(n % 2 == 0)
        return exp_rr(n/2, x) * exp_rr(n/2, x);
    else
        return x * exp_rr(n/2, x) * exp_rr(n/2, x);
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

    float err_nr, err_ni, err_rr, err_ri;
    float tmp;

    if (ind == 0) {
        for (int n = 0; n < 101; n++){
            tmp = ref_exp_nr(x, n);
            err_nr = fabs((tmp - exp_nr(x, n)) / tmp);
            printf("%.8f\n", err_nr);
        }
    } else if (ind == 1) {
        for (int n = 0; n < 101; n++){
            tmp = ref_exp_ni(x, n);
            err_ni = fabs((tmp - exp_ni(x, n)) / tmp);
            printf("%.8f\n", err_ni);
        }
    } else if (ind == 2) {
        for (int n = 0; n < 101; n++){
            tmp = ref_exp_rr(x, n);
            err_rr = fabs((tmp - exp_rr(x, n)) / tmp);
            printf("%.8f\n", err_rr);
        }
    } else if (ind == 3) {
        for (int n = 0; n < 101; n++){
            tmp = ref_exp_ri(x, n);
            err_ri = fabs((tmp - exp_ri(x, n))/ tmp);
            printf("%.8f\n", err_ri);
        }
    }

    return 0;
}