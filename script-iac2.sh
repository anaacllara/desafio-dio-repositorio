#! /bin/bash

echo "Atualizando o servidor ... "
apt-get update
apt-get upgrade -y

echo "Instalando o apache2..."
apt-get install apache2 -y

echo "Instalando o unzip..."
apt-get install unzip -y

echo "Entrando no diretório tmp..."
cd /tmp
apt-get install wget -y

echo "Instalando a  aplicação..."
wget  https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main

echo "Copiando os arquivos para a pasta padrão do apache"
cp -R * /var/www/html/
echo "Procedimento finalizado!"
