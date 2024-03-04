# PPN : Arrondi stochastique pour le calcul scientifique


Ce projet a été réalisé par Yutai Zhao, Lisa Taldir, Chun Qi et Yizhi Yang.
Il est organisé en plusieurs dossiers : 

```bash
├──Algo&Tests
├──Performance
├──exponentiation_New
└──verificarlo
```
dont le contenu puis l'utilisation sera détaillé ci-dessous.

## Organisation 

### Algo&Tests

Ce dossier contient : 
- les algorithmes naïf récursif, itératif et rapide récursif, itératif (dans `algo_lib/`) que nous utiliserons durant tout notre projet
- les tests unitaires (dans le fichier `test.cpp`) verifiant que nos algorithmes soient valides
- les valeurs de références (dans `test_data_Yizhi/`) obtenues grace à des fonctions de Python. 

### Performance

Ce dossier contient : 
- les algorithmes dont les performances sont à évaluer (dans `kernels.h`)
- le programme principal et une fonction benchmark pour l'évaluation et l'affichage des performances (dans `main.c`)
- les définitions de quelques fonctions utilisées dans le programme principal (dans `tools.c`)
- les définitions des types de valeurs exprimés autrement (dans `types.h`) 
- les résultats des performances des 4 algorithmes, les résultats sont obtenus en faisant varier les compilateurs gcc (dans `gcc/`) clang (dans `clang/`).
- les scripts : un script pour la generation des resultats de performance (`exe.sh`), un script pour trier les resultats (`pars.sh`), un script pour la réalisation des graphes (dans `graphe/graphee.Rmd`).

### exponentiation_New

Ce dossier contient principalement: 

```bash
├──ref_main.c (calcul des valeurs ref)
├──SR_main.c (calcul des valeurs exp en SR)
└──UR_main.c (calcul des valeurs exp en UR)
```

Permmettant de calculer x^n, ces programmes prennent 4 parametres :
1. x : la base
2. N : la puissance maximale
3. n : l'ecart entre chaque puissance 
4. algo : un nombre representant l'algo choisi


```bash
├──algo.h
├──reference.c (algo en double precision)
└──experience.c (algo en simple precision)
```

Contenant les 4 algorithmes : ni,nr,ri,rr

```bash
└──erreur.c
```

Permmettant de calculer des erreurs relatifs entre les valeurs ref et les valeurs exp

```bash
├──Makefile
├──run.sh
└──plot
    └──plot.gp
```

ce sont des scripts facilitant l'obtention des resultats :  
 - `run.sh` fait la ccompilation, execute les programmmes faisant les caluls des exponentiations et des erreurs, enfin il calcule la moyenne des erreurs. Tous les donnees sont stockés dans le dossier `results/`.
 - `plot.gp` trace les graphes, stockés dans le meme dossier `plot/`.

### exponentiation

Ce dossier est organisé en trois parties : une partie principale où l'on retrouve notre code, un dossier contenant les graphes obtenus et un dossier contenant les résultats bruts.

Concernant le code, on a :
 - `run.sh` : exécute le main sur 50 itérations pour une valeur de x fixée et stocke les données dans le dossier `results/`
 - `errSR.sh` : calcule la moyenne des résultats obtenus après `run.sh`
 - `algo.c` : fonctions calculant l'exponentation en simple précision
 - `reference.c` : fonction calculant l'exponentiation en double précision (on a choisi de garder l'algorithme naïf itératif comme référence pour nos calculs d'erreurs)
 - `main.c` : fichier principal dans lequel on retrouve nos calculs d'erreurs

### verificarlo

Ce dossier contient tous les fichiers du depot github de verificarlo.

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
Puis cliquer sur `Run All`

### exponentiation_New

Pour obtenir les graphes présents dans le dossier `exponentiation_New/plot/` faire :

```bash
$ cd exponentiation_New
$ run.sh
```
pour générer les données. 

Puis faire :

```bash
$ cd plot
$ gnuplot plot.gp
```
pour générer les graphes.
