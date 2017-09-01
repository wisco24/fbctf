#!/bin/bash

__email=$1
__domain=$2
__password=$3
source "/home/ubuntu/fbctf/extra/lib.sh"

__cert="/etc/nginx/certs/fbctf.crt"
__key="/etc/nginx/certs/fbctf.key"

unlink /etc/nginx/certs/fbctf.key
unlink /etc/nginx/certs/fbctf.crt
service nginx stop
letsencrypt_cert "$__cert" "$__key" "$__email" "$__domain" "false"
service nginx start

set_password "$__password" ctf ctf fbctf $PWD

