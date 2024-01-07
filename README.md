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

pour générer les données. Puis faire :

```bash
$ gnuplot plot-x-3-995-it.gp
$ gnuplot plot-x-rand-it.gp
$ gnuplot plot-x-3-995-rec.gp
$ gnuplot plot-x-rand-rec.gp
```
pour générer les graphes.

### exp_rapide
