#include "exp_rapide.h"

//recursive version
TYPE exp_rapide_rec(int n, TYPE x)
{
    if(n == 0)
        return 1;
    else if(n == 1)
        return x;
    else if(n % 2 == 0)
        return exp_rapide_rec(n/2, x) * exp_rapide_rec(n/2, x);
    else
        return x * exp_rapide_rec(n/2, x) * exp_rapide_rec(n/2, x);

}

//iterative version
TYPE exp_rapide_iter(int n, TYPE x)
{
    TYPE res = 1;
    while(n > 0)
    {
        if(n % 2 == 0)
        {
            x = x * x;
            n = n / 2;
        }
        else
        {
            res = res * x;
            x = x * x;
            n = (n - 1) / 2;
        }
    }
    return res;
}
