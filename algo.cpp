#include "algo.h"

double exp_naif_rec(double x, int n){
    if (n==0){
        return 1;
    }
    return exp_naif_rec( x, n-1)*x;
}

double exp_naif_iter(double x, int n){
    return 0;
}


double exp_rapid_rec(double x, int n)
{
    double r = 0;

    if(n == 0)
        r = 1;
    else if(n == 1)
        r = x;
    else if(n % 2 == 0)
        r = exp_rapid_rec(x, n/2) * exp_rapid_rec(x, n/2);
    else
        r = x * exp_rapid_rec(x, n/2) * exp_rapid_rec(x, n/2);
    
    return r;
}

double exp_rapid_iter(double x, int n){
    double r=1;
    double a=x;//a temporaire

    while(n!=0){
        
        if((n&1)==1){
            r = r*a;
        }
        a =a*a;
        n = n >> 1;
    }
    return r;
}

