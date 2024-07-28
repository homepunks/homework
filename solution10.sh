#!/bin/bash

# у меня ubuntu based дистро, поэтому решение будет через аpt
# если будет надо, смогу и для yum или расман, но понадобится помощь интернета

sudo apt update
obnova=$(sudo apt list --upgradable 2>/dev/null | grep -v "^Listing" | wc -l)

if [ "$obnova" -gt 0 ]; then
    echo "есть доступные обновления: $obnova. установка началась --->"
    sudo apt upgrade -y
    echo "ГОТОВО"
else
    echo "ваша система итак обновлена. cheers!"
fi
