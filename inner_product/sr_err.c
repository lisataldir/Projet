#include "algo.h"
#include <stdio.h>
#include <math.h>
#include <string.h>

int main(int argc, char** argv)
{
    if (argc != 5)
    {
        printf("Usage: %s <vector size> <vector file> <result file> <repeat times>\n", argv[0]);
        return 1;
    }

    FILE *result = fopen(argv[1], "r");
    FILE *reference = fopen(argv[2], "r");
    FILE *err = fopen(argv[3], "w");
    if (result == NULL || reference == NULL || err == NULL) 
    {
        fprintf(stderr, "Error opening files\n");
        return 1;
    }

    double ref;
    fsacnf(reference, "%lf", &ref);
    fclose(reference);

    
    

    return 0;
} 