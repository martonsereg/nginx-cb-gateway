#!/bin/bash

: ${PORT:=8443}

chmod +w /etc/nginx/nginx.conf
sed -i 's/{nginxport}/'"$PORT"'/g' /etc/nginx/nginx.conf

bash -c $1
