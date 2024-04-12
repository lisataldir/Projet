import os
import sys

nb_iter = int(sys.argv[1])

def elaps(file_path):
    print(file_path)
    elaps_path = raw_path.replace("raw","elaps")
    if not(os.path.exists(file_path) and os.path.getsize(file_path)):
        print("Error: unexpected file", file_path)
        return
    with open(file_path, 'r') as file:
        with open(elaps_path, 'a') as elaps_file:
            for line in file:
                columns = line.strip("\t").split()
                if len(columns) == 4:
                    difference = float(columns[3]) - float(columns[2])
                    res = difference/nb_iter
                    print("Elaps ",res)
                    elaps_file.write(str(res)+"\n")
                else:
                    print("Error: Not enough columns in the line -", line.strip())
                    return


raw_data_paths = ["timing_UR/raw_naif.dat","timing_UR/raw_rapid.dat","timing_SR/raw_naif.dat","timing_SR/raw_rapid.dat"]

for raw_path in raw_data_paths :
    elaps(raw_path)
    
        
        
