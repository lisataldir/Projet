#include "algo.h"

double ref_sum_prod(double *a, int vec_nb, int vec_size)
{
    double temp1 = 0.0;
    for (int i = 0; i < vec_size; i ++)
    {
        double temp2 = a[i];
        for (int j = 1; j < vec_nb; j ++)
        {
            temp2 *= a[i];            
        }
        temp1 += temp2;
    }
    return temp1;
}