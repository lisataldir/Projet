#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define MAX_LINE_LENGTH 200
#define NUM_FILES 100

int main(int argc, char * argv[]) 
{
    if (argc != NUM_FILES + 2) 
    {
        fprintf(stderr, "Usage: %s <err1> <err2> ... <err100> <output>\n", argv[0]);
        return 1;
    }
    
    FILE *err[NUM_FILES];
    for (int i = 0; i < NUM_FILES; i ++)
    {
        err[i] = fopen(argv[i + 1], "r");
        if (err[i] == NULL)
        {
            fprintf(stderr, "Error opening file %s\n", argv[i + 1]);
            for (int j = 0; j < i; ++ j) 
            {
                fclose(err[j]);
            }
            return 1;
        }
    }

    FILE *output = fopen(argv[NUM_FILES + 1], "w");
    if (output == NULL)
    {
        fprintf(stderr, "Error opening file %s\n", argv[NUM_FILES + 1]);
        for (int i = 0; i < NUM_FILES; ++ i) 
        {
            fclose(err[i]);
        }
        return 1;
    }

    char line[NUM_FILES][MAX_LINE_LENGTH];
    double err_ni[NUM_FILES];
    double err_nr[NUM_FILES];
    double err_ri[NUM_FILES];
    double err_rr[NUM_FILES];
    int nb;
    double err_avg_ni, err_std_ni, err_avg_nr, err_std_nr, err_avg_ri, err_std_ri, err_avg_rr, err_std_rr;

    while (1) 
    {
        for (int i = 0; i < NUM_FILES; ++i) 
        {
            if (fgets(line[i], sizeof(line[i]), err[i]) == NULL) 
            {
                fclose(output);
                for (int j = 0; j < NUM_FILES; ++j) 
                {
                    fclose(err[j]);
                }
                return 0;
            }
        }

        
        int valid_values = 0;
        for (int i = 0; i < NUM_FILES; ++ i) 
        {
            if (sscanf(line[i], "%d %lf %lf %lf %lf", &nb, &err_ni[i], &err_nr[i], &err_ri[i], &err_rr[i]) == 5) 
            {
                valid_values ++;
            }
        }

        if (valid_values == NUM_FILES) 
        {
            err_avg_ni = 0.0;
            err_avg_nr = 0.0;
            err_avg_ri = 0.0;
            err_avg_rr = 0.0;
            for (int i = 0; i < NUM_FILES; ++i) 
            {
                err_avg_ni += err_ni[i];
                err_avg_nr += err_nr[i];
                err_avg_ri += err_ri[i];
                err_avg_rr += err_rr[i];
            }
            err_avg_ni /= NUM_FILES;
            err_avg_nr /= NUM_FILES;
            err_avg_ri /= NUM_FILES;
            err_avg_rr /= NUM_FILES;

            err_std_ni = 0.0;
            err_std_nr = 0.0;
            err_std_ri = 0.0;
            err_std_rr = 0.0;
            for (int i = 0; i < NUM_FILES; ++i) 
            {
                err_std_ni += pow(err_ni[i] - err_avg_ni, 2);
                err_std_nr += pow(err_nr[i] - err_avg_nr, 2);
                err_std_ri += pow(err_ri[i] - err_avg_ri, 2);
                err_std_rr += pow(err_rr[i] - err_avg_rr, 2);
            }
            err_std_ni = sqrt(err_std_ni / NUM_FILES);
            err_std_nr = sqrt(err_std_nr / NUM_FILES);
            err_std_ri = sqrt(err_std_ri / NUM_FILES);
            err_std_rr = sqrt(err_std_rr / NUM_FILES);

            
            fprintf(output, "%d\t%g\t%g\t%g\t%g\t%g\t%g\t%g\t%g\n", nb, err_avg_ni, err_std_ni, err_avg_nr, err_std_nr, err_avg_ri, err_std_ri, err_avg_rr, err_std_rr);
        } 
        else 
        {
            perror("Error extracting values from lines");
            for (int i = 0; i < NUM_FILES; ++i) 
            {
                fclose(err[i]);
            }
            fclose(output);
            return 1;
        }
    }

    for (int i = 0; i < NUM_FILES; ++i) 
    {
        fclose(err[i]);
    }
    fclose(output);

    printf("calculated successfully.\n");

    return 0;
}