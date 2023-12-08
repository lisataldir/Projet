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

int main(int argc, char** argv){

    if (argc < 2) {
        printf("Usage: %s [x]\n", argv[0]);
        return 1;
    }
 
    float x = atof(argv[1]);
    float tmp;
    for (int n = 0; n < 54; n++){
        tmp = exp_naif_iter(x, n);
        printf("%f\n", tmp);
    }

    return 0;
}
