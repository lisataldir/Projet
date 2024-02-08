#include <stdio.h>
#include <stdlib.h>


float exp_naif_iter(float x, int n){
    float r = 1;
    for(int i = 0; i < n; i++)
    {
        r *=x;
    }
    return r;
}

float exp_naif_recursif(float x, int n){
    if (n==0) {
        return 1;
    }
    return x*exp_naif_recursif(x, n-1);
}

float exp_rapide_recursif(int n, float x)
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
float exp_rapide_iter(int n, float x)
{
    float res = 1;
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
 
    float x = atof(argv[1]);
    int ind = atoi(argv[2]);
    
    if (ind == 0) {
        for (int n = 0; n < 101; n++){
            printf("%f\n", exp_rapide_iter(x, n));
        }
    } else {
        for (int n = 0; n < 101; n++){
            printf("%f\n", exp_rapide_recursif(x, n));
        }
    }

    return 0;
}
