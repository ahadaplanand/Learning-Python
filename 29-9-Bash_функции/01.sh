#!/bin/bash


# 1
# function main {
#     echo 'my function'
# }

# $count = 1
# while [ $count -le 3 ]
# do
# echo "this is loop #$count"
# main
# $count=$(( $count + 1 ))
# done


# 2
# function add_ten {
#     read -p "Enter value: " value
#     return $(( value + 10 ))
# }

# add_ten
# echo "value is $?"


# 3
# function add_ten {
#     read -p "Enter value: " value
#     echo $(( value + 10 ))
# }

# result=$( add_ten )
# echo "value is $result"


# 4
# function add_ten {
#     echo $(( $1 + 10 ))
# }

# result=$( add_ten 15 )
# echo "value is $result"


# 5
# function add_arg {
#     echo $(( $1 + $2 ))
# }

# result=$( add_arg 15 $1 )
# echo "value is $result"


# 6
# function smth {
#     if [[ $# -eq 0 ]] || [[ $# -gt 2 ]]
#         then echo -1
#         elif [[ $# -eq 1 ]]
#         then echo $(( $1 + $1 ))
#         else echo $(( $1 + $2 ))
#     fi
# }

# echo "Addiction 10 and 15"
# value1=$( smth 10 15 )
# echo $value1

# echo "Addiction 10 and 10"
# value2=$( smth 10 )
# echo $value2

# echo "Addiction 10, 15 and 20"
# value3=$( smth 10 15 20 )
# echo $value3


# 7
# function again {
#     value=$(( $value + 10 ))
# }

# read -p "Enter value: " value
# again
# echo "But value is $value"


# 8
# function again {
#     local temp=$(( $value + 10 ))
#     echo "Local temp: $temp"
# }

# read -p "Enter value: " value
# temp=25
# again
# echo "Value: $value"
# echo "Global temp: $temp"


# 9
# function func_again {
#     echo "The parametres are: $@"
#     arr=("$@")
#     echo "The received array: ${arr[*]}"    
# }

# array=(1 2 3 4 5)
# echo "Our array: ${array[*]}"
# func_again ${array[*]}


# 10
# function factorial {
#     if [[ $1 -eq 1 ]] 
#     then echo 1
#     else
#     local temp=$(( $1 - 1 ))
#     local result=$( factorial $temp )
#     echo $(( $result * $1 ))
# }

# read -p "Value for factorial" value
# result=$( factorial $value )
# echo "Factorial for $value is $result"


# 11
function smth_again {
    if [[ $# -eq 0 ]] || [[ $# -gt 2 ]]
        then echo -1
        elif [[ $# -eq 1 ]]
        then echo $(( $1 + $1 ))
        else echo $(( $1 + $2 ))
    fi
}