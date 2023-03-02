#!/bin/bash

echo "Atualizando sistema"
apt update && apt upgrade -y

echo "Instalado Apache2 e Unzip"
apt install apache2 unzip -y

echo "Realizando download da aplicação"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "descompactando aplicação"
unzip main.zip

echo "Movendo arquivos para o diretório do Apache"
mv -f linux-site-dio-main/* /var/www/html

echo "Configuração finalizada"
