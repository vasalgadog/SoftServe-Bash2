#!/bin/bash

if [[ ! -d "testdir" ]]; then
    mkdir testdir
fi

cd testdir

for i in {1..10}
do
    if ! [[ -f "file$i.txt" ]]; then
        touch "file$i.txt"
    fi
    echo "Hello" > "file$i.txt"
done