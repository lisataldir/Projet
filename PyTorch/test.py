import torch
import torch_xla
import torch_xla.core.xla_model as xm

a = torch.tensor(1024.0).half().to(device)
for i in range(2048):
    a = (a + 0.5)
    xm.mark_step()

print(a)