#include "algo.h"
#define MAX 33

int main(int argc, char *argv[]){

    if (argc < 3){
        printf("usage: %s [x] [n]\n", argv[0]);
        return 1;
    }

    
    double x = atof(argv[1]);
    int n = atoi(argv[2]);
    
    //latency for exp_naif_rec
    clock_t begin_r1 = clock();
    double r1 = exp_naif_rec(x, n); 
    clock_t end_r1 = clock();
    //Fin de calcul

    //latency for exp_naif_iter
    clock_t begin_r2 = clock();
    double r2 = exp_naif_iter(x, n); 
    clock_t end_r2 = clock();

    //latency for exp_rapid_rec
    clock_t begin_r3 = clock();
    double r3 = exp_rapid_rec(x, n); 
    clock_t end_r3 = clock();

    //latency for exp_rapid_iter
    clock_t begin_r4 = clock();
    double r4 = exp_rapid_iter(x, n); 
    clock_t end_r4 = clock();

    //convertir en ms
    unsigned long millis1 = (end_r1 -  begin_r1) * 1000/ CLOCKS_PER_SEC;
    unsigned long millis2 = (end_r2 -  begin_r2) * 1000 / CLOCKS_PER_SEC;
    unsigned long millis3 = (end_r3 -  begin_r3) * 1000 / CLOCKS_PER_SEC;
    unsigned long millis4 = (end_r4 -  begin_r4) * 1000 / CLOCKS_PER_SEC;
            
    //print
    printf("exp_naif_rec pour x = %f et n = %d donne %f\n", x, n, r1);
    printf("exp_naif_iter pour x = %f et n = %d donne %f\n", x, n, r2);
    printf("exp_rapid_rec pour x = %f et n = %d donne %f\n", x, n, r3);
    printf("exp_rapid_iter pour x = %f et n = %d donne %f\n", x, n, r4);

    return 0;
}
