#ifndef EXP_RAPIDE_H

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#include "exp_rapide.h"

#define EXP_RAPIDE_H
#endif



int main()
{
    TYPE x = 2.0;
    int i = 0;
    for(i = 0; i <= 52; i ++)
    {
        printf("%d\t%f\t%f\n", i, exp_rapide_rec(i, x), exp_rapide_iter(i, x));
    }
    return 0;
}