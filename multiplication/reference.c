#include "algo.h"
// version double
double ref_multi_ni(double x, int n)
{
    double r = 0;
    for(int i = 0; i < n; i++)
    {
        r += x;
    }
    return r;
}

double ref_multi_nr(double x, int n)
{
    if (n == 0)
    {
        return 0;
    }
    return x + ref_multi_nr(x, n-1);
}

double ref_multi_rr(double x, int n)
{
    double tmp;
    if(n == 0)
    {
        return 0;
    }
    else if(n % 2 == 0)
    {
        tmp = ref_multi_rr(x, n >> 1);
        return tmp + tmp;
    }
    else
    {
        tmp = ref_multi_rr(x, n >> 1);
        return x + tmp + tmp;
    }
}

double ref_multi_ri(double x, int n)
{
    double res = 0;
    while(n > 0)
    {
        if(n % 2 == 1)
        {
            res = res + x;
        }
        x = x + x;
        n = n >> 1;
    }
    return res;
}
