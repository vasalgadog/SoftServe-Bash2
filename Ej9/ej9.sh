#!/bin/bash

data=( "Nombre Edad Grado" "Alejandra 21 A" "Carlos 23 B" "María 20 A" "José 22 C" "Valentina 19 B" "Andrés 24 B" "Lucía 20 A" "Sofía 22 C" "Fernando 21 A" "Camila 23 B" "Ricardo 20 C" "Paula 22 B" "Diego 19 A" "Carolina 21 C" "Manuel 24 B" "Daniela 22 A" "Jorge 23 C" "Isabel 20 B" "Francisco 19 A" "Andrea 21 B" )

touch students.txt

for i in "${data[@]}"
do
    echo "$i" >> students.txt
done

awk '{print $1, $3}' students.txt