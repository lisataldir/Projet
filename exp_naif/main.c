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

int main(int argc, char** argv){

   if (argc < 3){
        printf("%s usage : [x], [ind]", argv[0]);
        return 1;
    }
 
    float x = atof(argv[1]);
    int ind = atoi(argv[2]);
    
    if (ind == 0) {
        for (int n = 0; n < 101; n++){
            printf("%f\n", exp_naif_iter(x, n));
        }
    } else {
        for (int n = 0; n < 101; n++){
            printf("%f\n", exp_naif_recursif(x, n));
        }
    }

    return 0;
}
