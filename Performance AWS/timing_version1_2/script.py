import numpy as np

def get_file(filename):
    with open(filename, 'r') as f:
        content = np.array([float(line.strip()) for line in f.readlines() if line.strip()])

    print(f"Minimum: {np.min(content):.5f}")
    print(f"Max: {np.max(content):.5f}")
    print(f"Mean: {np.mean(content):.5f}")
    print(f"Median: {np.median(content):.5f}")
    print(f"Stddev: {np.std(content)*100:.5e}")





print("\n")
print("UR naif")
get_file("timing_UR/elaps_naif.dat")
print("SR naif")
get_file("timing_SR/elaps_naif.dat")
print("\n")
print("UR rapide")
get_file("timing_UR/elaps_rapid.dat")
print("SR rapide")
get_file("timing_SR/elaps_rapid.dat")
print("\n")
print("UR sum")
get_file("timing_UR/elaps_sum.dat")
print("SR sum")
get_file("timing_SR/elaps_sum.dat")
print("\n")
