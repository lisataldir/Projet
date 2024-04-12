import os
import time
import torch
import sys
import torch_xla
import torch_xla.core.xla_model as xm
device = xm.xla_device()

n = 100

r_sum = torch.tensor(1024.0).half().to(device)
x = torch.tensor(0.5).half().to(device)
for i in range(n):
    r_sum += x
    xm.mark_step()
print(f"naif\t{r_sum}")

r_naif =  torch.tensor(1024.0).half().to(device)
x = torch.tensor(0.5).half().to(device)
for i in range(n):
    r_naif *= x
    xm.mark_step()
print(f"naif\t{r_naif}")

r_rapid =  torch.tensor(1024.0).half().to(device)
x = torch.tensor(0.5).half().to(device)
while n != 0:
    if n % 2 == 1:
        r_rapid *= x
    x *= x
    n //= 2
    xm.mark_step()
print(f"rapid\t{r_rapid}")




