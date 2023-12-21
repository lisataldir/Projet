#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>

int main(int argc, char ** argv) {

    // OUverture des trois fichiers contenant les valeurs de x^n de référence
    FILE *ref1, *ref2, *ref3;
    float ref_val1, ref_val2, ref_val3;
    ref1 = fopen("results/ref_x_2.dat", "r");
    ref2 = fopen("results/ref_x_3_995.dat", "r");
    ref3 = fopen("results/ref_x_rand.dat", "r");
    // On vérifie que les ouvertures se sont bien passées
    if (ref1 == NULL || ref2 == NULL || ref3 == NULL) {
        perror("open");
        return 1;
    }

    for (int i=1; i < 11; i++)
    {
        // OUverture des fichiers contenant les valeurs de x^n pour SR
        FILE *SR1, *SR2, *SR3;
        float val_sr1, val_sr2, val_sr3;

         char tmp1[50];
        sprintf(tmp1, "results/SR_x_2_%d.dat", i);
        SR1 = fopen(tmp1, "r");

        char tmp2[50];
        sprintf(tmp2, "results/SR_x_3_995_%d.dat", i);
        SR2 = fopen(tmp2, "r");

        char tmp3[50];
        sprintf(tmp3, "results/SR_x_rand_%d.dat", i);
        SR3 = fopen(tmp3, "r");

        if (SR1 == NULL || SR2 == NULL || SR3 == NULL) {
            perror("open");
            return 1;
        }
    
        // Création des fichiers qui vont contenir l'erreur SR
        FILE *errSR1, *errSR2, *errSR3;
        float err_sr1_val, err_sr2_val, err_sr3_val;

        char etmp1[50];
        sprintf(etmp1, "results/errSR_x_2_%d.dat", i);
        errSR1 = fopen(etmp1, "w");

        char etmp2[50];
        sprintf(etmp2, "results/errSR_x_3_995_%d.dat", i);
        errSR2 = fopen(etmp2, "w");

        char etmp3[50];
        sprintf(etmp3, "results/errSR_x_rand_%d.dat", i);
        errSR3 = fopen(etmp3, "w");

        // Calcul de la valeur absolue de la différence entre les colonnes de ref et SR
        while (fscanf(ref1, "%f ", &ref_val1) == 1 && fscanf(SR1, "%f ", &val_sr1) == 1) {
            err_sr1_val = fabs(val_sr1 - ref_val1);
            fprintf(errSR1, "%f\n", err_sr1_val);
        }
        rewind(SR1);
        rewind(ref1);
        fclose(SR1);
        fclose(errSR1);

        while (fscanf(ref2, "%f ", &ref_val2) == 1 && fscanf(SR2, "%f ", &val_sr2) == 1) {
            err_sr2_val = fabs(val_sr2 - ref_val2);
            fprintf(errSR2, "%f\n", err_sr2_val);
        }
        rewind(SR2);
        rewind(ref2);
        fclose(SR2);
        fclose(errSR2);

        while (fscanf(ref3, "%f ", &ref_val3) == 1 && fscanf(SR3, "%f ", &val_sr3) == 1) {
            err_sr3_val = fabs(val_sr3 - ref_val3);
            fprintf(errSR3, "%f\n", err_sr3_val);
        }
        rewind(SR3);
        rewind(ref3);
        fclose(SR3);
        fclose(errSR3);
    }

    // Même chose pour UR

    // OUverture des trois fichiers contenant les valeurs de x^n pour UR
    FILE *UR1, *UR2, *UR3;
    float val_ur1, val_ur2, val_ur3;
    UR1 = fopen("results/UR_x_2.dat", "r");
    UR2 = fopen("results/UR_x_3_995.dat", "r");
    UR3 = fopen("results/UR_x_rand.dat", "r");
    if (UR1 == NULL || UR2 == NULL || UR3 == NULL) {
        perror("open");
        return 1;
    }
    
    // Création des trois fichiers qui vont contenir l'erreur UR
    FILE *errUR1, *errUR2, *errUR3;
    float err_ur1_val, err_ur2_val, err_ur3_val;
    errUR1 = fopen("results/errUR_x_2.dat", "w");
    errUR2 = fopen("results/errUR_x_3_995.dat", "w");
    errUR3 = fopen("results/errUR_x_rand.dat", "w");

    // Calcul de la valeur absolue de la différence entre les colonnes de ref et UR
    while (fscanf(ref1, "%f ", &ref_val1) == 1 && fscanf(UR1, "%f ", &val_ur1) == 1) {
        err_ur1_val = fabs(val_ur1 - ref_val1);
        fprintf(errUR1, "%f\n", err_ur1_val);
    }
    rewind(UR1);
    rewind(ref1);
    fclose(UR1);
    fclose(errUR1);
    while (fscanf(ref2, "%f ", &ref_val2) == 1 && fscanf(UR2, "%f ", &val_ur2) == 1) {
        err_ur2_val = fabs(val_ur2 - ref_val2);
        fprintf(errUR2, "%f\n", err_ur2_val);
    }
    rewind(UR2);
    rewind(ref2);
    fclose(UR2);
    fclose(errUR2);
    while (fscanf(ref3, "%f ", &ref_val3) == 1 && fscanf(UR3, "%f ", &val_ur3) == 1) {
        err_ur3_val = fabs(val_ur3 - ref_val3);
        fprintf(errUR3, "%f\n", err_ur3_val);
    }
    rewind(UR3);
    rewind(ref3);
    fclose(UR3);
    fclose(errUR3);


    // Fermeture des fichiers de référence
    fclose(ref1);
    fclose(ref2);
    fclose(ref3);

    return 0;
}