# PPN : Arrondi stochastique pour le calcul scientifique


Ce projet a été réalisé par Yutai Zhao, Lisa Taldir, Chun Qi et Yizhi Yang.
Il est organisé en plusieurs dossiers : 

```bash
├──Algo&Tests
├──Performance
├──exponentiation
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


### Exponentiation

Ce dossier contient nos travaux autour de l'algorithme d'exponentation (i.e calcul de $x^{n}$ pour n allant de 0 à 300 et trois valeurs différentes de x comprises entre 1 et 2).
Il est organisé en trois parties : une partie principale où l'on retrouve notre code, un dossier (`plot/`) contenant les graphes obtenus et un dossier (`results/`) contenant les résultats bruts.

Concernant le code, on a :
 - `run.sh` : exécute le main sur 50 itérations pour une valeur de x fixée et stocke les données dans le dossier `results/`
 - `errSR.sh` : calcule la moyenne des résultats obtenus après `run.sh`
 - `algo.c` : fonctions calculant $x^{n}$ en simple précision
 - `reference.c` : fonction calculant $x^{n}$ en double précision (on a choisi de garder l'algorithme naïf itératif comme référence pour nos calculs d'erreurs)
 - `main.c` : fichier principal dans lequel on retrouve nos calculs d'erreurs, prenant en arguments, dans l'ordre, [x] : valeur pour laquelle on va calculer $x^{n}$ et [ind] : indicateur pour savoir quelle version de la fonction d'exponentiation exécuter.  
ind = 0 pour choisir la version naïve récursive  
ind = 1 pour choisir la version naïve itérative  
ind = 2 pour choisir la version rapide récursive  
ind = 3 pour choisir la version rapide itérative
 - `plot/plot.gp` : trace les graphes

### Verificarlo

Ce dossier contient tous les fichiers du dépot github de verificarlo.

## Usage

### Algo&Tests

Assurer d'abord que : 
1. le répertoire `Algo&Tests/build/` soit vide 
2. le repertoire de travail (working directory) est `Algo&Tests/build/`


Pour les caluls d'exponentation ($x^{n}$) faire :
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

### Exponentiation

Pour obtenir les graphes présents dans le dossier `exponentiation/plot/` faire, en se plaçant dans le répertoire `exponentiation/`:

```bash
$ ./run.sh
$ ./errSR.sh
```
pour générer les données. 

Puis faire :

```bash
$ cd plot
$ gnuplot plot.gp
```
pour générer les graphes.
