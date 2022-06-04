#!/bin/bash

count=$1
deep=$2

for (( i=1; i<=$count; i++))
    do
    for (( ii=0; ii<=$deep; ii++))
        do
        echo "$i.$ii" >> third
        done
    done
