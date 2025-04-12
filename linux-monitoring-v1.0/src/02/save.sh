#!/bin/bash

echo "Save the data to a file?"
echo "Enter Y/N"
read -s -n 1 answer


if [[ $answer == 'Y' || $answer == 'y' ]]
    then	
    exec > $2.status
    echo "$1"
fi