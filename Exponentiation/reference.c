#include "algo.h"

// version double
double ref_exp(double x, int n)
{
    double r = 1.0f;
    for(int i = 0; i < n; i++)
    {
        r *=x;
    }
    return r;
}
