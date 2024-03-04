#include "algo.h"
#include <stdlib.h>
#include <math.h>

double ref_inner_product(double* vec1, double* vec2, int size_vec)
{
    double result = 0;
    for (int i = 0; i < size_vec; i++)
    {
        result += vec1[i] * vec2[i];
    }
    return result;
}

float inner_product(float* vec1, float* vec2, int size_vec)
{
    float result = 0;
    for (int i = 0; i < size_vec; i++)
    {
        result += vec1[i] * vec2[i];
    }
    return result;
}

double error(double result, double reference)
{
    return fabs((result - reference)/reference);
}