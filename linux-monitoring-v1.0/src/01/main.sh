#!/bin/bash

result=$(./checkInput.sh "$@")
case $result in
    "noParameter")
    echo "No parameters found."
    ;;
    "manyParameters")
    echo "Too many parameters."
    ;;
    "isNumber")
    echo "The parameter is a number, enter the text."
    ;;
    *)
    echo $1
    ;;
esac