#!/bin/bash

Saludo() { 
    local name=$1
    echo "Hola, $name!";
}

Saludo "$1"