#!/bin/bash

if [ ! -d "backups" ]; then
    mkdir backups
fi

if [ -d "$1" ]; then
    newName=$(basename "$1")_$(date +%Y-%m-%d_%H:%M:%S)
elif [ -f "$1" ]; then
    extension="${1##*.}"
    fileName="$(basename "$1" ."$extension")"
    newName="${fileName}_$(date +%Y-%m-%d_%H:%M:%S).$extension"
else
    echo "Error: Archivo no encontrado"
    exit 1
fi

cp -r "$1" "backups/$newName"
tar -czf "backups/$newName.tar.gz" -C backups "$newName"

rm -rf "backups/$newName"

echo "Copia de seguridad creada correctamente"