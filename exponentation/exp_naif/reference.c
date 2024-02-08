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

double exp_rapide_recursif(int n, double x)
{
    if(n == 0)
        return 1;
    else if(n == 1)
        return x;
    else if(n % 2 == 0)
        return exp_rapide_recursif(n/2, x) * exp_rapide_recursif(n/2, x);
    else
        return x * exp_rapide_recursif(n/2, x) * exp_rapide_recursif(n/2, x);

}

//iterative version
double exp_rapide_iter(int n, double x)
{
    double res = 1;
    while(n > 0)
    {
        if(n % 2 == 0)
        {
            x = x * x;
            n = n / 2;
        }
        else
        {
            res = res * x;
            x = x * x;
            n = (n - 1) / 2;
        }
    }
    return res;
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
            printf("%lf\n", exp_rapide_iter(x, n));
        }
    } else {
        for (int n = 0; n < 101; n++){
            printf("%lf\n", exp_rapide_recursif(x, n));
        }
    }
    

    return 0;
}