#ifndef EXP_RAPIDE_H

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#include "exp_rapide.h"

#define EXP_RAPIDE_H
#endif

int n = 100000000;
float x = 314.314;

int main()
{
    float err = fabs(exp_rapide(n, x) - exp_naive(n, x));
    printf("Error: %f\n", err);
    return 0;
}