#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main(int argc, char ** argv)
{
    FILE *file;
    double sum = 0.0, sum_squared_diff = 0.0, mean, std_dev, num;
    int count = 0;

    if (argc != 2) 
    {
        fprintf(stderr, "Usage: %s <source file>\n", argv[0]);
        return 1;
    }

    file = fopen(argv[1], "r");
    if (file == NULL) 
    {
        perror("Error opening file");
        return 1;
    }


    while (fscanf(file, "%lf", &num) == 1) 
    {
        sum += num;
        sum_squared_diff += num * num;
        count ++;
    }
    fclose(file);

    mean = sum / count;

    std_dev = sqrt((sum_squared_diff / count) - (mean * mean));

    printf("%.17lf\t%.17lf\n", mean, std_dev);
    return 0;   
}