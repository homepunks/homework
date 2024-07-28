#!/bin/bash

archive="archive.tar.gz"
stuff=("monkey.txt" "lolik.txt" "soup.txt" "mega" "super")
echo "monketshi" > monkey.txt
echo "lolikshi" > lolik.txt
echo "soupshi" > soup.txt
mkdir -p mega
mkdir -p super

tar -czvf "$archive" "${stuff[@]}"
rm -rf "${stuff[@]}"
tar -xzvf "$archive"
if [ -d "mega" ] && [ -d "super" ] && [ -f "monkey.txt" ] && [ -f "lolik.txt" ] && [ -f "soup.txt" ]; then
    echo "все топчик"
else
    echo "ошибка при восстановлении файлов"
fi
