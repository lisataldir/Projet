#include "algo.h"
#include <stdlib.h>
#include <time.h>
#include <math.h>

double exp_naif_recursif(double const x, int n){
    if (n==0){
        return 1;
    }else{
        return x*exp_naif_recursif(x, n-1);
    }
}

double exp_rapide_iteratif(double const x, int n){
    int n_init = n;
    int cnt = 0;
    double res = 1;
    if (n==0) {return 1;}
    
        
    while (n){
        printf("%d \n",n );
        res =res*res;
        printf(" n = %d, cnt =%d , n & 1 = %d, (n>>1 &1) = %d, (n_init<<cnt &1) =%d \n",n,cnt, n & 1 , n>>1 &1, n_init<<cnt &1);
        if ((n & 1) != 1 || (n>>1 &1) != 1 || (n_init<<cnt & 1) != 0){
            printf(" n = %d, get in \n",n );
            res =x*res;
        }
        n = n>>1;
        ++cnt;
        printf("res = %f \n", res );
    }
    return res;
}

int main(int argc, char *argv[]){
    double x= 2;
    int n = 13;
    double r = exp_rapide_iteratif( x, n);
    double rr = exp_rapide_iteratif( 2, 3);
    double rrr = exp_naif_recursif( 2, 13);
    printf("rrr = %f \n", rrr );
    printf("r = %f \n", r );
    return 0;
}
