#include "algo.h"
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main(int argc, char** argv)
{
    if (argc != 5)
    {
        printf("Usage: %s <mode> <vector size> <vectors> <reference file>\n", argv[0]);
        return 1;
    }

    int ind = atoi(argv[1]);
    int size_vec = atoi(argv[2]);
    double* vec1;
    double* vec2;

    vec1 = malloc(size_vec * sizeof(double));
    vec2 = malloc(size_vec * sizeof(double));
    
    FILE* vectors;
    double val;
    double v1, v2;

    switch (ind)
    {
    case 0: // random vectors
        vectors = fopen(argv[3], "r");
        for (int i = 0; i < size_vec; i++)
        {
            fscanf(vectors, "%lf\t%lf\n", &v1, &v2);
            vec1[i] = v1;
            vec2[i] = v2;
        }
        fclose(vectors);
        break;
    
    case 1: // vectors with a constant value
        val = atof(argv[3]);
        for (int i = 0; i < size_vec; i++)
        {
            vec1[i] = val;
            vec2[i] = val;
        }
        break;

    default:
        printf("Invalid mode\n");
        return 1;
    }   
    

    FILE* ref = fopen(argv[4], "w");
    fprintf(ref, "%.17lf\n", ref_inner_product(vec1, vec2, size_vec));
    fclose(ref);
    
    return 0;
}