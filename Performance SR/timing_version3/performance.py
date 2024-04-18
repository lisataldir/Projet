# Importation des librairies utiles pour AWS Neuron
import os
import time
import torch
import sys
import torch_xla
import torch_xla.core.xla_model as xm
import random
import numpy as np

device = xm.xla_device()

# Implémentation de nos trois algorithmes
def somme(x,n):
    r =  torch.tensor(0.0).half().to(device)
    for i in range(n):
        r += x
        xm.mark_step()
    return r

def exp_naif(x,n):
    r =  torch.tensor(1.0).half().to(device)
    for i in range(n):
        r *= x
        xm.mark_step()
    return r


def exp_rapid(x, n):
    r =  torch.tensor(1.0).half().to(device)
    while n != 0:
        if n % 2 == 1:
            r *= x
        x *= x
        n //= 2
        xm.mark_step()
    return r


# x choisi pour faire la mesure de temps, nb_iter nombre de répétitions pour chaque entier n, tmp tableau qui va contenir les mesures de temps
x =  torch.tensor(0.999999).half().to(device)
nb_iter = 51 
tmp = np.zeros(nb_iter)

# Initialisation des variables qui vont contenir le résultat
r_sum = torch.tensor(0.0).half().to(device)
r_naif = torch.tensor(0.0).half().to(device)
r_rapid = torch.tensor(0.0).half().to(device)


# Mesure du temps d'exécution pour n de 0 à 10 000
for n in range(10001):

    for i in range(nb_iter):
        start = time.time()
        r_sum = somme(x,n)
        end = time.time()
        tmp[i] = end-start

    print(f"sum {np.median(tmp):.17f}")

    for i in range(nb_iter):
        start = time.time()
        r_naif = exp_naif(x,n)
        end = time.time()
        tmp[i] = end-start
    
    print(f"naif {np.median(tmp):.17f}")

    for i in range(nb_iter):
        start = time.time()
        r_rapid = exp_rapid(x,n)
        end = time.time()
        tmp[i] = end-start
    
    print(f"rapid {np.median(tmp):.17f}")