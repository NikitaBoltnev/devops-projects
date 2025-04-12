#!/bin/bash

flag=0


if [[ ! $# -eq 1 ]]
    then
    flag=1	
    echo "Enter one parameter- the absolute or relative path to any directory." >&2
    elif [[ ! $1 =~ /$ ]] 
        then
        flag=1
        echo "The parameter must end with a '/' character." >&2
        elif [[ ! -d $1 ]]
            then
            flag=1
            echo "The wrong path to the directory has been entered." >&2
fi


echo "$flag"