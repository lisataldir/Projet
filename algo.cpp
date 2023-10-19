#include "algo.h"
#include <stdlib.h>
#include <time.h>

double exp_naif(double const x, int n){
    double res = 1 ;
    for (int i=0;i<n;++i){
        res = res*x;
    }
    return res;
}

double exp_rapide(double const x, int n){
    
    double res = 1 ; //initialisation du resultat
    
    if(n==0){return 1;}
    
    int r = n%2;
    int p = n/2;
    
    //verifions si l'exposant est divisbile par deux
    if (r==0) {//Oui, ie: x^n = x^2p
        res=exp_naif(x,p)*exp_naif(x,p);
        //on divise le calcul initial en 2 calculs parallels
    }
    
    if (r==1) {//Non, ie: x^n = x^2p*x
        res=exp_naif(x,p)*exp_naif(x,p)*x;
        //analogiquement
    }
    return res;
}

int main(int argc, char **argv){
    
    double x = strtol(argv[1], NULL, 10);
    int n = strtol(argv[2], NULL, 10);
    
    clock_t begin_r1 = clock();
    double r1 = exp_naif( x,  n);
    clock_t end_r1 = clock();
    
    clock_t begin_r2 = clock();
    double r2 = exp_rapide( x,  n);
    clock_t end_r2 = clock();
    
    unsigned long millis1 = (end_r1 -  begin_r1) * 1000 / CLOCKS_PER_SEC;
    unsigned long millis2 = (end_r2 -  begin_r2) * 1000 / CLOCKS_PER_SEC;
    
    
    printf("exp_naif de %f^%d est : %f \n", x,n,r1);
    printf( "exp_naif done in %ld ms\n", millis1 );
    
    printf("exp_rapide de %f^%d est : %f \n", x,n,r2);
    printf( "exp_rapide done in %ld ms\n", millis2 );
    
    
    return 0;
}
