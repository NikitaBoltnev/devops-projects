#!/bin/bash

colorSheme(){
local backgrond
local font


if [[ $1 == $2  ]]
    then
    background="default (white)"
    font="default (black)"
    else
        case $1 in
        1)
        background="1 (white)"
        ;;
        2)
        background="2 (red)"
        ;;
        3) 
        background="3 (green)" 
        ;;
        4) 
        background="4 (blue)" 
        ;;
        5) 
        background="5 (purple)" 
        ;;
        6) 
        background="6 (black)" 
        ;;
        *) 
        background="default (white)" 
        ;;
        esac


        case $2 in
        1) 
        font="1 (white)" 
        ;;
        2) 
        font="2 (red)" 
        ;;
        3) 
        font="3 (green)" 
        ;;
        4) 
        font="4 (blue)" 
        ;;
        5) 
        font="5 (purple)" 
        ;;
        6) 
        font="6 (black)" 
        ;;
        *) 
        font="default (black)" 
        ;;
        esac
fi


if [[ $background == "6 (black)" && $font == "default (black)" ]]
    then
    background="default (white)"
fi


if [[ $background == "default (white)" && $font == "1 (white)" ]]
    then
    font="default (black)"
fi


echo "$background $font"
}


output=$(colorSheme "$1" "$2")
background1=$(echo "$output" | awk '{print $1 " " $2}')
font1=$(echo "$output" | awk '{print $3 " " $4}')
output=$(colorSheme "$3" "$4")
background2=$(echo "$output" | awk '{print $1 " " $2}')
font2=$(echo "$output" | awk '{print $3 " " $4}')


echo -e "\nColumn 1 background = $background1"
echo "Column 1 font color = $font1"
echo "Column 2 background = $background2"
echo "Column 2 font color = $font2"