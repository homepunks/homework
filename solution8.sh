#!/bin/bash
length=$1
kuda=$2

codirovschik() {
  openssl rand -base64 48 | tr -dc 'a-zA-Z0-9' | fold -w $length | head -n 1
}

password=$(codirovschik $length)
echo "$password" >> "$kuda"
