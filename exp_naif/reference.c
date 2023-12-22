//Ce fichier sert à calculer la valeur de x^n en double précision, afin d'avoir une valeur de référence pour le calcul d'erreur

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

double exp_naif_recursif(double x, int n){
    if (n==0) {
        return 1;
    }
    return x*exp_naif_recursif(x, n-1);
}

int main(int argc, char** argv){

    if (argc < 2){
        printf("%s usage : [x]", argv[0]);
    }

    double x = atof(argv[1]);
    double tmp;
    for (int n = 0; n < 101; n++){
        tmp = exp_naif_recursif(x, n);
        printf("%lf\n", tmp);
    }

    return 0;
}