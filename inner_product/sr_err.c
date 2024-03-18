#include "algo.h"
#include <stdio.h>
#include <math.h>
#include <string.h>

double error(double result, double reference)
{
    return fabs((result - reference)/reference);
}

int main(int argc, char ** argv)
{
    if (argc != 3) 
    {
        fprintf(stderr, "Usage: %s <result file> <reference file>\n", argv[0]);
        return 1;
    }

    FILE *result = fopen(argv[1], "r");
    FILE *reference = fopen(argv[2], "r");
    if (result == NULL || reference == NULL) 
    {
        fprintf(stderr, "Error opening files\n");
        return 1;
    }
    double res, ref, err;
    fsacnf(result, "%.17f", &res);
    fsacnf(reference, "%.17f", &ref);
    fclose(result);
    fclose(reference);

    err = error(res, ref);
    printf("%.17f\n", err);

    return 0;
}