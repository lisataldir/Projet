#include <stdio.h>
#include <stdlib.h>


int main(int argc, char** argv)
{
    double* a;
    double* b;
    if (argc != 3)
    {
        fprintf(stderr, "Usage: %s <vector size> <vector file>\n", argv[0]);
        return 1;
    }
    int size = atoi(argv[1]);
    a = (double*)malloc(size * sizeof(double));
    b = (double*)malloc(size * sizeof(double));
    FILE* file = fopen(argv[2], "w");
    if (file == NULL)
    {
        fprintf(stderr, "Error opening file\n");
        return 1;
    }
    for (int i = 0; i < size; i++)
    {
        a[i] = (double)rand() / (double)RAND_MAX;
        b[i] = (double)rand() / (double)RAND_MAX;
        fprintf(file, "%lf\t%lf\n", a[i], b[i]);
    }
    return 0;
}