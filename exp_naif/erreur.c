#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main() {
    FILE *output, *ref, *erreur;
    double value1, value2, resultValue;


    for (int i=1; i < 6; i++){
        char outputFileName[20];
        char refFileName[20];
        char erreurFileName[20];

        sprintf(outputFileName, "results/output%d.dat", i);
        sprintf(refFileName, "results/ref%d.dat", i);
        sprintf(erreurFileName, "erreur%d.dat", i);

        output = fopen(outputFileName, "r");
        ref = fopen(refFileName, "r");


        if (output == NULL || ref == NULL) {
            perror("Erreur lors de l'ouverture des fichiers");
            return 1;
        }

    
        erreur = fopen(erreurFileName, "w");

        // On prend la valeur absolue de la différence entre les colonnes des deux fichiers pour calculer notre erreur
        while (fscanf(output, "%lf ", &value1) == 1 && fscanf(ref, "%lf ", &value2) == 1) {
            resultValue = fabs(value1 - value2);
            fprintf(erreur, "%.17lf\n", resultValue);
        }
        rewind(output);
        rewind(ref);

        fclose(output);
        fclose(ref);
        fclose(erreur);
    }


    return 0;
}