#include "algo.h"
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main(int argc, char** argv)
{
    if (argc != 6)
    {
        printf("Usage: %s <mode> <vector number> <vector size> <vectors> <result file>\n", argv[0]);
        return 1;
    }

    int ind = atoi(argv[1]);
    int vec_nb = atoi(argv[2]);
    int size_vec = atoi(argv[3]);
    
    float* vec = malloc(size_vec * sizeof(float));
    
    FILE* vectors;
    double val;

    switch (ind)
    {
    case 0: // random vectors
        vectors = fopen(argv[4], "r");
        for (int i = 0; i < size_vec; i++)
        {
            fscanf(vectors, "%lf\n", &val);
            vec[i] = (float)val;
        }
        fclose(vectors);
        break;
    
    case 1: // vectors with a constant value
        val = atof(argv[4]);
        for (int i = 0; i < size_vec; i++)
        {
            vec[i] = (float)val;
        }
        break;

    default:
        printf("Invalid mode\n");
        return 1;
    }   
    

    FILE* result = fopen(argv[5], "w");
    fprintf(result, "%.17lf\n", sum_prod(vec, vec_nb, size_vec));
    fclose(result);
    
    return 0;
}