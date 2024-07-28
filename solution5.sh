#!/bin/bash

echo -e "несусветная чушь!\nпросто проверка\nтыща строчек.\nничего" > solo.txt

while IFS= read -r lain; do
    revers_lain=$(echo "$lain" | rev)
    echo "$revers_lain"
done < solo.txt
