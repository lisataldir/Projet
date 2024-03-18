#include "algo.h"

double ref_inner_product(double* vec1, double* vec2, int size_vec)
{
    double result = 0;
    for (int i = 0; i < size_vec; i++)
    {
        result += vec1[i] * vec2[i];
    }
    return result;
}