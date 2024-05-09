#include "algo.h"

double somme(double x, int n)
{
    double r = 0;
    for(int i = 0; i < n; i++)
    {
        r += x;
    }
    return r;
}

double exp_naif(double x, int n)
{
    double r = 1.0f;
    for(int i = 0; i < n; i++)
    {
        r *=x;
    }
    return r;
}

double exp_rapide(double x, int n)
{
    double r=1.0f;
    while(n!=0){
        if((n&1)==1){
            r = r*x;
        }
        x =x*x;
        n = n >> 1;
    }
    return r;
}

    
