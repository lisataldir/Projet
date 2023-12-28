//
#include <time.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

//
#include "types.h"

//
#include "tools.h"

//
#include "kernels.h"

//
#define ALIGN64 64

//
#define MAX_SAMPLES 33


//
void run_benchmark(const ascii *title,
                   f64 (*kernel)(f64, u64),
                   u64 n,
                   u64 r)
{
    //
    f64 elapsed = 0.0;
    struct timespec t1, t2;
    f64 elapsed_samples[MAX_SAMPLES];
    f64 result_samples[MAX_SAMPLES];
    
    f64 d = 0.0;
    f64 a = 0.0;
    
    //
    for (u64 i = 0; i < MAX_SAMPLES; i++)
    {
        a = init_f64();
        clock_gettime(CLOCK_MONOTONIC_RAW, &t1);
        
        for (u64 j = 0; j < r; j++){
            d = kernel(a, n);
        }
        
        clock_gettime(CLOCK_MONOTONIC_RAW, &t2);
        
        elapsed = (f64)(t2.tv_nsec - t1.tv_nsec) / (f64)r;
        
        elapsed_samples[i] = elapsed;
        result_samples[i] = d;
    }
    
    //sort for min max
    sort_f64(elapsed_samples, MAX_SAMPLES);
    
    //
    f64 min  = elapsed_samples[0];
    f64 max  = elapsed_samples[MAX_SAMPLES - 1];
    f64 elapsed_mean = mean_f64(elapsed_samples, MAX_SAMPLES);
    f64 result_mean = mean_f64(result_samples, MAX_SAMPLES);
    f64 dev  = stddev_f64(elapsed_samples, MAX_SAMPLES);
    
    //
    printf("%10s; %10llu; %10llu; %15.3e; %15.3lf; %15.3lf; %15.3lf; %15.3lf (%6.3lf %%)\n",
           title,
           n,
           r,
           result_mean,
           min,
           max,
           elapsed_mean,
           dev,
           (dev * 100.0 / elapsed_mean));
    
}

//
int main(int argc, char **argv)
{
    //
    srand(getpid());
    
    //
    if (argc < 3)
        return printf("usage: %s [Exposant] [Repetition]\n", argv[0]), 1;
    
    //Puissance
    u64 n = atoll(argv[1]);
    
    //Number of kernel repetitions
    u64 r = atoll(argv[2]);
    
    //Print header
    printf("%10s; %10s; %10s; %15s; %15s; %15s; %15s; %26s\n",
           "title", "power", "loop", "results mean", "min", "max", "mean", "stddev (%)");
    
    run_benchmark("naif_rec", exp_naif_rec, n, r);
    run_benchmark("naif_ite", exp_naif_iter, n, r);
    run_benchmark("rapi_rec", exp_rapid_rec, n, r);
    run_benchmark("rapi_ite", exp_rapid_iter, n, r);
    
    //
    return 0;
}


