#!/bin/bash

: ${PORT:=8443}

sed -i 's/{nginxport}/'"$PORT"'/g' /etc/nginx/nginx.conf

bash -c $1
