#include "algo.h"

int main(int argc, char *argv[]){
    
    double x = atof(argv[1]);
    int n = atoi(argv[2]);

    //calculer la latence
    clock_t begin_r1 = clock();
    double r1 = exp_naif_rec(x, n); //ici mettez la fonction
    clock_t end_r1 = clock();
    //Fin de calcul
    
    //convertir en ms
    unsigned long millis1 = (end_r1 -  begin_r1) * 1000 / CLOCKS_PER_SEC;
            
    //print
    printf("exp de %f^%d est : %f \n", x,n,r1);
    printf("exp done in %ld ms\n", millis1 );
    
    return 0;
}
