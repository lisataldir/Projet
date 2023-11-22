#include "algo.h"

double exp_naif_rec(double x, int n){
    if (n==0){
        return 1;
    }
    return exp_naif_rec(x,n-1)*x;
}

double exp_naif_iter(double x, int n){
    return 0;
}
double exp_rapid_rec(double x, int n){
    return 0;
}

double exp_rapid_iter(double x, int n){
    double res=0;
    
    if(n==0){
        return 1;
    }
    else if(n>0){
        
        double exp_half =exp_rapid_iter(x,n/2);
        
        if (n & 1) {
            res = x * exp_half * exp_half;
        }
        res = exp_half * exp_half;
    }
    else if(n<0) {
        double exp_half =1/exp_rapid_iters(x,-n/2);
        if (-n & 1) {
            res = (1/x) * exp_half * exp_half;
        }
        res = exp_half * exp_half;
        
    }
    return res;
}
