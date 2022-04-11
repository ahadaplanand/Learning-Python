#!/bin/bash

cat file | while read line    
    do
    IFS=' ' read -ra divided <<< $line
    echo "$s" ${divided[0]} >> hash_file
    echo "$s" ${divided[1]} | md5sum >> hash_file
    done
