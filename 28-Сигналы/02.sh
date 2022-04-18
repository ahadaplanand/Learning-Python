#!/bin/bash

trap "echo 'Goodgye...'" EXIT

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
trap "echo 'Trapped on $path'" SIGINT
cp "$path" "$directory"
sleep 1
done