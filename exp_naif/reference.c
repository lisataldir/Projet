//Ce fichier sert à calculer la valeur de x^n en double précision sans verificarlo, afin d'avoir une valeur de référence pour le calcul d'erreur

#include <stdio.h>
#include <stdlib.h>

double exp_naif_iter(double x, int n){
    double r = 1;
    for(int i = 0; i < n; i++)
    {
        r *=x;
    }
    return r;
}

int main(int argc, char** argv){

    if (argc < 2){
        printf("%s usage : [x]", argv[0]);
    }

    //on intialise y en fonction des valeurs de x
    char *endptr;
    double y = strtod(argv[1], &endptr);
    double tmp;

    //calcul de y^n, on garde les 32 premieres décimales (double précision)
    for (int n = 0; n < 31; n++){
        tmp = exp_naif_iter(y, n);
        printf("%.32f\n", tmp);
    }

    return 0;
}