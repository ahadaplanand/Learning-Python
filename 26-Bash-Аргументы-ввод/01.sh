#!/bin/bash


# 1
# total=$[$1 + $2]
# echo "Total: $total"


# 2
# echo "Args: $1 $2 $3 $4 $5 $6 $7 $8 $9 ${10}"


# 3
# if [-n "$1"]
# then
# echo "Hello, $1"
# else
# echo "Not args given"
# fi


# 4
# if [ -n "$1" ]
# then
# echo "The numder of args $#"
# else
# echo "Not args given"
# fi


# 5
# echo "All args: $*"
# echo "All args[2]: $@"

# count=1
# for arg in "$*"
# do
# echo "(*)Arg number $count is $arg"
# count=$(($count + 1))
# done

# count=1
# for arg in "$@"
# do
# echo "(@)Arg number $count is $arg"
# count=$(($count + 1))
# done

# >> All args: dgerg ergerg erger
# >> All args[2]: dgerg ergerg erger
# >> (*)Arg number 1 is dgerg ergerg erger
# >> (@)Arg number 1 is dgerg
# >> (@)Arg number 2 is ergerg
# >> (@)Arg number 3 is erger


# 6
# count=1
# while [ -n "$1" ]
# do
# echo "Arg number $count is $1"
# count=$(($count + 1))
# shift
# done


# 7
# while [ -n "$1" ]
# do
#     case "$1" in
#     -a) echo "Arg -a found";;
#     -b) echo "Arg -b found";;
#     *) echo "$1 not supported";; # else
#     esac
#     shift
# done


# 8
# ./01.sh -a -b -- arg1 arg2    -- разделяет ключевые и позиционные аргументы
# while [ -n "$1" ]
# do
#     case "$1" in
#     -d) directory="$2"
#     echo "Directory $directory"
#     -b) parampampam="$2"
#     echo "Arg -b found with param $parampampam"
#     shift;;
#     --) shift
#     break;;
#     *) echo "$1 not supported";;
#     esac
#     shift
# done


# 9
# echo "Enter your name"
# read name
# echo "Hello, $name"

# read -p "Enter your name: " first second
# echo "Hello, $first $second!"

# read -p "Enter your name: "
# echo "Hello, $REPLY!"

# read -s -p "Enter your password: " # -s не отображается
# echo "Is your password $REPLY?"

# if read -t 5 -s -p "Enter your password: "
# then
# echo "Is your password $REPLY?"
# else
# echo "Too slow!"
# fi


# 10
# count=1
# file="smth"
# cat $file | while read line
# do  
#     echo "Line number $count is:"
#     echo "$line"
#     count=$(($count + 1))
# done
# echo "Finished reading file $file"