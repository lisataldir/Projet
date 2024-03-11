import os
import time


def exp_naif(x,n):
    r = 1.0
    for i in range(n):
        r *= x
    return r


def exp_rapid(x, n):
    r = 1.0
    while n != 0:
        if n & 1 == 1:
            r *= x
        x *= x
        n >>= 1
    return r

start = time.time()
r_naif = 0.0
for i in range(1000):
    r_naif = exp_naif(2,100)
end = time.time()
print(f"naif {r_naif} {start:.17f} {end:.17f}")

start = time.time()
r_rapid = 0.0
for i in range(1000):
    r_rapid = exp_rapid(2,100)
end = time.time()
print(f"rapid {r_rapid} {start:.17f} {end:.17f}")





