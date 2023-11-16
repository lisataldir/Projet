#include "exp_rapide.h"

//recursive function
double exp_rapide(int n, double x)
{
    if(n == 0)
        return 1;
    else if(n == 1)
        return x;
    else if(n % 2 == 0)
        return exp_rapide(n/2, x) * exp_rapide(n/2, x);
    else
        return x * exp_rapide(n/2, x) * exp_rapide(n/2, x);

}

//the naive form supposed to be the reference
double exp_naive(int n, double x)
{
    double result = 1;
    int i;
    for(i = 0; i < n; i++)
    {
        result *= x;
    }
    return result;
}

