# Set titles based on the second line of each file
title(i) = system(sprintf("sed -n '2p' results/output%d.dat", i))

plot for [i=1:5] sprintf("erreur%d.dat", i) title sprintf("x = %s", title(i)) with lines

pause -1