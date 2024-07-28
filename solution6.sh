#!/bin/bash

directories=("$HOME/stuff" "$HOME/pictures" "$HOME/lololo")
backup="$HOME/backup"
data=$(date +"%Y-%m-%d")
archivation="backup_$data.tar.gz"

tar -czvf "$backup/$archivation" "${directories[@]}"

# потом в кронтабе чуть чуть
crontab -e
0 0 * * 0 $HOME/stuff/scriptos/solution6.sh
