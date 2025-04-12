#!/bin/bash

start=$SECONDS
flag=$(./checkInput.sh "$@")


if [[ $flag == 0 ]]
    then
    ./print.sh "$@"
fi