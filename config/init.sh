#!/bin/sh

cd /tmp
sudo add-apt-repository ppa:ondrej/php -y
echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list

sudo apt-get update

# server
sudo apt-get install -y nginx
sudo apt-get install -y mongodb-org --force-yes

sudo apt-get install -y php7.0
sudo apt-get install -y php7.0-fpm
sudo apt-get install -y php7.0-xml

# dev
curl -sS https://getcomposer.org/installer > ./composer-setup.php
sudo php ./composer-setup.php --install-dir=/bin --filename=composer 
rm -f ./composer-setup.php

sudo curl -LsS https://symfony.com/installer -o /bin/symfony
sudo chmod a+x /bin/symfony

# tools
sudo apt-get install -y mc
sudo apt-get install -y htop
sudo apt-get install -y tree

sudo apt-get autoremove

# symlinks
sudo rm -Rf /var/www
ln -s /vagrant/www /var/www

chown -R www-data:www-data /var/www

ln -s /vagrant/config/nginx/site /etc/nginx/sites-enabled/site

sudo service nginx restart
sudo service mongod restart