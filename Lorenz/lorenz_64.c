#include <stdio.h>
#include <stdlib.h>

#define SIGMA 10.0
#define RHO 15.0 //orbits periodiques
#define BETA (8.0 / 3.0)

#define dt 0.01
#define x0 1.0
#define y0 1.0
#define z0 1.0

void lorenz(double *x, double *y, double *z, int size) {
    for (int i = 0; i < size-1; ++i) {
        x[i+1] = (SIGMA * (y[i] - x[i])) * dt + x[i];
        y[i+1] = (x[i] * (RHO - z[i]) - y[i]) * dt + y[i];
        z[i+1] = (x[i] * y[i] - BETA * z[i]) * dt + z[i];
    }
}

void print(double *x, double *y, double *z, int size) {
    for (int i = 0; i < size; ++i) {
        printf("%lf %lf %lf\n", x[i], y[i], z[i]);
    }
}

int main(int argc, char **argv) {
    
    int size = atoi(argv[1]);
    
    /*Init*/
    
    double x[size];
    double y[size];
    double z[size];
    
    x[0] = x0;
    y[0] = y0;
    z[0] = z0;
    
    /*Lorenz with Euler Method*/
    
    lorenz(x,y,z,size);
    
    /*Output results*/
    
    print(x,y,z,size);

    return 0;
}

