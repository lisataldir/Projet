#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main(int argc, char ** argv) 
{
    FILE *file1 = fopen("result_data/rapid_1.11_UR.dat", "r");
    if (file1 == NULL) 
    {
        perror("Error opening rapid_1.11_UR.dat");
        return 1;
    }


    FILE *file2 = fopen("reference_data_py/1.11_default.dat", "r");
    if (file2 == NULL)
    {
        perror("Error opening reference_data_py/1.11_default.dat");
        fclose(file1);
        return 1;
    }


    FILE *file3 = fopen("error_data/err_rel_iter_1.11_UR.dat", "w");
    if (file3 == NULL) 
    {
        perror("Error opening error_data/err_rel_iter_1.11_UR.dat");
        fclose(file1);
        fclose(file2);
        return 1;
    }

    FILE *file4 = fopen("error_data/err_rel_rec_1.11_UR.dat", "w");
    if (file4 == NULL) 
    {
        perror("Error opening error_data/err_rel_rec_1.11_UR.dat");
        fclose(file1);
        fclose(file2);
        fclose(file3);
        return 1;
    }


    char line1[1000], line2[1000], line3[1000], line4[1000];
    double value1, value2, value4;
    int value3;

    while (fgets(line1, sizeof(line1), file1) != NULL && fgets(line2, sizeof(line2), file2) != NULL && fgets(line3, sizeof(line3), file2) != NULL && fgets(line4, sizeof(line4), file1) != NULL)
    {
        // Using sscanf to extract needed values from each line
        if (sscanf(line1, "%*s %*s %lf", &value1) == 1 && sscanf(line2, "%*s %lf", &value2) == 1 && sscanf(line2, "%d", &value3) == 1 && sscanf(line1, "%*s %lf", &value4) == 1)
        {
            // Calculate the absolute difference
            double err_iter = fabs(value1 - value2) / fabs(value2);
            double err_rec = fabs(value4 - value2) / fabs(value2);

            // Write the absolute difference to the third file
            fprintf(file3, "%d\t%f\n", value3, err_iter);
            fprintf(file4, "%d\t%f\n", value3, err_rec);
        } 
        else 
        {
            perror("Error extracting values from lines");
            fclose(file1);
            fclose(file2);
            fclose(file3);
            fclose(file4);
            return 1;
        }
    }

    fclose(file1);
    fclose(file2);
    fclose(file3);
    fclose(file4);

    printf("Process completed successfully.\n");

    return 0;
}


