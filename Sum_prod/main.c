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
    
    float* vecf = malloc(size_vec * sizeof(float));
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
            vecf[i] = val;
            vecd[i] = (double)val;
        }
        fclose(vectors);
        break;
    
    case 1: // vectors with a constant value
        val = atof(argv[4]);
        for (int i = 0; i < size_vec; i++)
        {
            vecf[i] = val;
            vecd[i] = (double)val;
        }
        break;

    default:
        printf("Invalid mode\n");        
        return 1;
    }   
    
    float result = sum_prod(vecf, vec_nb, size_vec);
    double ref_result = ref_sum_prod(vecd, vec_nb, size_vec);
    double err = (double)fabs(((double)result - ref_result) / ref_result);
    printf("%.17lf\n", err);
      
    return 0;
}