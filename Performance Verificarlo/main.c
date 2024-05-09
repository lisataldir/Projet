#include "algo.h"
#include <time.h>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main(int argc, char **argv)
{

    if (argc < 3)
    {
        printf("%s usage : [ind], [N]", argv[0]);
        return 1;
    }

    int ind = atoi(argv[1]);
    int N = atoi(argv[2]);

    double x = 0.999999;

    double res;
    clock_t start, end;
   
    for (int k = 0; k < 12; ++k)
    {
        switch (ind)
        {
        case 0:
            start = clock();
            res = somme(x, N);
            end = clock();
            break;
        case 1:
            start = clock();
            res = exp_naif(x, N);
            end = clock();
            break;
        case 2:
            start = clock();
            res = exp_rapide(x, N);
            end = clock();
            break;
        }
        if (k > 2) printf("%.17ld\n", end-start);
    }
    
    

    return 0;
}
