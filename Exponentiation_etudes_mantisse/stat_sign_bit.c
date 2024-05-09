#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

int main(int argc, char **argv) {
    
    char* rep = argv[1];
    int N = atoi(argv[2]);
    int Nbit = 31;
    
    
    int bits[Nbit];
    int frequency[Nbit];
    double error = 0.0 ;
    
    //data file
    int len = strlen(rep);
    char path[strlen("results//err.dat") + len+1];
    sprintf(path, "results/%s/err.dat", rep);
    
    //initiation
    int cnt = 0;
    for(int bit = -10 ; bit <= 20 ; bit++){
        frequency[cnt] = 0;
        bits[cnt] = bit;
        cnt++;
    }
    
    //count significant bit
    cnt = 0;
    for(int bit = -10 ; bit <= 20 ; bit++){
        
        FILE *file;
        file = fopen(path, "r");
        if (file == NULL) {
            fprintf(stderr, "Error opening file.\n");
            return 1;
        }
        
        while (fscanf(file, "%lf", &error) != EOF) {
            if(error<pow(2,-bit)){
                frequency[cnt] =  frequency[cnt] +1;
            }
        }
        
        fclose(file);
        
        cnt++;
    }
    
    //print stat
    for (int i = 0; i < Nbit; i++) {
        double prob = (double)frequency[i]/N ;
        printf("%d %f\n", -bits[i], prob);
        
    }
    
    return 0;
}
