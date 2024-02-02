#include <stdio.h>
#include <stdlib.h>
#include <math.h>


double exp_naif_rec(double x, int n)
{
    if (n == 0)
    {
        return 1;
    }
    return exp_naif_rec(x, n - 1) * x;
}

double exp_naif_iter(double x, int n)
{
    double r = 1;
    for(int i = 0; i < n; i ++)
    {
        r *= x;
    }
    return r;
}


double exp_rapid_rec(double x, int n)
{
    if(n == 0)
    {
        return 1;
    }
    if(n % 2 == 1)
    {
        return x * exp_rapid_rec(x, n - 1);
    }
    return exp_naif_rec(x, n / 2) * exp_naif_rec(x, n / 2);
    
}

double exp_rapid_iter(double x, int n)
{
    double r = 1;    
    while(n != 0) 
    {    
        if(( n & 1) == 1) 
        {
            r = r * x;
        }
        x =x * x;
        n = n >> 1;
    }
    return r;
}


int main(int argc, char *argv[])
{
    if (argc < 3) 
    {
        printf("Usage: %s [x] [n]\n", argv[0]);
        return 1;
    }

    double x = atof(argv[1]);
    int n = atoi(argv[2]);
    int i = 0;
    for(i = 0; i <= n; i ++)
    {
        printf("%d\t%g\t%g\t%g\t%g\n", i, exp_naif_iter(x, i), exp_naif_rec(x, i), exp_rapid_iter(x, i), exp_rapid_rec(x, i));
    }
    return 0;
}