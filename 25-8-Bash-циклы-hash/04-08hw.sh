#!/bin/bash

cat file | while read line    
    do
    IFS=' ' read -ra divided <<< $line
    printf "%s " ${divided[0]} >> hash_file
    printf "%s" ${divided[1]} | md5sum >> hash_file
    done
