#include <stdio.h>
#include <stdlib.h>
#include <time.h>
// write the vector of random values to a file
int main(int argc, char** argv)
{
    if (argc != 3)
    {
        fprintf(stderr, "Usage: %s <vector size> <vector file>\n", argv[0]);
        return 1;
    }
    int size = atoi(argv[1]);
    float a[size];
    FILE* file = fopen(argv[2], "w");
    if (file == NULL)
    {
        fprintf(stderr, "Error opening file\n");
        return 1;
    }
    srand(time(NULL));
    float lb = 0.9998f;
    float e = 0.0004f;
    for (int i = 0; i < size; i++)
    {
        a[i] = lb + (float)rand() / RAND_MAX * e; 
        // random number between 0.9998 and 1.0002: expectancy 1
        fprintf(file, "%.17lf\n", a[i]);
    }
    return 0;
}