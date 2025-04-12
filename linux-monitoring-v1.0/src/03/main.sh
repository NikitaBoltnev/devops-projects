#!/bin/bash

flag=$(./checkInput.sh "$@")

if [[ $flag == true ]]
    then
    styleFirst=$(./color.sh $1 $2)
    styleSecond=$(./color.sh $3 $4)
    ./print.sh $styleFirst $styleSecond
fi
