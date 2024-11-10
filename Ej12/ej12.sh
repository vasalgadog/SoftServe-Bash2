#!/bin/bash

filename="names.txt"
file="names.txt"

if [ ! -z "$1" ]; then
    filename=$(basename "$1")
    file="$1"
fi

sorted="sorted_$filename"

sort "$file" | uniq > $sorted