#!/bin/bash

flag=0


if [[ $# -eq 0 ]]
    then
    echo "noParameter"
    flag=1
    elif [[ $# -gt 1 ]]
        then
        echo "manyParameters"
        flag=1
fi


if [[ $1 =~ ^[0-9]+$ && flag -eq 0 ]]
    then
    echo "isNumber"
    flag=1
fi


if [[ $flag -eq 0 ]]
    then
    echo "$1"
fi