#include "exp_rapide.h"

//recursive function
float exp_rapide(int n, float x)
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
float exp_naive(int n, float x)
{
    float result = 1;
    int i;
    for(i = 0; i < n; i++)
    {
        result *= x;
    }
    return result;
}

