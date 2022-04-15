#!/bin/bash

# 1
# ls -l output notexistingfile.txt 1> output 2> errors


# 2
# ls -l output notexistingfile.txt &> output


# 3
# echo "This is an error" >&2
# echo "This is normal output"
# >> ls -l output notexistingfile.txt &> output


# 4
# exec 1>output
# echo "sdfd"
# echo "sgsgdgw"

# exec 2>errors
# echo "error" >&2
# echo "error again" >&2


# 5
# exec 0<output
# count=1
# while read line
# do
#     echo "line #$count: $line"
#     count=$(($count + 1))
# done


# 6
# exec 3>output_2
# echo "This should be on the screen"
# echo "This goes to custom output" >&3


# 7
# exec 3>output_2
# exec 5>file12332
# exec 7>output_34
# echo "This should be on the screen"
# echo "dgsgsdc" >&3
# echo "sgdgs" >&5
# echo "asl,al," >&7

# lsof -a -p $$ -d 0,1,2,3,5,7 
# ls -l output notexistingfile.txt 2> /dev/null # в пустоту


# 8
# cat /dev/null > output # очищаем файл