#include "algo.h"
#include <stdlib.h>
#include <time.h>
#include <math.h>

double exp_naif(double const x, int n){
    double res = 1.0 ;
    if (n>0){
        for (int i=0;i<n;++i){
            res = res*x;
        }
    }
    if(n<0){
        n=-1*n;
        for (int i=0;i<n;++i){
            res = res*(1/x);
        }
    }
    return res;
}

double exp_rapide(double const x, int n){
    
    double res = 1.0 ; //initialisation du resultat
    
    if(n==0){return 1;}
    
    int r = n%2;
    int p = n/2;
    
    //verifions si l'exposant est divisbile par deux
    if (r==0) {//Oui, ie: x^n = x^2p
        res=exp_naif(x,p)*exp_naif(x,p);
        //on divise le calcul initial en 2 calculs parallels
    } else {//Non, ie: x^n = x^2p*x
        res=exp_naif(x,p)*exp_naif(x,p)*(1/x);
        //analogiquement
    }
    return res;
}

int main(int argc, char *argv[]){
    
    double x = atof(argv[1]);
    int n = atoi(argv[2]);
    bool check_time = atoi(argv[3]);
        
    if(check_time){
        clock_t begin_r1 = clock();
        double r1 = exp_naif( x,  n);
        clock_t end_r1 = clock();
        
        clock_t begin_r2 = clock();
        double r2 = exp_rapide( x,  n);
        clock_t end_r2 = clock();
        
        unsigned long millis1 = (end_r1 -  begin_r1) * 1000 / CLOCKS_PER_SEC;
        unsigned long millis2 = (end_r2 -  begin_r2) * 1000 / CLOCKS_PER_SEC;
        
        printf( "==========================\n");
        printf("exp_naif de %f^%d est : %f \n", x,n,r1);
        printf( "exp_naif done in %ld ms\n", millis1 );
        
        printf("exp_rapide de %f^%d est : %f \n", x,n,r2);
        printf( "exp_rapide done in %ld ms\n", millis2 );
        printf( "==========================\n");
    }else{
        double r1 = exp_rapide( x,  n);
        double r2 = exp_rapide( x,  n);
        printf("%f;%f\n", r1,r2);
    }
    
    return 0;
}
