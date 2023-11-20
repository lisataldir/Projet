#include "algo.h"
#include <stdlib.h>
#include <time.h>
#include <math.h>

double exp_naif(double const x, int n){
    
    if (n==0){
        return 1;
    }
    
    else if(n>0){
        return exp_naif( x, n-1)*x;
        }
    
    else if(n<0){
        return 1/x * exp_naif( x, n+1);
       }
    return 0;
    }



double exp_rapide(double const x, int n){
    
    double res=0;
    
    if(n==0){
        return 1;
    }
    else if(n>0){
        
        double exp_half =exp_rapide(x,n/2);
        
        if (n & 1) {
            res = x * exp_half * exp_half;
        }
        res = exp_half * exp_half;
    }
    else if(n<0) {
        double exp_half =1/exp_rapide(x,-n/2);
        if (-n & 1) {
            res = (1/x) * exp_half * exp_half;
        }
        res = exp_half * exp_half;
        
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
