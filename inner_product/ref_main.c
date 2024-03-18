#include "algo.h"
#include <stdio.h>

int main(int argc, char** argv)
{
    if (argc != 4)
    {
        printf("Usage: %s <vector size> <vectors file> <reference file>\n", argv[0]);
        return 1;
    }

    int size_vec = atoi(argv[1]);
    double vec1[size_vec];
    double vec2[size_vec];
    FILE* vectors = fopen(atoi(argv[2]), "r");
    for (int i = 0; i < size_vec; i++)
    {
        fscanf(vectors, "%lf\t%lf\n", &vec1[i], &vec2[i]);
    }
    fclose(vectors);

    FILE* ref = fopen(atoi(argv[3]), "w");
    fprintf(ref, "%lf\n", ref_inner_product(vec1, vec2, size_vec));
    fclose(ref);
    
    return 0;
}