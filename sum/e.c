#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define MAX_LINE_LENGTH 200

int main(int argc, char ** argv) 
{
    if (argc != 4) 
    {
        fprintf(stderr, "Usage: %s <result file> <reference file> <error file>\n", argv[0]);
        return 1;
    }

    FILE *result = fopen(argv[1], "r");
    FILE *reference = fopen(argv[2], "r");
    FILE *error = fopen(argv[3], "w");
    if (result == NULL || reference == NULL || error == NULL) 
    {
        fprintf(stderr, "Error opening files\n");
        return 1;
    }


    char line1[MAX_LINE_LENGTH], line2[MAX_LINE_LENGTH];
    double res_ni, ref_ni, res_nr, ref_nr, res_ri, ref_ri, res_rr, ref_rr;
    int nb;

    while (fgets(line1, sizeof(line1), result) != NULL && fgets(line2, sizeof(line2), reference) != NULL)
    {
        // Using sscanf to extract needed values from each line
        if (sscanf(line1, "%d", &nb) == 1 && sscanf(line1, "%*s %lf", &res_ni) == 1 && sscanf(line2, "%*s %lf", &ref_ni) == 1 && sscanf(line1, "%*s %*s %lf", &res_nr) == 1 && sscanf(line2, "%*s %*s %lf", &ref_nr) == 1 && sscanf(line1, "%*s %*s %*s %lf", &res_ri) == 1 && sscanf(line2, "%*s %*s %*s %lf", &ref_ri) == 1 && sscanf(line1, "%*s %*s %*s %*s %lf", &res_rr) == 1 && sscanf(line2, "%*s %*s %*s %*s %lf", &ref_rr) == 1)
        {
            // Calculate the absolute difference
            double err_nr = fabs( (res_nr - ref_nr) / ref_nr );
            double err_ni = fabs( (res_ni - ref_ni) / ref_ni );
            double err_rr = fabs( (res_rr - ref_rr) / ref_rr );
            double err_ri = fabs( (res_ri - ref_ri) / ref_ri );

            // Write the absolute difference to the output file
            fprintf(error, "%d\t%g\t%g\t%g\t%g\n", nb, err_ni, err_nr, err_ri, err_rr);
        } 
        else 
        {
            perror("Error extracting values from lines");
            fclose(result);
            fclose(reference);
            fclose(error);
            return 1;
        }
    }

    fclose(result);
    fclose(reference);
    fclose(error);

    printf("calculated successfully.\n");

    return 0;
}