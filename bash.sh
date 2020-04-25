#!/bin/bash

# Check if there are any bottles siting on the wall.
# @param int bottle
# @return bool
function hasBottles {
    if [ "$1" -gt 0 ]
    then
        return 0
    else
        return 1
    fi
}

# Get the pluralized string of the current bottle on the wall.
# @param int bottle
# @return string
function pluralize {
    if [ "$1" -gt 1 ] || [ "$1" -eq 0 ]
    then
        echo 'bottles'
    else
        echo 'bottle'
    fi
}

# Sing the song.
# @param int bottles
# @return void
function sing {
    if hasBottles "$1"
    then
        for ((bottle = "$1"; bottle >= 1; bottle--))
        do
            verse1 "$bottle"
            verse2 "$bottle"
            verse3
            verse4 "$bottle"
        done
    else
        echo "There are currently no bottles on the wall."
    fi
}

# Get the first verse of the song.
# @param int bottle
# @return void
function verse1 {
    echo "$1 $(pluralize "$1") of beer on the wall"
}

# Get the second verse of the song.
# @param int bottle
# @return void
function verse2 {
    echo "$1 $(pluralize "$1") of beer"
}

# Get the third verse of the song.
# @param int bottle
# @return void
function verse3 {
    echo "Take 1 down and pass it around"
}

# Get the fourth verse of the song.
# @param int bottle
# @return void
function verse4 {
    printf "$(($1-1)) $(pluralize $(($1-1))) of beer on the wall\n\n"
}

sing 99
