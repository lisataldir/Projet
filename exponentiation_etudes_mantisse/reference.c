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
    if(n == 0) return 1;

    if(n % 2 == 0) {
        tmp = ref_exp_rr(x, n/2);
        return tmp * tmp;
    } else {
        tmp = ref_exp_rr(x, (n-1)/2);
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
