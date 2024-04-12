import os
import time
import torch
import sys
import torch_xla
import torch_xla.core.xla_model as xm
device = xm.xla_device()

n = 100
nb_iter = int(sys.argv[1])

start = time.time()
for i in range(nb_iter):
    r_sum = torch.tensor(0.0).half().to(device)
    x = torch.tensor(0.9999999).half().to(device)
    for i in range(n):
        r_sum += x
        xm.mark_step()
end = time.time()
print(f"naif\t{r_sum}\t{start:.17f}\t{end:.17f}") 


start = time.time()
for i in range(nb_iter):
    r_naif =  torch.tensor(1.0).half().to(device)
    x = torch.tensor(0.9999999).half().to(device)
    for i in range(n):
        r_naif *= x
        xm.mark_step()
end = time.time()
print(f"naif\t{r_naif}\t{start:.17f}\t{end:.17f}") 


start = time.time()
for i in range(nb_iter):
    r_rapid =  torch.tensor(1.0).half().to(device)
    x = torch.tensor(0.9999999).half().to(device)
    while n != 0:
        if n % 2 == 1:
            r_rapid *= x
        x *= x
        n //= 2
        xm.mark_step()
end = time.time()
print(f"rapid\t{r_rapid}\t{start:.17f}\t{end:.17f}")




