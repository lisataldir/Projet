#include "algo.h"

double exp_naif_rec(double x, int n){
    if (n==0){
        return 1;
    }
    return exp_naif_rec( x, n-1)*x;
}

double exp_naif_iter(double x, int n){
    return 0;
}
double exp_rapid_rec(double x, int n){
    return 0;
}
double exp_rapid_iter(double x, int n){
    return 0;
}

