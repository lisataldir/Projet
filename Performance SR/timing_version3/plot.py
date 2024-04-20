import matplotlib.pyplot as plt
import numpy as np

x = np.arange(10001)

# Récupération des données SR pour la somme
with open(f'../timeSR/sum.dat', 'r') as f:
    for line in f:
        y_sr = [float(num) for num in line.split() if (num != "sum")]

# Récupération des données RN pour la somme
with open(f'../timeRN/sum.dat', 'r') as f:
    for line in f:
        y_rn = [float(num) for num in line.split() if (num != "sum")]

# Figure
fig, ax = plt.subplots(1,1, figsize=(9, 4))

ax.plot(x, y_sr, color='#cb3717', label='SR')
ax.plot(x, y_rn, color='#1446aa', label='RN')

ax.set_xlabel('n')
ax.set_ylabel('time (s)')
ax.legend()
ax.grid(True, which='both', linestyle='-', alpha=0.5)

plt.savefig('time_sum.png')


# On fait pareil pour l'exponentiation

with open(f'../timeSR/naif.dat', 'r') as f:
    for line in f:
        y_sr = [float(num) for num in line.split() if (num != "naif")]

with open(f'../timeRN/naif.dat', 'r') as f:
    for line in f:
        y_rn = [float(num) for num in line.split() if (num != "naif")]

fig, ax = plt.subplots(1,1, figsize=(9, 4))

ax.plot(x, y_sr, color='#cb3717', label='SR')
ax.plot(x, y_rn, color='#1446aa', label='RN')
ax.set_xlabel('n')
ax.set_ylabel('time (s)')
ax.legend()
ax.grid(True, which='both', linestyle='-', alpha=0.5)

plt.savefig('time_expnaif.png')

with open(f'../timeSR/rapid.dat', 'r') as f:
    for line in f:
        y_sr = [float(num) for num in line.split() if (num != "rapid")]

with open(f'../timeRN/rapid.dat', 'r') as f:
    for line in f:
        y_rn = [float(num) for num in line.split() if (num != "rapid")]

fig, ax = plt.subplots(1,1, figsize=(9, 4))

ax.plot(x, y_sr, color='#cb3717', label='SR')
ax.plot(x, y_rn, color='#1446aa', label='RN')
ax.set_xlabel('n')
ax.set_ylabel('time (s)')
ax.legend()
ax.grid(True, which='both', linestyle='-', alpha=0.5)

plt.savefig('time_exprapid.png')