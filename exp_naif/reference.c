//Ce fichier sert à calculer la valeur de x^n en double précision, afin d'avoir une valeur de référence pour le calcul d'erreur

#include <stdio.h>
#include <stdlib.h>


double exp_naif_iter(double x, int n){
    float r = 1;
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

    if (argc < 3){
        printf("%s usage : [x], [ind]", argv[0]);
        return 1;
    }

    double x = atof(argv[1]);
    int ind = atoi(argv[2]);

    if (ind == 0) {
        for (int n = 0; n < 101; n++){
            printf("%lf\n", exp_naif_iter(x, n));
        }
    } else {
        for (int n = 0; n < 101; n++){
            printf("%lf\n", exp_naif_recursif(x, n));
        }
    }
    

    return 0;
}