# PPN : Arrondi stochastique pour le calcul scientifique


Ce projet a été réalisé par Yutai Zhao, Lisa Taldir, Chun Qi et Yizhi Yang.
Il est organisé en plusieurs dossiers : 

```bash
├──Algo&Tests
├──Performance
├──exp_naif
├──exp_rapide
└──verificarlo
```
dont le contenu puis l'utilisation sera détaillé ci-dessous.

## Organisation 

### Algo&Tests

Ce dossier contient : 
- les algorithmes naïf récursif, itératif et rapide récursif, itératif (dans `algo_lib/`) que nous utiliserons durant tout notre projet
- les tests unitaires (dans le fichier `test.cpp`) verifiant que nos algorithmes soient valides
- les valeurs references (dans `test_data_Yizhi/`) obtenues grace à des fonctions de Python. 

### Performance

Ce dossier contient : 
- les algorithmes dont les performances à évaluer (dans `kernels.h`)
- le programme principal et une fonction benchmark pour l'evaluation et l'affichage des preformances (dans `main.c`)
- les definitions de quelques fonctions utilisées dans le programme principal (dans `tools.c`)
- les definitions des types de valeurs exprimés autrement (dans `types.h`) 
- les resultats des performances des 4 algorithmes, les resultats sont obtenus en faisant varier les compilateurs gcc (dans `gcc/`) clang (dans `clang/`).
- les scripts : un script pour la generation des resultats de performance (`exe.sh`), un script pour trier les resultats (`pars.sh`), un script pour la réalisation des graphes (dans `graphe/graphee.Rmd`).

### exp_naif

Ce dossier contient :
 - les algorithmes d'exponentiation naif itératif et récursif (dans le fichier `main.c` on retrouve une implémentation en simple précision, dans le fichier 'reference.c' on retrouve une implémentation en double précision).
 - trois scripts pour générer les résultats (référence, SR et UR).
 - un fichier 'erreur.c' qui calcule la différence entre les résultats de 'reference.c' et les résultats de 'main.c'.
 - un Makefile pour compiler le fichier 'erreur.c'.
 - les résultats (graphes) pour l'algorithme d'exponentation naïf récursif (dans `results_recursif/`) et itératif (dans `results_iteratif/`). 

### exp_rapide

Ce répertoire a été créé pour le but d'implémenter les méthodes rapides itérative et récursive et d'analyser les erreurs relatives pour l'arrondi usuel et l'arrondi stochastique. 
 - les algorithmes sont dans les fichiers `exp_rapide.h` et `exp_rapide.c`.
 - le fichier `main.c` permet de réaliser les calculs de l'exponentiel en simple et double précision, pour les bases différentes (0.995, 1.11, 1.34907566307 et 2.0) de puissance n varie de 0 à 200, avec résultats stockés dans `results/`.
 - le répertoire `ref_py/` stocke les données `*.dat` des mêmes calculs en utilisant les bibliothèques de Python, une référence alternative pour les calculs des erreurs.
 - `error.c` calcule les erreurs relatives des résultats en simple précision par rapport à ceux en double précision (calculés en C); `err_py.c` calcule celles par rapport aux résultats obtenus en Python.
 - `stat.c` donne la moyenne empirique et l'écart-type des erreurs.
 - les données des erreurs sont dans `error_c/` et `error_py/` 
 - `Makefile` pour la compilation de tous les fichiers `*.c`.
 - les scripts pour exécuter les programmes : `UR_*.sh` sont à lancer dans le bash, `SR_*.sh` sont à lancer à l'intérieur de Docker image `verificarlo`.
 - les `*.gp` pour tracer les graphiques, ce qui sont stockés dans `reletive_err_graph/`.

### verificarlo

Ce dossier contient tous les fichiers du depot github de verificarlo

## Usage

### Algo&Tests

Assurer d'abord que : 
1. le répertoire `Algo&Tests/build/` soit vide 
2. le repertoire de travail (working directory) est `Algo&Tests/build/`


Pour les caluls d'exponentation (x^n) faire :
```bash
$ cmake ..
$ make
$ ./algo [x] [n]
```

### Performance

Pour obtenir les resultats présents dans les dossiers `gcc/` et `clang/` faire :

```bash
$ cd Performance
$ ./exe.sh
$ ./pars.sh
```

Pour obtenir les graphes faire :

```bash
$ cd Performance/graphe
$ open graphe.Rmd
``` 
Puis `Run All`

### exp_naif

Pour obtenir les graphes présents dans le dossier `exp_naif/` faire :

```bash
$ cd exp_naif
$ bash build_SR.sh
$ bash build_UR.sh
$ bash build_reference.sh
$ make
gcc -g erreur.c -o erreur
$ ./erreur
$ bash build_err.sh
```

pour générer les données. 

Puis faire :

```bash
$ gnuplot plot-x-3-995-it.gp
$ gnuplot plot-x-rand-it.gp
$ gnuplot plot-x-3-995-rec.gp
$ gnuplot plot-x-rand-rec.gp
```
pour générer les graphes.

### exp_rapide
```bash
$ cd exp_rapide
```

Pour calculer les résultats et les erreurs :

Utiliser TYPE float dans `exp_rapide.h`
```bash
$ make
$ ./UR_float.sh
$ make clean
```
Utiliser TYPE double dans `exp_rapide.h`
```bash
$ make
$ ./UR_double.sh
$ ./UR_error.sh
$ ./UR_err_py.sh
$ make clean
```
Dans l'environnement Docker :
```bash
$ ./SR_double.sh
```
Utiliser TYPE float dans `exp_rapide.h`
Dans l'environnement Docker :
```bash
$ ./SR_float.sh
$ ./SR_error.sh
$ ./SR_err_py.sh
```
Pour la moyenne et l'écart-type :
Modifier les paramètre dans `stat.sh` pour UR
```bash
$ ./stat.sh
```
Modifier les paramètre dans `stat.sh` pour SR
Dans l'environnement Docker :
```bash
$ ./stat.sh
```

Pour les graphiques :
```bash
$ gnuplot err_0.995_c.gp
$ gnuplot err_0.995_py.gp
$ gnuplot err_1.11_c.gp
$ gnuplot err_1.11_py.gp
$ gnuplot err_1.34907566301_c.gp
$ gnuplot err_1.34907566301_py.gp
$ gnuplot err_2.0_c.gp
$ gnuplot err_2.0_py.gp
```
