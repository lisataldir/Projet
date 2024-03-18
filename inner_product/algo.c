#include "algo.h"
#include <stdlib.h>
#include <math.h>

float inner_product(float* vec1, float* vec2, int size_vec)
{
    float result = 0;
    for (int i = 0; i < size_vec; i++)
    {
        result += vec1[i] * vec2[i];
    }
    return result;
}

