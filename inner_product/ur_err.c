#include "algo.h"
#include <stdio.h>
#include <math.h>
#include <string.h>


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
    double res, ref, err;
    fsacnf(result, "%lf", &res);
    fsacnf(reference, "%lf", &ref);
    fclose(result);
    fclose(reference);

    err = error(res, ref);
    fprintf(err, "%lf\n", err);
    fclose(err);

    return 0;
}