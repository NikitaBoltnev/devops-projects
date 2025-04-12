#!/bin/bash

checkNumber() {
 [[ $1 =~ ^[0-9]+$ && $1 -ge 1 && $1 -le 6 ]]
}


inputError() {
echo "Specify 4 numbers from 1 to 6." >&2
echo "Argument 1 is the background of the value names." >&2
echo "Argument 2 is the font color of the value names." >&2
echo "Argument 3 is the background of the values." >&2
echo "Argument 4 is the font color of the values." >&2
echo "Color designations: (1 — white, 2 — red, 3 — green, 4 — blue, 5 – purple, 6 — black)" >&2
}


flag=true


if [[ $# -eq 0 ]] 
    then
    flag=false
    echo "You haven't entered arguments." >&2
    inputError
fi


if [[ $# -ne 4 && $flag == true ]]
    then
    flag=false
    echo "You entered the wrong number of arguments." >&2
    inputError
fi


if [[ $flag == true ]]
    then
    for arg in "$@"
        do
        if ! checkNumber "$arg"
            then
            flag=false
            echo "You entered the arguments incorrectly." >&2
            inputError
            break
        fi
        done
fi


if [[ $flag == true ]]
    then
    if [[ $1 == $2 || $3 == $4 ]]
        then
        flag=false
        echo "The font and background colors of the same column should not match." >&2
        echo "Run the script again with the correct arguments." >&2
    fi
    if [[ $1 == $2 ]]
        then
        echo "The first and second arguments must be different." >&2
    fi
    if [[ $3 == $4 ]]
        then
        echo "The third and fourth arguments must be different." >&2
    fi
fi


echo "$flag"