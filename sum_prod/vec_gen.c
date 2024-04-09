#include <stdio.h>
#include <stdlib.h>

// write the vector of random values to a file

int main(int argc, char** argv)
{
    if (argc != 3)
    {
        fprintf(stderr, "Usage: %s <vector size> <vector file>\n", argv[0]);
        return 1;
    }
    int size = atoi(argv[1]);
    double a[size];
    FILE* file = fopen(argv[2], "w");
    if (file == NULL)
    {
        fprintf(stderr, "Error opening file\n");
        return 1;
    }
    for (int i = 0; i < size; i++)
    {
        a[i] = (double)rand() * 2 / (double)RAND_MAX; // random number between 0 and 2: expectancy 1
        fprintf(file, "%.17lf\n", a[i]);
    }
    return 0;
}