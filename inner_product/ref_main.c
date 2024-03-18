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
    double vec1[size_vec];
    double vec2[size_vec];
    

    switch (ind)
    {
    case 0: // random vectors
        FILE* vectors = fopen(atoi(argv[3]), "r");
        for (int i = 0; i < size_vec; i++)
        {
            fscanf(vectors, "%.17f\t%.17f\n", &vec1[i], &vec2[i]);
        }
        fclose(vectors);
        break;
    
    case 1: // vectors with a constant value
        double val = atof(argv[3]);
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
    

    FILE* ref = fopen(atoi(argv[4]), "w");
    fprintf(ref, "%.17f\n", ref_inner_product(vec1, vec2, size_vec));
    fclose(ref);
    
    return 0;
}