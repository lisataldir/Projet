import os
import time
import torch
import sys
import torch_xla
import torch_xla.core.xla_model as xm
device = xm.xla_device()

a = torch.tensor(2, dtype=torch.float64).to(device)
n = 100
nb_iter = int(sys.argv[1])

def somme(x,n):
    r =  torch.tensor(0.0, dtype=torch.float64).to(device)
    for i in range(n):
        r += x
        xm.mark_step()
    return r

def exp_naif(x,n):
    r =  torch.tensor(1.0, dtype=torch.float64).to(device)
    for i in range(n):
        r *= x
        xm.mark_step()
    return r


def exp_rapid(x, n):
    r =  torch.tensor(1.0, dtype=torch.float64).to(device)
    while n != 0:
        if n % 2 == 1:
            r *= x
        x *= x
        n //= 2
        xm.mark_step()
    return r


r_sum = 0.0
start = time.time()
for i in range(nb_iter):
    r_sum = somme(a.clone(),n)
end = time.time()
print(f"naif\t{r_sum}\t{start:.17f}\t{end:.17f}") 

r_naif = 0.0
start = time.time()
for i in range(nb_iter):
    r_naif = exp_naif(a.clone(),n)
end = time.time()
print(f"naif\t{r_naif}\t{start:.17f}\t{end:.17f}") 

r_rapid = 0.0
start = time.time()
for i in range(nb_iter):
    r_rapid = exp_rapid(a.clone(),n)
end = time.time()
print(f"rapid\t{r_rapid}\t{start:.17f}\t{end:.17f}")




