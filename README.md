# PPN - Arrondi stochastique pour le calcul scientifique


Ce projet a été réalisé par Yutai Zhao, Lisa Taldir, Chun Qi et Yizhi Yang dans le cadre du Master Calcul Haute Performance et Simulation de l'université Versailles St-Quentin-en-Yvelines.

Nous comparerons ici les résultats expérimentaux obtenus en utilisant l’arrondi stochastique avec ceux obtenus en utilisant l’arrondi déterministe au plus près, pour différents algorithmes.

Pour cela, nous avons organisé ce dépot en plusieurs dossiers: 

```bash
├──Algo&Tests
├──Exponentiation
├──Exponentiation_etudes_mantisse
├──Lorenz
├──Performance 1er_semestre
├──Performance AWS
├──Performance Verificarlo
├──Sommation
└──Sum_prod
```
dont le contenu et l'utilisation sera détaillé ci-dessous.

## Prérequis

Installer [Vérificarlo](https://github.com/verificarlo/verificarlo) et python avec les librairies numpy et matplotlib.

## Algo&Tests

### Organisation 

Ce dossier contient : 
- les algorithmes naïf récursif, itératif et rapide récursif, itératif (dans `algo_lib/`) que nous utiliserons durant tout notre projet
- les tests unitaires (dans le fichier `test.cpp`) verifiant que nos algorithmes soient valides
- les valeurs de références (dans `test_data/`) obtenues grace à des fonctions de Python.

### Usage

Assurer d'abord que : 
1. le répertoire `Algo&Tests/build/` soit vide 
2. le repertoire de travail (working directory) est `Algo&Tests/build/`


Pour les caluls d'exponentation ($x^{n}$) faire :
```bash
$ cmake ..
$ make
$ ./algo [x] [n]
```

## Exponentiation

### Organisation

Ce dossier contient nos travaux autour de l'algorithme d'exponentation (i.e calcul de $x^{n}$ pour n allant de 0 à 10000 et 10 valeurs différentes de x proches de 1).
Il est organisé en trois parties : une partie principale où l'on retrouve notre code, un dossier (`plots/`) contenant les graphes obtenus et un dossier (`results/`) contenant les résultats bruts.

Concernant le code, on a :
 - `run.sh` : exécute le main sur 33 itérations pour une valeur de x fixée et stocke les données dans le dossier `results/`
 - `algo.c` : regroupe les algorithmes calculant $x^{n}$ en simple précision
 - `reference.c` : contient un algorithme calculant $x^{n}$ en double précision (on a choisi de garder l'algorithme naïf itératif comme référence pour nos calculs d'erreurs)
 - `main.c` : fichier principal dans lequel on retrouve nos calculs d'erreurs, prenant en arguments, dans l'ordre, [x] : valeur pour laquelle on va calculer $x^{n}$ et [ind] : indicateur pour savoir quelle version de la fonction d'exponentiation exécuter.  
ind = 0 pour choisir la version naïve récursive  
ind = 1 pour choisir la version naïve itérative  
ind = 2 pour choisir la version rapide récursive  
ind = 3 pour choisir la version rapide itérative
 - `plots/plot.py` : trace les graphes

### Usage

Pour obtenir les graphes présents dans le dossier `Exponentiation/plots/` faire, en se plaçant dans le répertoire `Exponentiation/`:

```bash
$ ./run.sh
```
pour générer les données (cela prend quelques minutes), qui seront ensuite stockées dans le dossier `results/`. 

Puis faire :

```bash
$ cd plots
$ python3 plot.py
```
pour générer les graphes.

## Exponentiation_etudes_mantisse

### Organisation

### Usage

## Lorenz

### Organisation

### Usage

## Performance 1er_semestre

### Organisation

Ce dossier contient : 
- les algorithmes dont les performances sont à évaluer (dans `kernels.h`)
- le programme principal et une fonction benchmark pour l'évaluation et l'affichage des performances (dans `main.c`)
- les définitions de quelques fonctions utilisées dans le programme principal (dans `tools.c`)
- les définitions des types de valeurs exprimés autrement (dans `types.h`) 
- les résultats des performances des 4 algorithmes, les résultats sont obtenus en faisant varier les compilateurs gcc (dans `gcc/`) clang (dans `clang/`).
- les scripts : un script pour la generation des resultats de performance (`exe.sh`), un script pour trier les resultats (`pars.sh`), un script pour la réalisation des graphes (dans `graphe/graphee.Rmd`).

### Usage

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

## Performance AWS

### Organisation

### Usage


## Sommation

### Organisation

Ce dossier contient nos travaux autour de l'algorithme de sommation (i.e calcul de $n * x$ pour n allant de 0 à 11000 et 3 valeurs différentes de x : 0.1, 1.1 et 1.2).
Il est organisé en trois parties : une partie principale où l'on retrouve notre code, un dossier (`plot/`) contenant les graphes obtenus et un dossier (`results/`) contenant les résultats bruts.

Concernant le code, on a :
 - `run.sh` : exécute le main sur 33 itérations pour une valeur de x fixée et stocke les données dans le dossier `results/`
 - `algo.c` : contient un algorithme calculant $n * x$ en simple précision
 - `reference.c` : contient un algorithme calculant $n * x$ en double précision
 - `main.c` : fichier principal dans lequel on retrouve nos calculs d'erreurs, prenant en argument [x] : valeur pour laquelle on va calculer $n * x$.
 - `plot/plot.py` : trace les graphes

### Usage

Pour obtenir les graphes présents dans le dossier `Sommation/plot/` faire, en se plaçant dans le répertoire `Sommation/`:

```bash
$ ./run.sh
```
pour générer les données, qui seront ensuite stockées dans le dossier `results/`. 

Puis faire :

```bash
$ cd plot
$ python3 plot.py
```
pour générer les graphes.

## Sum_prod

### Organisation

Ce dossier contient les fichiers utiles pour les études d'une fonction définie comme une analogie du produit scalalre de deux vecteurs : $\sum_{i=1}^{n} x_i^k$

On distinque deux cas : $x_i$ sont constantes de valeurs 1.000001, 0.99999987654321, 1.00010002, ou $x_i$ sont aléatoirement générés par le fichier `vec_gen.c` (dans l'intervalle $[0.9998, 1.0002]$).

- `algo.h`, `calcul.c` et `ref.c` contiennent l'algorithme en précision floattante que l'on veut étudier (et la référence en précision double).
- `main.c` le fichier principal pour calculer les erreurs relatives en arrondi au plus près ou en arrondi stochastique.
- `stat.c` pour calculer la moyenne et l'écart-type des différentes répétitions.
- `*.sh` les scripts pour lancer le programme. On utilise `run_v.sh` pour valider nos codes car lorsque $x=2$, il n'y aura pas d'erreur. `run_x.sh`, `run_y.sh` et `run_z.sh` représentent respectivement les valeurs fixes 1.000001, 0.99999987654321 et 1.00010002, puis `run_r.sh` pour les vecteurs aléatoires.
- `*.gp` pour tracer les courbes avec les résultats obtenus.

- `UR/` et `SR/` contiennent les résultats.
- `plot/` contient les figures tracées.

### Usage

Remplacer 'a' par 'v' ($x=2$), 'x' ($x=1.000001$), 'y' ($x=0.99999987654321$), 'z' ($x=1.00010002$) ou 'r' ($x_i$ aléatoires) : 
```bash
$ cd sum_prod
$ ./run_a.sh
$ gnuplot plot_a.sh
```

## Auteurs

[Yizhi Yang](https://github.com/yizhi0129)  
[Yutai Zhao](https://github.com/yutaizhao)  
[Chun Qi](https://github.com/nanki520)  
[Lisa Taldir](https://github.com/lisataldir)  

## Remerciments

Merci à [Pablo De Oliveira Castro](https://github.com/pablooliveira), El-Mehdi El-Arar et Devan Sohier pour leurs conseils et leur encadrement.
