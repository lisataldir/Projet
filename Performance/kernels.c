#include "types.h"

f64 exp_naif_rec(f64 x, u64 n){
    if (n==0){
        return 1;
    }
    return exp_naif_rec(x,n-1)*x;
}

f64 exp_naif_iter(f64 x, u64 n){
    f64 r = 1;
    for(u64 i = 0; i < n; i++)
    {
        r *=x;
    }
    return r;
}


f64 exp_rapid_rec(f64 x, u64 n)
{
    f64 r = 0;

    if(n == 0)
        r = 1;
    else if(n == 1)
        r = x;
    else if(n % 2 == 0)
        r = exp_rapid_rec(x, n/2) * exp_rapid_rec(x, n/2);
    else
        r = x * exp_rapid_rec(x, n/2) * exp_rapid_rec(x, n/2);
    
    return r;
}

f64 exp_rapid_iter(f64 x, u64 n){
    f64 r=1;

    while(n!=0){
        
        if((n&1)==1){
            r = r*x;
        }
        x =x*x;
        n = n >> 1;
    }
    return r;
}
