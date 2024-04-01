#include "algo.h"
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main(int argc, char** argv)
{
    if (argc != 5)
    {
        printf("Usage: %s <mode> <vector size> <vectors> <result file>\n", argv[0]);
        return 1;
    }

    int ind = atoi(argv[1]);
    int size_vec = atoi(argv[2]);

    float* vec = malloc(size_vec * sizeof(float));
    double val;

    FILE* vectors;

    switch (ind)
    {
    case 0: // random vectors
        vectors = fopen(argv[3], "r");
        for (int i = 0; i < size_vec; i++)
        {   
            fscanf(vectors, "%lf\n", &val);
            vec[i] = (float)val; 
        }
        fclose(vectors);
        break;
    
    case 1: // vectors with a constant value
        val = atof(argv[3]);
        for (int i = 0; i < size_vec; i++)
        {
            vec[i] = (float)val;
        }
        break;

    default:
        printf("Invalid mode\n");
        return 1;
    }   
    

    FILE* res = fopen(argv[4], "w");
    fprintf(res, "%.17lf\n", inner_product(vec, vec, size_vec));
    fclose(res);
    
    return 0;
}