#!/bin/bash

flag=$(./checkInput.sh "$@")

if [[ flag -eq 0 ]]
    then
    source configuration.conf

    column1_background="${column1_background:-0}"
    column1_font_color="${column1_font_color:-0}"
    column2_background="${column2_background:-0}"
    column2_font_color="${column2_font_color:-0}"


    styleFirst=$(./color.sh $column1_background $column1_font_color)
    styleSecond=$(./color.sh $column2_background $column2_font_color)


    ./print.sh $styleFirst $styleSecond


    ./colorScheme.sh $column1_background $column1_font_color $column2_background $column2_font_color

    else
        echo "The script should run without parameters."
fi