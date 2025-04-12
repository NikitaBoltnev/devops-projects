#!/bin/bash

textStyle() {
local background
local font


case $1 in
    1)
    background=47 #White
    ;;
    2)
    background=41 #Red
    ;;
    3)
    background=42 #Green
    ;;
    4)
    background=44 #Blue
    ;;
    5)
    background=45 #Purple
    ;;
    6)
    background=40 #Black
    ;;
    *)
    background=47 #Default white
    ;;
esac


case $2 in
    1)
    font=37 #White
    ;;
    2)
    font=31 #Red
    ;;
    3)
    font=32 #Green
    ;;
    4)
    font=34 #Blue
    ;;
    5)
    font=35 #Purple
    ;;
    6)
    font=30 #Black
    ;;
    *)
    font=30 #Default black
    ;;
esac


if [[ $font == 30 && $background == 40 ]]
    then
    background=47
fi

if [[ $font == 37 && $background == 47 ]]
    then
    font=30
fi


echo "\033[${background};${font}m"
}


style=$(textStyle $1 $2)


if [[ $1 == $2 ]]
    then 
    style=$(textStyle 0 0)
fi


echo "$style"