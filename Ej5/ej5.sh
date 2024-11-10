#!/bin/bash

divisible(){
    local n=$1
    local m=$2
    if [ $((n%m)) -eq 0 ]; then
        echo "Divisible"
    else
        echo "No divisible"
    fi
}

n=$1
m=$2

if [ -z "$n" ]; then
    echo "Ingrese un número"
    read n
    echo "Ingrese otro número"
    read m
elif  [ -z "$m" ]; then
    echo "Ingrese otro número"
    read m
fi

if [ $m -eq 0 ]; then
    echo "No se permite la división por cero"
    exit 1
fi

divisible $n $m