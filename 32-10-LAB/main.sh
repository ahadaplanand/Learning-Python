#!/bin/bash

function main {
    first=$( echo $1 | rev | cut -d/ -f1 | rev )
    var=$( echo $1 | rev )
    fpath=$( echo ${var#*/} | rev )
    cd $fpath
    declare -a directories
    declare -a ext
    declare -A extensions
    recursive $first
    present
}

function recursive {
    directory $1
    cd $1
    for smth in *; do
        if [ -d "$smth" ] 
        then recursive $smth
        elif [ -f "$smth" ] 
        then extension $smth
        fi
    done
    cd ..
}

function directory {
    name=$1
    size=$( du -sh $1 | cut -f 1 )
    cd $1
    count_d=$(( $( find . -maxdepth 1 -type d | wc -l ) - 1 ))
    count_f=$( find . -maxdepth 1 -type f | wc -l )
    cd ..
    directories+=("$name $count_d $count_f $size")
}

function extension {
    if [[ $1 =~ "." ]]
    then title=`echo "$1" | cut -d'.' -f1`
    exten=`echo "$1" | cut -d'.' -f2`
    else title=$1
    exten="None"
    fi
    if echo ${ext[@]} | grep -q -w "$exten"
    then var=${extensions[$exten]}
    extensions[$exten]="$var  $title"
    else ext+=($exten)
    extensions[$exten]="$title"
    fi
}

function present {
    echo -e "\n---directories------------------------------------------"
    printf "%-19s %-10s %-11s %-12s\n" "TITLE" "FOLDERS" "FILES" "SIZE"
    for i in "${directories[@]}"; do
    IFS=' ' read -ra divided <<< $i
        if [[ ${#divided[0]} -lt 20 ]]
        then printf "%-20s %-10s %-10s %-12s\n" "${divided[0]}" ${divided[1]} ${divided[2]} ${divided[3]} 
        else echo ${divided[0]} | awk 'BEGIN {FIELDWIDTHS="17"} {printf $1} END {printf "..."}'
        printf " %-10s %-10s %-12s\n" ${divided[1]} ${divided[2]} ${divided[3]}
        fi
    done
    echo -e "\n---extensions-------------------------------------------"
    printf "%-14s %-11s %-10s" "EXTENSION" "COUNT" "TITLES"
    for i in "${ext[@]}"; do
    len=` echo "${extensions[$i]}" | wc -w `
    printf "\n%-15s %-10s " $i $len
    cou=0
        IFS=' ' read -ra titles <<< ${extensions[$i]}
        for tit in "${titles[@]}"; do
            if [[ $cou -lt 4 ]]
            then printf "%s " $tit
            cou=$(( $cou + 1 ))
            else printf "%s | ETC..." $tit
            break
            fi
        done
    done
    echo -e "\n"
}

main $1

# ./main.sh /home/vealniycahko/Study/Python/32-10-LAB/Findings