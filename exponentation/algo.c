#include <stdio.h>
#include <stdlib.h>
#include "algo.h"

// version double
double ref_exp_ni(double x, int n){
    double r = 1;
    for(int i = 0; i < n; i++)
    {
        r *=x;
    }
    return r;
}

double ref_exp_nr(double x, int n){
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
    double res = 1;
    while(n > 0)
    {
        if(n & 1 == 0)
        {
            x = x * x;
            n = n >> 1;
        }
        else
        {
            res = res * x;
            x = x * x;
            n = n >> 1;
        }
    }
    return res;
}

// version float
float exp_ni(float x, int n){
    float r = 1;
    for(int i = 0; i < n; i++)
    {
        r *=x;
    }
    return r;
}

float exp_nr(float x, int n){
    if (n==0) {
        return 1;
    }
    return x*exp_naif_recursif(x, n-1);
}

float exp_rapide_recursif(float x, int n)
{
    float tmp;
    if(n == 0){
        return 1;
    } else if(n == 1) {
        return x;
    } else if(n % 2 == 0) {
        tmp = exp_rapide_recursif(n>>1, x);
        return tmp * tmp;
    } else {
        tmp = exp_rapide_recursif(n>>1, x);
        return x * tmp * tmp;
    }
}

float exp_rapide_iter(float x, int n)
{
    float res = 1;
    while(n > 0)
    {
        if(n & 1 == 0)
        {
            x = x * x;
            n = n >> 1;
        }
        else
        {
            res = res * x;
            x = x * x;
            n = n >> 1;
        }
    }
    return res;
}

int main(int argc, char** argv){

    if (argc < 3){
        printf("%s usage : [x], [ind]", argv[0]);
        return 1;
    }

    double x = atof(argv[1]);
    int ind = atoi(argv[2]);

    if (ind == 0) {
        for (int n = 0; n < 101; n++){
            printf("%.16lf\n", exp_naif_iter(x, n));
        }
    } else if (ind == 1) {
        for (int n = 0; n < 101; n++){
            printf("%.16lf\n", exp_naif_recursif(x, n));
        }
    } else if (ind == 2) {
        for (int n = 0; n < 101; n++){
            printf("%.16lf\n", exp_rapide_iter(x, n));
        }
    } else if (ind == 3) {
        for (int n = 0; n < 101; n++){
            printf("%.16lf\n", exp_rapide_recursif(x, n));
        }
    }

    return 0;
}