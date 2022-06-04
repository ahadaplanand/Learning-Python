#!/bin/bash

array=(one two three four [5]=five)
echo "Array size: ${#array[*]}"

echo "Array elements: "
for item in ${array[*]}
    do
    printf " %s\n" $item
    done

echo "Array indexes: "
for index in ${!array[*]}
    do 
    printf " %d\n" $index
    done

echo "Array indexes and elements"
for index in ${!array[*]}
    do
    printf " %d: %s\n" $index ${array[$index]}
    done

for var in first second third "tho fourth element"
    do
    echo $var
    done
