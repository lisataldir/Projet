#include "algo.h"

int main(int argc, char *argv[]){
    
    double x = atof(argv[1]);
    int n = atoi(argv[2]);

    //calculer la latence pour un algo
    clock_t begin_r1 = clock();
    double r1 = exp_rapid_iter(x, n); //ici mettez la fonction
    clock_t end_r1 = clock();
    //Fin de calcul
    
    //calculer la latence pour un autre algo
    clock_t begin_r2 = clock();
    double r2 = exp_naif_rec(x, n); //ici mettez la fonction
    clock_t end_r2 = clock();
    //Fin de calcul
    
    //convertir en ms
    unsigned long millis1 = (end_r1 -  begin_r1) * 1000 / CLOCKS_PER_SEC;
    unsigned long millis2 = (end_r2 -  begin_r2) * 1000 / CLOCKS_PER_SEC;
            
    //print
    printf("exp de %f^%d est : %f \n", x,n,r1);
    printf("exp de %f^%d est bien : %f \n", x,n,r2);
    printf("exp_rapid_iter done in %ld ms\n", millis1 );
    printf("exp_naif_rec done in %ld ms\n", millis2 );
    
    return 0;
}
