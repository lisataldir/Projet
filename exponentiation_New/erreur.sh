#!/bin/bash

# 计算平均值的函数
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

paste -d '\t' $(for i in {1..50}; do echo -n "$algo/err_$i.dat "; done) > "$algo/SR.dat"

line_number=0
while IFS=$'\t' read -r -a line; do
    mean=$(calculate_mean "${line[*]}")
    echo "$line_number $mean"
    ((line_number += 10))
done < "$algo/SR.dat" > "$output_file"

paste "$output_file" "$algo/UR_err.dat" > "$algo/temp.dat" && mv "$algo/temp.dat" "$output_file"

echo "Mean values calculated and saved to '$output_file'."
done
