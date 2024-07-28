#!/bin/bash

how_many_files=0
how_many_dirs=0

for item in *; do
    if [ -f "$item" ]; then
        ((how_many_files++))
    elif [ -d "$item" ]; then
        ((how_many_dirs++))
    fi
done

echo "файлов: $how_many_files"
echo "директорий: $how_many_dirs"
