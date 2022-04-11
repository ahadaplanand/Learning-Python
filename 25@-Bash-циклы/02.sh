#!/bin/bash

file="01.sh"

echo "First:"
for line in $(cat $file)
    do
    echo "$line"
    done

echo "Second:"
while IFS= read -r line
    do 
    echo "$line"
    done < 01.sh

echo "Third:"
for (( i=1; i<10; i++))
    do
    echo "$i"
    done

echo "Fourth:"
var=5
while [ $var -gt 0 ]
    do 
    echo $var
    var=$[ $var - 1 ]
    done

echo "Fifth:"
for path in /home/vealniycahko/Study/Python/*
    do
    if [ -d "$path" ]
    then
    echo "$path is a directory"
    elif [ -f "$path" ]
    then
    echo "$path is a file"
    fi 
    done

for path in /home/vealniycahko/Study/Python/*
    do
    if [ -d "$path" ]
    then
    echo "$path is a directory" >> log
    elif [ -f "$path" ]
    then
    echo "$path is a file" >> log
    fi 
    done

echo "$0 $1 $2 $3"
