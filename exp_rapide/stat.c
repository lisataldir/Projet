#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define MAX_LINE_LENGTH 50
#define NUM_FILES 20

int main(int argc, char * argv[]) 
{
    if (argc != NUM_FILES + 2) 
    {
        fprintf(stderr, "Usage: %s <err1> <err2> ... <err20> <output>\n", argv[0]);
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
    double err_values[NUM_FILES];
    int nb;
    double err_avg, err_std;

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
            if (sscanf(line[i], "%d %lf", &nb, &err_values[i]) == 2) 
            {
                valid_values ++;
            }
        }

        if (valid_values == NUM_FILES) 
        {
            err_avg = 0.0;
            for (int i = 0; i < NUM_FILES; ++i) 
            {
                err_avg += err_values[i];
            }
            err_avg /= NUM_FILES;

            err_std = 0.0;
            for (int i = 0; i < NUM_FILES; ++i) 
            {
                err_std += pow(err_values[i] - err_avg, 2);
            }
            err_std = sqrt(err_std / NUM_FILES);

            
            fprintf(output, "%d\t%g\t%g\n", nb, err_avg, err_std);
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

    printf("Process completed successfully.\n");

    return 0;
}