#include <stdio.h>
#include <stdlib.h>
#include <math.h>

// version double
double ref_multi_ni(double x, int n)
{
    double r = 0;
    for(int i = 0; i < n; i++)
    {
        r += x;
    }
    return r;
}

double ref_multi_nr(double x, int n)
{
    if (n == 0) 
    {
        return 0;
    }
    return x + ref_multi_nr(x, n-1);
}

double ref_multi_rr(double x, int n)
{
    double tmp;
    if(n == 0)
    {
        return 0;
    } 
    else if(n % 2 == 0) 
    {
        tmp = ref_multi_rr(x, n >> 1);
        return tmp + tmp;
    } 
    else 
    {
        tmp = ref_multi_rr(x, n >> 1);
        return x + tmp + tmp;
    }
}

double ref_multi_ri(double x, int n)
{
    double res = 0;
    while(n > 0)
    {
        if(n % 2 == 1)
        {
            res = res + x;   
        }
        x = x + x;
        n = n >> 1;
    }
    return res;
}

// version float
float multi_ni(float x, int n)
{
    float r = 0;
    for(int i = 0; i < n; i++)
    {
        r += x;
    }
    return r;
}

float multi_nr(float x, int n)
{
    if (n == 0) 
    {
        return 0;
    }
    return x + multi_nr(x, n-1);
}

float multi_rr(float x, int n)
{
    float tmp;
    if(n == 0)
    {
        return 0;
    } 
    else if(n % 2 == 0) 
    {
        tmp = multi_rr(x, n >> 1);
        return tmp + tmp;
    } 
    else 
    {
        tmp = multi_rr(x, n >> 1);
        return x + tmp + tmp;
    }
}

float multi_ri(float x, int n)
{
    float res = 0;
    while(n > 0)
    {
        if(n % 2 == 1)
        {
            res = res + x;   
        }
        x = x + x;
        n = n >> 1;
    }
    return res;
}

int main(int argc, char** argv){

    if (argc < 3){
        printf("%s usage : [x], [ind]", argv[0]);
        return 1;
    }

    double x = atof(argv[1]);
    int ind = atoi(argv[2]);
    int N = 1001;

    float err_nr, err_ni, err_rr, err_ri;
    float tmp;

    if (ind == 0) {
        for (int n = 0; n < N; n++){
            tmp = ref_multi_nr(x, n);
            err_nr = fabs((tmp - multi_nr(x, n)) / tmp);
            printf("%.8f\n", err_nr);
        }
    } else if (ind == 1) {
        for (int n = 0; n < N; n++){
            tmp = ref_multi_ni(x, n);
            err_ni = fabs((tmp - multi_ni(x, n)) / tmp);
            printf("%.8f\n", err_ni);
        }
    } else if (ind == 2) {
        for (int n = 0; n < N; n++){
            tmp = ref_multi_rr(x, n);
            err_rr = fabs((tmp - multi_rr(x, n)) / tmp);
            printf("%.8f\n", err_rr);
        }
    } else if (ind == 3) {
        for (int n = 0; n < N; n++){
            tmp = ref_multi_ri(x, n);
            err_ri = fabs((tmp - multi_ri(x, n)) / tmp);
            printf("%.8f\n", err_ri);
        }
    }

    return 0;
}
