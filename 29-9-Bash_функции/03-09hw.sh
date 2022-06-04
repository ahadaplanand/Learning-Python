#!/bin/bash

path=$(pwd)

function copy_main {
    for file in $path/$1/$3
    do
        copy_file $file $path/$2
    done
}

function copy_file {
    cp $1 $2
    echo "the file was copied"
}

copy_main $1 $2 "*script*"
# 1 - папка с файлами
# 2 - куда копировать
# 3 - шаблон
