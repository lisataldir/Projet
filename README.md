# PPN : Arrondi stochastique pour le calcul scientifique

## Organisation 

Ce dépot github est organisé en plusieurs dossiers : Algo&Tests, Performance, algo_lib, exp_naif, exp_rapide et test_data_Yizhi, dont le contenu puis l'utilisation pour chaque sera détaillée ci-dessous.

### Algo&Tests

### Performance

### algo_lib

### exp_naif

Ce dossier contient les algorithmes (dans le fichier main.c) et les résultats pour l'algorithme d'exponentation naïf récursif (dans results_recursif/) et itératif (dans results_iteratif/). 

### exp_rapide

### test_data_Yizhi


## Usage

### Algo&Tests

### Performance

### algo_lib

### exp_naif

Pour obtenir les graphes présents dans le dossier exp_naif/ faire :

```bash
$ cd exp_naif
$ bash build_SR.sh
# Creating directory results
[sudo] Mot de passe de lisa :            
Using default tag: latest
latest: Pulling from verificarlo/verificarlo
Digest: sha256:a9a653627fa8d7afc62692b97166a562a8de86e9fba9a16f64cd3fa914bd17c4
Status: Image is up to date for verificarlo/verificarlo:latest
docker.io/verificarlo/verificarlo:latest
# Creating folder results/SR_x_2.dat
Info [verificarlo]: loaded backend libinterflop_mca_int.so
Info [interflop_mca_int]: load backend with precision-binary32 = 24, precision-binary64 = 53, mode = mca, error-mode = rel, max-abs-error-exponent = 112, daz = false, ftz = false and sparsity = 1.000000
# Creating folder results/SR_x_3_995.dat
Info [verificarlo]: loaded backend libinterflop_mca_int.so
Info [interflop_mca_int]: load backend with precision-binary32 = 24, precision-binary64 = 53, mode = mca, error-mode = rel, max-abs-error-exponent = 112, daz = false, ftz = false and sparsity = 1.000000
# Creating folder results/SR_x_rand.dat
Info [verificarlo]: loaded backend libinterflop_mca_int.so
Info [interflop_mca_int]: load backend with precision-binary32 = 24, precision-binary64 = 53, mode = mca, error-mode = rel, max-abs-error-exponent = 112, daz = false, ftz = false and sparsity = 1.000000
$ bash build_UR.sh
# Creating folder results/UR_x_2.dat
# Creating folder results/UR_x_3_995.dat
# Creating folder results/UR_x_rand.dat
$ bash build_reference.sh
# Creating folder results/ref_x_2.dat
# Creating folder results/ref_x_3_995.dat
# Creating folder results/ref_x_rand.dat
$ make
gcc -g erreur.c -o erreur
$ ./erreur
$ bash build_err.sh
$ gnuplot plot-SR-x-3-995.gp
$ gnuplot plot-SR-x-2.gp
$ gnuplot plot-SR-x-rand.gp
$ gnuplot plot-UR-x-3-995.gp
$ gnuplot plot-UR-x-2.gp
$ gnuplot plot-UR-x-rand.gp
```

### exp_rapide

### test_data_Yizhi
