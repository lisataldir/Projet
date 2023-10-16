#include "algo.h"
#include <stdlib.h>

double exp_naif(double const x, int n){
    double res = 1 ;
    for (int i=0;i<n;++i){
        res = res*x;
    }
    return res;
}

double exp_rapide(double const x, int n){
    if(n==0){return 0;}
    double res = 1 ;
    int r = n%2;
    int p = n/2;
    if (r==0) {
        res=exp_naif(x,p)*exp_naif(x,p);
    }
    if (r==1) {
        res=exp_naif(x,p)*exp_naif(x,p)*x;
    }
    return res;
}

int main(){
    double x = 2;
    int n = 3;
    double r1 = exp_naif( x,  n);
    double r2 = exp_rapide( x,  n);
    printf("exp_naif de %f^%d est : %f \n", x,n,r1);
    printf("exp_rapide de %f^%d est : %f \n", x,n,r2);
    return 0;
}
