
Path="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
#sources voir referencee

n="10"
mediane=51
#READ IT !!!
echo "Trier $(( (mediane-1)*2+1 )) resultats pour n = $n, modifier ce script pour changer les valeurs"
sleep 1
echo "Par defaut : n vaut 8"


#ici j'ai utilise CC mais pas compiler comme le nom du variable comme dans exe.sh, sinon le var du nom du fichier sera trop long
for CC in gcc clang
do
    cd $Path
    cd $CC
    rm -f *_med_allflags.txt
    for algo in "naif_rec" "naif_ite" "rapi_rec" "rapi_ite"
    do
        rm -rf $algo"_"$n
        sleep 2 #so that you can see the files has been deleted
    
        mkdir $algo"_"$n
        echo "Creating directories for algos compiled by $CC"
        cd $algo"_"$n
        mkdir build
        cd ..
    
        echo "Creating files for $algo"

        for flag in "O0" "O1" "O2" "O3" "Ofast"
        do
            #sort result according to mbps
            grep "$algo" $CC"_"$flag"_"$n".txt" | sort -t';' -k12,12 -n > "./"$algo"_"$n"/build/sort_"$CC$flag$algo".txt"
            #get only the info of med result
            echo "$flag" >> "./"$CC$n$algo"_med_allflags.txt"
            sed -n $mediane'p' "./"$algo"_"$n"/build/sort_"$CC$flag$algo".txt">> "./"$CC$n$algo"_med_allflags.txt"
            #get only mbps
            sed -n $mediane'p' "./"$algo"_"$n"/build/sort_"$CC$flag$algo".txt" | cut -d";" -f 12 >> "./"$algo"_"$n"/"$CC$n$algo"_med_mbps_allflags.txt"
        
            grep "$algo" $CC"_"$flag"_"$n".txt" | cut -d";" -f 10 >> "./"$algo"_"$n"/build/mean_"$CC$flag".txt"
            grep "$algo" $CC"_"$flag"_"$n".txt" | cut -d";" -f 11 >> "./"$algo"_"$n"/build/stddev_"$CC$flag".txt"
            grep "$algo" $CC"_"$flag"_"$n".txt" | cut -d";" -f 12 >> "./"$algo"_"$n"/build/mbps_"$CC$flag".txt"
        done

        paste "./"$algo"_"$n"/build/"mean_* > "./"$algo"_"$n"/"$CC$n$algo"_mean_allflags.txt"
        paste "./"$algo"_"$n"/build/"stddev_* > "./"$algo"_"$n"/"$CC$n$algo"_stddev_allflags.txt"
        paste "./"$algo"_"$n"/build/"mbps_* > "./"$algo"_"$n"/"$CC$n$algo"_mbps_allflags.txt"
        sed 's/([^)]*)//g' "./"$algo"_"$n"/"$CC$n$algo"_stddev_allflags.txt" > "./"$algo"_"$n"/"$CC$n$algo"_stddev_PUR_allflags.txt"
        #chatgpt:sed 's/([^)]*)//g'
    done

done
echo "FIN"
echo "ATTENTION : les fichiers generes qui ne sont pas dans BUILD servent DIRECTEMENT à la construction des Graphes/Tableaux pour le rapport"
