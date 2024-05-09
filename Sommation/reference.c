#include "algo.h"
// version double
double ref_multi(double x, int n)
{
    double r = 0;
    for(int i = 0; i < n; i++)
    {
        r += x;
    }
    return r;
}
