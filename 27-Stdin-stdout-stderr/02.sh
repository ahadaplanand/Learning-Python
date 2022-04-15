#!/bin/bash

exec 1>output_log
exec 2>errors_log

while [ -n "$1" ]
do
    case "$1" in
    -f) file="$2";;
    -d) directory="$2";;
    esac
    shift
done

cat $file | while read path
do
cp "$path" "$directory"
done