#ifndef EXP_RAPIDE_H
#define EXP_RAPIDE_H
#endif

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#include "exp_rapide.h"


int n = 100;
double x = 3.14;

int main()
{
    double err = fabs(exp_rapide(n, x) - exp_naive(n, x));
    printf("Error: %f\n", err);
    return 0;
}