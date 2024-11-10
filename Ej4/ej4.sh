#!/bin/bash

filename=${1:-emails.txt}

if ! [[ -f "$filename" ]]; then
    echo "Archivo no encontrado"
    exit 1
fi

emails=$(grep -E "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*\.[a-zA-Z]{2,6}" $filename)

for i in $emails
do
    echo "$i"
done