import os
import time
import torch
import sys
import torch_xla
import torch_xla.core.xla_model as xm
import random
device = xm.xla_device()

a = torch.tensor(random.uniform(1.001, 1.01)).half().to(device)
n = 1000
nb_iter = int(sys.argv[1])

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

print(f"x={a.item()},n={n}")

r_sum = torch.tensor(0.0).half().to(device)
for i in range(nb_iter):
    start = time.time()
    r_sum = somme(a.clone(),n)
    end = time.time()
    print(f"sum\t{r_sum.item()}\t{start:.17f}\t{end:.17f}") 

r_naif = torch.tensor(0.0).half().to(device)
for i in range(nb_iter):
    start = time.time()
    r_naif = exp_naif(a.clone(),n)
    end = time.time()
    print(f"naif\t{r_naif.item()}\t{start:.17f}\t{end:.17f}") 

r_rapid = torch.tensor(0.0).half().to(device)
for i in range(nb_iter):
    start = time.time()
    r_rapid = exp_rapid(a.clone(),n)
    end = time.time()
    print(f"rapid\t{r_rapid.item()}\t{start:.17f}\t{end:.17f}")




