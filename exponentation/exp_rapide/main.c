#ifndef EXP_RAPIDE_H

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#include "exp_rapide.h"

#define EXP_RAPIDE_H
#endif



int main(int argc, char *argv[])
{
    if (argc < 2) 
    {
        printf("Usage: %s [x]\n", argv[0]);
        return 1;
    }

    TYPE x = atof(argv[1]);
    int i = 0;
    for(i = 0; i <= 200; i ++)
    {
        printf("%d\t%g\t%g\n", i, exp_rapide_rec(i, x), exp_rapide_iter(i, x));
    }
    return 0;
}