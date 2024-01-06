#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define MAX_LINE_LENGTH 200

int main(int argc, char ** argv) 
{
    if (argc != 5) 
    {
        fprintf(stderr, "Usage: %s <result_file> <reference_file> <error_i_file> <error_r_file>\n", argv[0]);
        return 1;
    }

    FILE *result = fopen(argv[1], "r");
    FILE *reference = fopen(argv[2], "r");
    FILE *error_i = fopen(argv[3], "w");
    FILE *error_r = fopen(argv[4], "w");
    if (result == NULL || reference == NULL || error_i == NULL || error_r == NULL) 
    {
        fprintf(stderr, "Error opening files\n");
        return 1;
    }


    char line1[MAX_LINE_LENGTH], line2[MAX_LINE_LENGTH];
    double res_iter, res_rec, ref;
    int nb;

    while (fgets(line1, sizeof(line1), result) != NULL && fgets(line2, sizeof(line2), reference) != NULL)
    {
        // Using sscanf to extract needed values from each line
        if (sscanf(line1, "%d", &nb) == 1 && sscanf(line2, "%*s %lf", &ref) == 1 && sscanf(line1, "%*s %*s %lf", &res_iter) == 1 && sscanf(line1, "%*s %lf", &res_rec) == 1)
        {
            // Calculate the absolute difference
            double err_iter = fabs( (res_iter - ref) / ref );
            double err_rec = fabs( (res_rec - ref) / ref );

            // Write the absolute difference to the output file
            fprintf(error_i, "%d\t%lf\n", nb, err_iter);
            fprintf(error_r, "%d\t%lf\n", nb, err_rec);
        } 
        else 
        {
            perror("Error extracting values from lines");
            fclose(result);
            fclose(reference);
            fclose(error_i);
            fclose(error_r);
            return 1;
        }
    }

    fclose(result);
    fclose(reference);
    fclose(error_i);
    fclose(error_r);

    printf("Process completed successfully.\n");

    return 0;
}


