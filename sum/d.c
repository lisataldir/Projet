#include <stdio.h>
#include <stdlib.h>
#include <math.h>


double multi_naif_rec(double x, int n)
{
    if (n == 0)
    {
        return 0;
    }
    return multi_naif_rec(x, n - 1) + x;
}

double multi_naif_iter(double x, int n)
{
    double r = 0;
    for(int i = 0; i < n; i ++)
    {
        r += x;
    }
    return r;
}


double multi_rapid_rec(double x, int n)
{
    if(n == 0)
    {
        return 0;
    }
    if(n % 2 == 1)
    {
        return x + multi_rapid_rec(x, n - 1);
    }
    return multi_naif_rec(x, n / 2) + multi_naif_rec(x, n / 2);
    
}

double multi_rapid_iter(double x, int n)
{
    double r = 0;    
    while(n != 0) 
    {    
        if(( n & 1) == 1) 
        {
            r = r + x;
        }
        x =x + x;
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
        printf("%d\t%g\t%g\t%g\t%g\n", i, multi_naif_iter(x, i), multi_naif_rec(x, i), multi_rapid_iter(x, i), multi_rapid_rec(x, i));
    }
    return 0;
}