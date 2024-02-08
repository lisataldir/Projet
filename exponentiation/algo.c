#include "algo.h"

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
    double res = 1;
    while(n > 0)
    {
        if(n & 1 == 1)
        {
            res = res * x;
        }
    x = x * x;
    n = n >> 1;
    }
    return res;
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
    float tmp;
    if(n == 0){
        return 1;
    } else if(n == 1) {
        return x;
    } else if(n % 2 == 0) {
        tmp = exp_rr(n>>1, x);
        return tmp * tmp;
    } else {
        tmp = exp_rr(n>>1, x);
        return x * tmp * tmp;
    }
}

float exp_ri(float x, int n)
{
    float res = 1;
    while(n > 0)
    {
        if(n & 1 == 1)
        {
            res = res * x;
        }
    x = x * x;
    n = n >> 1;
    }
    return res;
}
