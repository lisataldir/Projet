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

print("Start timing : naif")
start = time.time()
r_naif = 0.0
for i in range(1000):
    r_naif = exp_naif(2,10)
end = time.time()
elaps = (end-start)/1000 #car 1000 fois de calculs
#on va convertir elaps(second) en ms, donc fois 1000
print(f'The execution time of exp_naif is : {elaps*1000:.10f} ms. Result = {r_naif}' )

print("Start timing : rapid")
start = time.time()
r_rapid = 0.0
for i in range(1000):
    r_rapid = exp_rapid(2,10)
end = time.time()
elaps = (end-start)/1000
print(f'The execution time of exp_rapid is : {elaps*1000:.10f} ms. Result = {r_rapid}' )



