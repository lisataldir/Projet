#ifndef EXP_RAPIDE_H

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#include "exp_rapide.h"

#define EXP_RAPIDE_H
#endif



int main()
{
    TYPE x = 0.5;
    int i = 0;
    for(i = 0; i <= 53; i ++)
    {
        printf("recursive x = %f n = %d result =\t%f\t", x, i, exp_rapide_rec(i, x));
        printf("iterative x = %f n = %d result =\t%f\n", x, i, exp_rapide_iter(i, x));
    }
    return 0;
}