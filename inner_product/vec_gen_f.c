#include <stdio.h>
#include <stdlib.h>

// write the vector of a fixed value to a file

int main(int argc, char** argv)
{
    if (argc != 4)
    {
        fprintf(stderr, "Usage: %s <vector size> <value> <vector file>\n", argv[0]);
        return 1;
    }
    int size = atoi(argv[1]);
    double x = atof(argv[2]);
    double vec[size] ;
    
    FILE* file = fopen(argv[3], "w");
    if (file == NULL)
    {
        fprintf(stderr, "Error opening file\n");
        return 1;
    }
    for (int i = 0; i < size; i++)
    {
        vec[i] = x;      
    }
    fprintf(file, "%lf\n", x);
    return 0;
}