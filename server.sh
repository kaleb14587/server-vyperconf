#!/bin/bash

echo "--- Instalando pacotes basicos ---"
sudo apt-get install software-properties-common vim curl python-software-properties git-core --assume-yes --force-yes

echo "--- Adicionando repositorio do pacote PHP ---"
sudo add-apt-repository ppa:ondrej/php

echo "--- Atualizando lista de pacotes ---"
sudo apt-get update

echo "--- Instalando MySQL, Phpmyadmin e alguns outros modulos ---"
sudo apt-get install mysql-server-5.5 mysql-client phpmyadmin --assume-yes --force-yes

echo "--- Instalando PHP, Apache e alguns modulos ---"
sudo apt-get install php7.2 php7.2-common --assume-yes --force-yes
sudo apt-get install php7.2-cli libapache2-mod-php7.2 php7.2-mbstring php7.2-curl php-memcached php7.2-dev php7.2-mcrypt php7.2-sqlite3 php7.2-mbstring zip unzip --assume-yes --force-yes
sudo apt install   php-mysql php7.2-mysql
echo "--- Instalando modulo que gera as imagens QR code ---"
sudo apt install php7.2-imagick

echo "--- Habilitando o PHP 7.2 ---"
sudo a2dismod php5
sudo a2enmod php7.2

echo "--- Habilitando mod-rewrite do Apache ---"
sudo a2enmod rewrite

echo "--- Reiniciando Apache ---"
sudo service apache2 restart

echo "--- Baixando e Instalando Composer ---"
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer

echo "--- Instalando Banco NoSQL -> Redis <- ---" 
sudo apt-get install redis-server --assume-yes
sudo apt-get install php7.2-redis --assume-yes

# Instale apartir daqui o que você desejar 

echo "[OK] --- Ambiente de desenvolvimento concluido ---"