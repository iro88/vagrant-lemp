# vagrant-lemp
My default LEMP (Ubuntu, Nginx, MongoDB, php7) development for Symfony projects used Vagrant.

Nginx is configured for Symfony project, so if you want use this Vagrant enviroment to other project you must change configuratuion in `/config/nginx/site` file.

## Requirements

* Installed vagrant ([download](https://www.vagrantup.com/downloads.html))

## Simple use

* Clone repository
* Open directory in comand line and type `vagrant up`
* After server starts you can create your symfony project in `www` direcotry
* Server is mapped to `localhost` on port `80`

## More info

For more info go to Vagrant [documentation](https://www.vagrantup.com/docs/).