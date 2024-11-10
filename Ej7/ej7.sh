#!/bin/bash

if [ -z "$1" ]; then
    echo "Error: No se ingresó el nombre del archivo"
    exit 1

elif [ ! -f "$1"  ]; then
    echo "Error: Archivo no encontrado"
    exit 1
fi

cat "$1"