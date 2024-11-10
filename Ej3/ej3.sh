#!/bin/bash

movies=("Shrek" "Shrek 2" "Star Wars - Episode III: Revenge of the Sith" "Star Wars - Episode V: The Empires Strikes Back" "Interstellar")

for i in "${!movies[@]}"
do
    echo "$((i + 1)): ${movies[i]}"
done