#include "algo.h"
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main(int argc, char** argv)
{
    if (argc != 5)
    {
        printf("Usage: %s <mode> <vector number> <vector size> <vectors>\n", argv[0]);
        return 1;
    }

    int ind = atoi(argv[1]);
    int vec_nb = atoi(argv[2]);
    int size_vec = atoi(argv[3]);
    
    double* vecd = malloc(size_vec * sizeof(double));
    
    FILE* vectors;
    float val;

    switch (ind)
    {
    case 0: // random vectors
        vectors = fopen(argv[4], "r");
        for (int i = 0; i < size_vec; i++)
        {
            fscanf(vectors, "%f\n", &val);
            vecd[i] = (double)val;
        }
        fclose(vectors);
        break;
    
    case 1: // vectors with a constant value
        val = atof(argv[4]);
        for (int i = 0; i < size_vec; i++)
        {
            vecd[i] = (double)val;
        }
        break;

    default:
        printf("Invalid mode\n");        
        return 1;
    }   

    printf("%.17lf\n", ref_sum_prod(vecd, vec_nb, size_vec));
      
    return 0;
}