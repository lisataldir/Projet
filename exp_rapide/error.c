#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main() 
{
    FILE *file1 = fopen("rapid_2.0_double.dat", "r");
    if (file1 == NULL) 
    {
        perror("Error opening rapid_2.0_double.dat");
        return 1;
    }

    //printf("File1 opened successfully.\n");

    FILE *file2 = fopen("../reference_data_py/2.0_double.dat", "r");
    if (file2 == NULL)
    {
        perror("Error opening 2.0_double.dat");
        fclose(file1);
        return 1;
    }

    //printf("File2 opened successfully.\n");

    FILE *file3 = fopen("error_iter_2.0_double.dat", "w");
    if (file3 == NULL) 
    {
        perror("Error opening error_iter_2.0_double.dat");
        fclose(file1);
        fclose(file2);
        return 1;
    }

    //printf("File3 opened successfully.\n");

    char line1[150], line2[100], line3[100];
    double value1, value2;
    int value3;

    while (fgets(line1, sizeof(line1), file1) != NULL && fgets(line2, sizeof(line2), file2) != NULL && fgets(line3, sizeof(line3), file2) != NULL)
    {
        // Using sscanf to extract needed values from each line
        if (sscanf(line1, "%*s %*s %*s %*s %*s %*s %*s %*s %*s %*s %*s %*s %*s %*s %*s %*s %*s %*s %*s %lf", &value1) == 1 && sscanf(line2, "%*s %lf", &value2) == 1 && sscanf(line2, "%d", &value3) == 1)
        {
            // Calculate the absolute difference
            double err = fabs(value1 - value2);

            // Write the absolute difference to the third file
            fprintf(file3, "%d\t%lf\n", value3, err);
        } 
        else 
        {
            perror("Error extracting values from lines");
            fclose(file1);
            fclose(file2);
            fclose(file3);
            return 1;
        }
    }

    fclose(file1);
    fclose(file2);
    fclose(file3);

    printf("Process completed successfully.\n");

    return 0;
}


