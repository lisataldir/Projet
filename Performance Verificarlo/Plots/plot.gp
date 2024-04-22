set terminal png   
set output 'time_somme.png'  

set grid
set xlabel 'n'        
set ylabel 'time (ms)'

plot "../SR/sommeSR.dat" w lp title 'SR', \
     "../SR/sommeRN.dat" w lp  title 'RN Vérificarlo', \
     "../RN/somme.dat" w lp title 'RN with gcc'

set terminal png   
set output 'time_exp_naif.png'  

set grid
set xlabel 'n'        
set ylabel 'time (ms)'

plot "../SR/exp_naifSR.dat" w lp title 'SR', \
     "../SR/exp_naifRN.dat" w lp title 'RN Vérificarlo', \
     "../RN/exp_naif.dat" w lp title 'RN with gcc'

set terminal png   
set output 'time_exp_rapide.png'  

set grid
set xlabel 'n'        
set ylabel 'time (ms)'

plot "../SR/exp_rapideSR.dat" w lp title 'SR', \
     "../SR/exp_rapideRN.dat" w lp title 'RN Vérificarlo', \
     "../RN/exp_rapide.dat" w lp title 'RN with gcc'
     
