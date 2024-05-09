import numpy as np

def get_file(filename):
    with open(filename, 'r') as f:
        content = np.array([float(line.strip()) for line in f.readlines() if line.strip()])

    print(f"Minimum: {np.min(content):.5f}")
    print(f"Max: {np.max(content):.5f}")
    print(f"Median: {np.median(content):.5f}")
    print(f"Stddev: {np.std(content)*100:.5e}")


print("SR naif n = 60")
get_file("exp_naif60.dat")
print("SR rapide n = 60")
get_file("exp_rapide60.dat")
print("SR somme n = 60")
get_file("somme60.dat")

print("SR naif n = 10000")
get_file("exp_naif10000.dat")
print("SR rapide n = 10000")
get_file("exp_rapide10000.dat")
print("SR somme n = 10000")
get_file("somme10000.dat")