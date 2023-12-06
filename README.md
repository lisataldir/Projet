# PPN : Arrondi stochastique pour le calcul scientifique

## Usage test

Pour obtenir le fichier exp_naif/graphe-err.png suivre les étapes suivantes :

```bash
$ cd exp_naif
$ bash script_main.sh
# Creating directory results
[sudo] Mot de passe de lisa :            
Using default tag: latest
latest: Pulling from verificarlo/verificarlo
Digest: sha256:a9a653627fa8d7afc62692b97166a562a8de86e9fba9a16f64cd3fa914bd17c4
Status: Image is up to date for verificarlo/verificarlo:latest
docker.io/verificarlo/verificarlo:latest
# Creating folder output1.dat inside results
Info [verificarlo]: loaded backend libinterflop_mca.so
Info [interflop_mca]: load backend with precision-binary32 = 24, precision-binary64 = 53, mode = mca, error-mode = rel, max-abs-error-exponent = 112, daz = false, ftz = false and sparsity = 1.000000
# Creating folder output2.dat inside results
Info [verificarlo]: loaded backend libinterflop_mca.so
Info [interflop_mca]: load backend with precision-binary32 = 24, precision-binary64 = 53, mode = mca, error-mode = rel, max-abs-error-exponent = 112, daz = false, ftz = false and sparsity = 1.000000
# Creating folder output3.dat inside results
Info [verificarlo]: loaded backend libinterflop_mca.so
Info [interflop_mca]: load backend with precision-binary32 = 24, precision-binary64 = 53, mode = mca, error-mode = rel, max-abs-error-exponent = 112, daz = false, ftz = false and sparsity = 1.000000
# Creating folder output4.dat inside results
Info [verificarlo]: loaded backend libinterflop_mca.so
Info [interflop_mca]: load backend with precision-binary32 = 24, precision-binary64 = 53, mode = mca, error-mode = rel, max-abs-error-exponent = 112, daz = false, ftz = false and sparsity = 1.000000
# Creating folder output5.dat inside results
Info [verificarlo]: loaded backend libinterflop_mca.so
Info [interflop_mca]: load backend with precision-binary32 = 24, precision-binary64 = 53, mode = mca, error-mode = rel, max-abs-error-exponent = 112, daz = false, ftz = false and sparsity = 1.000000
$ bash script_reference.sh
# Creating folder ref1.dat inside results
# Creating folder ref2.dat inside results
# Creating folder ref3.dat inside results
# Creating folder ref4.dat inside results
# Creating folder ref5.dat inside results
$ make
gcc -g erreur.c -o erreur
$ ./erreur
$ gnuplot evolution-erreur.gp
```

