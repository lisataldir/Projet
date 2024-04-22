#include "algo.h"
#include <time.h>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int Comparator ( const void * first, const void * second ) {
    int ifirst = * (const unsigned long long *) first;
    int isecond = * (const unsigned long long *) second;
    return (int) (ifirst - isecond);
}

int main(int argc, char **argv)
{

    if (argc < 2)
    {
        printf("%s usage : [ind]", argv[0]);
        return 1;
    }

    int ind = atoi(argv[1]);

    double x = 0.999999;
    int N = 10001;

    double res;
    clock_t start, end;

    unsigned long long *tab = malloc(sizeof(unsigned long long)*9);
    
    for (int n = 0; n < N; n+=750)
    {
        for (int k = 0; k < 12; ++k)
        {
            switch (ind)
            {
            case 0:
                start = clock();
                res = somme(x, n);
                end = clock();
                break;
            case 1:
                start = clock();
                res = exp_naif(x, n);
                end = clock();
                break;
            case 2:
                start = clock();
                res = exp_rapide(x, n);
                end = clock();
                break;
            }
            if (k > 2) tab[k-3] = end-start;
        }
        qsort(tab, 9, sizeof(unsigned long long), Comparator);
        printf("%d %.17llu\n", n, tab[4]);
    }
    
    return 0;
}
