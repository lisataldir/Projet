#include <stdio.h>
#include <math.h>
#include <string.h>

double error(double result, double reference)
{
    return fabs((result - reference)/reference);
}

int main(int argc, char ** argv)
{
    if (argc != 4) 
    {
        fprintf(stderr, "Usage: %s <result file> <reference file> <error file>\n", argv[0]);
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
    double res, ref, e;
    fscanf(result, "%lf", &res);
    fscanf(reference, "%lf", &ref);
    fclose(result);
    fclose(reference);

    e = error(res, ref);
    fprintf(err, "%.17lf\n", e);
    fclose(err);

    return 0;
}