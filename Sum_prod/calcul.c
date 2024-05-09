#include "algo.h"

float sum_prod(float *a, int vec_nb, int vec_size)
{
    float temp1 = 0.0f;
    
    for (int i = 0; i < vec_size; i ++)
    {
        float temp2 = a[i];
        for (int j = 1; j < vec_nb; j ++)
        {
            temp2 *= a[i];            
        }
        temp1 += temp2;
    }
    return temp1;
}