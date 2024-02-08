#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>

int main(int argc, char ** argv) {

    // OUverture des deux fichiers contenant les valeurs de x^n de référence
    FILE *ref2, *ref3;
    float ref_val2, ref_val3;
    ref2 = fopen("results_iteratif/ref_x_3_995.dat", "r");
    ref3 = fopen("results_iteratif/ref_x_rand.dat", "r");
    // On vérifie que les ouvertures se sont bien passées
    if (ref2 == NULL || ref3 == NULL) {
        perror("open");
        return 1;
    }

    for (int i=1; i < 11; i++)
    {
        // OUverture des fichiers contenant les valeurs de x^n pour SR
        FILE *SR2, *SR3;
        float val_sr2, val_sr3;

        char tmp2[50];
        sprintf(tmp2, "results_iteratif/SR_x_3_995_%d.dat", i);
        SR2 = fopen(tmp2, "r");
        char tmp3[50];
        sprintf(tmp3, "results_iteratif/SR_x_rand_%d.dat", i);
        SR3 = fopen(tmp3, "r");

        if (SR2 == NULL || SR3 == NULL) {
            perror("open");
            return 1;
        }
    
        // Création des fichiers qui vont contenir l'erreur SR
        FILE *errSR2, *errSR3;
        float err_sr2_val, err_sr3_val;

        char etmp2[50];
        sprintf(etmp2, "results_iteratif/errSR_x_3_995_%d.dat", i);
        errSR2 = fopen(etmp2, "w");
        char etmp3[50];
        sprintf(etmp3, "results_iteratif/errSR_x_rand_%d.dat", i);
        errSR3 = fopen(etmp3, "w");

        // Calcul de la valeur absolue de la différence entre les colonnes de ref et SR
        while (fscanf(ref2, "%g ", &ref_val2) == 1 && fscanf(SR2, "%g ", &val_sr2) == 1) {
            err_sr2_val = fabs(val_sr2 - ref_val2)/fabs(ref_val2);
            fprintf(errSR2, "%g\n", err_sr2_val);
        }
        rewind(SR2);
        rewind(ref2);
        fclose(SR2);
        fclose(errSR2);

        while (fscanf(ref3, "%g ", &ref_val3) == 1 && fscanf(SR3, "%g ", &val_sr3) == 1) {
            err_sr3_val = fabs(val_sr3 - ref_val3)/fabs(ref_val3);
            fprintf(errSR3, "%g\n", err_sr3_val);
        }
        rewind(SR3);
        rewind(ref3);
        fclose(SR3);
        fclose(errSR3);
    }

    // Même chose pour UR

    // OUverture des deux fichiers contenant les valeurs de x^n pour UR
    FILE *UR2, *UR3;
    float val_ur2, val_ur3;
    UR2 = fopen("results_iteratif/UR_x_3_995.dat", "r");
    UR3 = fopen("results_iteratif/UR_x_rand.dat", "r");
    if (UR2 == NULL || UR3 == NULL) {
        perror("open");
        return 1;
    }
    
    // Création des trois fichiers qui vont contenir l'erreur UR
    FILE *errUR2, *errUR3;
    float err_ur2_val, err_ur3_val;
    errUR2 = fopen("results_iteratif/errUR_x_3_995.dat", "w");
    errUR3 = fopen("results_iteratif/errUR_x_rand.dat", "w");

    // Calcul de la valeur absolue de la différence entre les colonnes de ref et UR
    while (fscanf(ref2, "%g ", &ref_val2) == 1 && fscanf(UR2, "%g ", &val_ur2) == 1) {
        err_ur2_val = fabs(val_ur2 - ref_val2)/fabs(ref_val2);
        fprintf(errUR2, "%g\n", err_ur2_val);
    }
    rewind(UR2);
    rewind(ref2);
    fclose(UR2);
    fclose(errUR2);
    while (fscanf(ref3, "%g ", &ref_val3) == 1 && fscanf(UR3, "%g ", &val_ur3) == 1) {
        err_ur3_val = fabs(val_ur3 - ref_val3)/fabs(ref_val3);
        fprintf(errUR3, "%g\n", err_ur3_val);
    }
    rewind(UR3);
    rewind(ref3);
    fclose(UR3);
    fclose(errUR3);

    // Fermeture des fichiers de référence
    fclose(ref2);
    fclose(ref3);

    // Enfin, même chose pour récursif 

    // OUverture des deux fichiers contenant les valeurs de x^n de référence
    FILE *ref2bis, *ref3bis;
    float ref_val2bis, ref_val3bis;
    ref2bis = fopen("results_recursif/ref_x_3_995.dat", "r");
    ref3bis = fopen("results_recursif/ref_x_rand.dat", "r");
    // On vérifie que les ouvertures se sont bien passées
    if (ref2bis == NULL || ref3bis == NULL) {
        perror("open");
        return 1;
    }

    for (int i=1; i < 11; i++)
    {
        // OUverture des fichiers contenant les valeurs de x^n pour SR
        FILE *SR2, *SR3;
        float val_sr2, val_sr3;

        char tmp2[50];
        sprintf(tmp2, "results_recursif/SR_x_3_995_%d.dat", i);
        SR2 = fopen(tmp2, "r");
        char tmp3[50];
        sprintf(tmp3, "results_recursif/SR_x_rand_%d.dat", i);
        SR3 = fopen(tmp3, "r");

        if (SR2 == NULL || SR3 == NULL) {
            perror("open");
            return 1;
        }
    
        // Création des fichiers qui vont contenir l'erreur SR
        FILE *errSR2, *errSR3;
        float err_sr2_val, err_sr3_val;

        char etmp2[50];
        sprintf(etmp2, "results_recursif/errSR_x_3_995_%d.dat", i);
        errSR2 = fopen(etmp2, "w");
        char etmp3[50];
        sprintf(etmp3, "results_recursif/errSR_x_rand_%d.dat", i);
        errSR3 = fopen(etmp3, "w");

        // Calcul de la valeur absolue de la différence entre les colonnes de ref et SR
        while (fscanf(ref2bis, "%g ", &ref_val2bis) == 1 && fscanf(SR2, "%g ", &val_sr2) == 1) {
            err_sr2_val = fabs(val_sr2 - ref_val2bis)/fabs(ref_val2bis);
            fprintf(errSR2, "%g\n", err_sr2_val);
        }
        rewind(SR2);
        rewind(ref2bis);
        fclose(SR2);
        fclose(errSR2);

        while (fscanf(ref3bis, "%g ", &ref_val3bis) == 1 && fscanf(SR3, "%g ", &val_sr3) == 1) {
            err_sr3_val = fabs(val_sr3 - ref_val3bis)/fabs(ref_val3bis);
            fprintf(errSR3, "%g\n", err_sr3_val);
        }
        rewind(SR3);
        rewind(ref3bis);
        fclose(SR3);
        fclose(errSR3);
    }

    // Même chose pour UR

    // OUverture des deux fichiers contenant les valeurs de x^n pour UR
    FILE *UR2bis, *UR3bis;
    float val_ur2bis, val_ur3bis;
    UR2bis = fopen("results_recursif/UR_x_3_995.dat", "r");
    UR3bis = fopen("results_recursif/UR_x_rand.dat", "r");
    if (UR2bis == NULL || UR3bis == NULL) {
        perror("open");
        return 1;
    }
    
    // Création des trois fichiers qui vont contenir l'erreur UR
    FILE *errUR2bis, *errUR3bis;
    float err_ur2_valbis, err_ur3_valbis;
    errUR2bis = fopen("results_recursif/errUR_x_3_995.dat", "w");
    errUR3bis = fopen("results_recursif/errUR_x_rand.dat", "w");

    // Calcul de la valeur absolue de la différence entre les colonnes de ref et UR
    while (fscanf(ref2bis, "%g ", &ref_val2bis) == 1 && fscanf(UR2bis, "%g ", &val_ur2bis) == 1) {
        err_ur2_valbis = fabs(val_ur2bis - ref_val2bis)/fabs(ref_val2bis);
        fprintf(errUR2bis, "%g\n", err_ur2_valbis);
    }
    rewind(UR2bis);
    rewind(ref2bis);
    fclose(UR2bis);
    fclose(errUR2bis);
    while (fscanf(ref3bis, "%g ", &ref_val3bis) == 1 && fscanf(UR3bis, "%g ", &val_ur3bis) == 1) {
        err_ur3_valbis = fabs(val_ur3bis - ref_val3bis)/fabs(ref_val3bis);
        fprintf(errUR3bis, "%g\n", err_ur3_valbis);
    }
    rewind(UR3bis);
    rewind(ref3bis);
    fclose(UR3bis);
    fclose(errUR3bis);

    // Fermeture des fichiers de référence
    fclose(ref2bis);
    fclose(ref3bis);

    return 0;
}