#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, char **argv) {
    
    char* rep = argv[1];
    int N = atoi(argv[2]);
    
    FILE *file;
    double numbers[N];
    int frequency[N]; 
    double prev = 1.0; //valeur impossible
    double current = 0.0 ;
    int num_index = -1;
    int num_count = 0;
    
    //Open the data file
    int len = strlen(rep);
    char path[strlen("results//err_mantisse_sort.dat") + len+1];
    sprintf(path, "results/%s/err_mantisse_sort.dat", rep);
    file = fopen(path, "r");
    if (file == NULL) {
        fprintf(stderr, "Error opening file.\n");
        return 1;
    }
    
    //count numbers
    while (fscanf(file, "%lf", &current) != EOF) {
        
        if(current != prev){
            prev = current;
            num_index++;
            numbers[num_index] = current;
            num_count = frequency[num_index-1];
            frequency[num_index] = num_count;
        }else{
            num_count++;
            frequency[num_index] = num_count;
        }
        
    }
    //print stat
    for (int i = 0; i < num_index+1; i++) {
        double prob = (double)frequency[i]/N ;
        printf("%.17f %f\n", numbers[i], prob);
        
    }
    
    // Close the file
    fclose(file);
    
    return 0;
}
