//Ce fichier sert à calculer la valeur de x^n en double précision sans verificarlo, afin d'avoir une valeur de référence pour le calcul d'erreur

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>

double exp_naif_iter(double x, int n){
    double r = 1;
    for(int i = 0; i < n; i++)
    {
        r *=x;
    }
    return r;
}

int main(int argc, char** argv){

    //on intialise y en fonction des valeurs de x dans main.c
    double y = 0.25496529753085473;
    double tmp;

    for (int n = 0; n < 31; n++){
        tmp = exp_naif_iter(y, n);
        printf("%.17f\n", tmp);
    }

    return 0;
}