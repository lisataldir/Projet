import torch
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D

def lorenz(x, y, z, sigma=10, rho=28, beta=8/3):
    dx = sigma * (y - x)
    dy = x * (rho - z) - y
    dz = x * y - beta * z
    return dx, dy, dz

def simulate_lorenz(initial_state, num_steps, dt):
    xs = torch.zeros(num_steps + 1)
    ys = torch.zeros(num_steps + 1)
    zs = torch.zeros(num_steps + 1)
    
    xs[0], ys[0], zs[0] = initial_state
    
    for i in range(num_steps):
        dx, dy, dz = lorenz(xs[i], ys[i], zs[i])
        xs[i + 1] = xs[i] + (dx * dt)
        ys[i + 1] = ys[i] + (dy * dt)
        zs[i + 1] = zs[i] + (dz * dt)
    
    return xs, ys, zs

# Define parameters
initial_state = torch.tensor([1.0, 1.0, 1.0])
num_steps = 10000
dt = 0.01

# Simulate Lorenz system
xs, ys, zs = simulate_lorenz(initial_state, num_steps, dt)

# Plot results
fig = plt.figure()
ax = fig.add_subplot(111, projection='3d')
ax.plot(xs.numpy(), ys.numpy(), zs.numpy())
ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')
ax.set_title('Lorenz System')
plt.show()
