#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>

#define MAX_LINE_LENGTH 1000

int main(int argc, char **argv) {
    
    char* rep = argv[1];
    int len = strlen(rep);
    
    FILE *file_ref = NULL;
    char path_ref[] = "results/UR.dat";
    char val_ref[MAX_LINE_LENGTH];
    file_ref = fopen(path_ref, "r");
    
    if (file_ref == NULL) {
        printf("Failed to open file_ref.\n");
        return 1;
    }
    
    FILE *file_exp = NULL;
    
    
    /*Calculating errors for SR experiences*/
    char path_exp[strlen("results//SR.dat") + len+1];
    sprintf(path_exp, "results/%s/SR.dat", rep);
    
    char val_exp[MAX_LINE_LENGTH];
    file_exp = fopen(path_exp, "r");
    
    if(file_exp ==NULL){
        printf("Failed to open : %s\n", path_exp);
        return 1;
    }
    
    while (fgets(val_ref, MAX_LINE_LENGTH, file_ref) != NULL && fgets(val_exp, MAX_LINE_LENGTH, file_exp) != NULL) {
        double err = fabs(atof(val_ref)-atof(val_exp))/atof(val_ref);
        printf("%.17f\n", err);
    }
    
    
    fclose(file_exp);
    fclose(file_ref);
    
    return 0;
}
