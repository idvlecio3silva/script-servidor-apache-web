#!/bin/bash

echo "Actualizar o servidor..."

apt update -y
apt upgrade -y
apt install apache2 -y
apt install unzip -y

echo "servidor actulizado!!"

echo "Baixar e copiar os arquivos da alicação..."
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip
cd linux-site-dio-main/
cp -R * /var/www/html/

