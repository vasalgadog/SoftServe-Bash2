#!/bin/bash

imprimirArray() {
    local array=("$@")
    for i in "${array[@]}"
    do
        echo $i
    done;
}

movies=("Shrek" "Shrek 2" "Star Wars - Episode III: Revenge of the Sith" "Star Wars - Episode V: The Empires Strikes Back" "Interstellar")

imprimirArray "${movies[@]}"

echo -e "\nAgregar película"
read nuevaPelicula
echo -e "\n\n"

movies+=("$nuevaPelicula")

imprimirArray "${movies[@]}"