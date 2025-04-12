#!/bin/bash

check=$(./checkInput.sh "$@")

if [[ check -eq 0 ]]
    then
    output=$(./print.sh)
    time=$(date +"%d_%m_%y_%H_%M_%S")
    echo "$output"
    ./save.sh "$output" "$time"
    else
        echo "The script should run without parameters."
fi