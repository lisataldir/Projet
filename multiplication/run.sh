#! /bin/bash

echo "# Creating directory results"
mkdir -p results

echo "# Creating subdirectory results/naif_iter, results/naif_rec, results/rapide_iter and results/rapide_rec"
mkdir -p results/naif_iter results/naif_rec results/rapide_iter results/rapide_rec

make 

x=0.1
N=100000
n=100

#CALCUL n*x pour tout n=0...(N-1)

for i in {1..6}
do
echo "# Creating folder results//naif_rec/SR_$i.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so --mode=rr" verificarlo/verificarlo ./SR_main "$x" "$N" "$n" 0 > results/naif_rec/SR_$i.dat
echo "# Creating folder results/naif_iter/SR_$i.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so --mode=rr" verificarlo/verificarlo ./SR_main "$x" "$N" "$n" 1 > results/naif_iter/SR_$i.dat
echo "# Creating folder results/rapide_rec/SR_$i.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so --mode=rr" verificarlo/verificarlo ./SR_main "$x" "$N" "$n" 2 > results/rapide_rec/SR_$i.dat
echo "# Creating folder results/rapide_iter/SR_$i.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_mca_int.so --mode=rr" verificarlo/verificarlo ./SR_main "$x" "$N" "$n" 3 > results/rapide_iter/SR_$i.dat
done

echo "# Creating folder results/naif_rec/UR.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so --mode=rr" verificarlo/verificarlo ./UR_main "$x" "$N" "$n" 0 > results/naif_rec/UR.dat
echo "# Creating folder results/naif_iter/UR.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so --mode=rr" verificarlo/verificarlo ./UR_main "$x" "$N" "$n" 1 > results/naif_iter/UR.dat
echo "# Creating folder results/rapide_rec/UR.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so --mode=rr" verificarlo/verificarlo ./UR_main "$x" "$N" "$n" 2 > results/rapide_rec/UR.dat
echo "# Creating folder results/rapide_iter/UR.dat"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so --mode=rr" verificarlo/verificarlo ./UR_main "$x" "$N" "$n" 3 > results/rapide_iter/UR.dat

echo "# Calculating ref value using naif_iter algo"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so --mode=rr" verificarlo/verificarlo ./ref_main "$x" "$N" "$n" 1 > results/UR.dat

sleep 2

#CALCUL D'ERREURS

for i in {1..6}
do
echo "# Creating folders for SR errors: naif_iter"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so --mode=rr" verificarlo/verificarlo ./erreur "naif_iter" "$i" > results/naif_iter/err_$i.dat
echo "# Creating folders for SR errors: naif_rec"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so --mode=rr" verificarlo/verificarlo ./erreur "naif_rec" "$i" > results/naif_rec/err_$i.dat
echo "# Creating folders for SR errors: rapide_iter"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so --mode=rr" verificarlo/verificarlo ./erreur "rapide_iter" "$i" > results/rapide_iter/err_$i.dat
echo "# Creating folders for SR errors: rapide_rec"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so --mode=rr" verificarlo/verificarlo ./erreur "rapide_rec" "$i" > results/rapide_rec/err_$i.dat
done

echo "# Creating folders for UR errors: naif_iter"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so --mode=rr" verificarlo/verificarlo ./erreur "naif_iter" -1 > results/naif_iter/UR_err.dat
echo "# Creating folders for UR errors: naif_rec"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so --mode=rr" verificarlo/verificarlo ./erreur "naif_rec" -1 > results/naif_rec/UR_err.dat
echo "# Creating folders for UR errors: rapide_iter"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so --mode=rr" verificarlo/verificarlo ./erreur "rapide_iter" -1 > results/rapide_iter/UR_err.dat
echo "# Creating folders for UR errors: rapide_rec"
sudo docker run -v "$PWD":/workdir -e VFC_BACKENDS="libinterflop_ieee.so --mode=rr" verificarlo/verificarlo ./erreur "rapide_rec" -1 > results/rapide_rec/UR_err.dat

sleep 2

#CALCUL DES MOYENNES DES ERREURS

calculate_mean() {
    local line=$1
    local sum=0
    local count=0
    for num in $line; do
        sum=$(echo "$sum + $num" | bc)
        ((count++))
    done
    echo "scale=17; $sum / $count" | bc
}


for algo in "results/naif_iter" "results/naif_rec" "results/rapide_rec" "results/rapide_iter"
do
output_file="$algo/SR_stat.dat"

paste -d '\t' $(for i in {1..6}; do echo -n "$algo/err_$i.dat "; done) > "$algo/SR.dat"

line_number=0
while IFS=$'\t' read -r -a line; do
    mean=$(calculate_mean "${line[*]}")
    echo "$line_number $mean"
    ((line_number += n))
done < "$algo/SR.dat" > "$output_file"

paste "$output_file" "$algo/UR_err.dat" > "$algo/temp.dat" && mv "$algo/temp.dat" "$output_file"

echo "Mean values calculated and saved to '$output_file'."
done
