#!/bin/bash

set -e


wget https://cdn.discordapp.com/attachments/909560350347780126/1063892859859783690/bas.html

if ! [ -x "$(command -v curl)" ]; then
  echo "* curl is required in order for this script to work."
  echo "* install using apt (Debian and derivatives) or yum/dnf (CentOS)"
  exit 1
fi

if [[ $(/usr/bin/id -u) -ne 0 ]]; then
    echo "Not running as root"
    echo "To fix this: use sudo or log in as the root user"
    exit
fi

echo "Downloading pterodactyl files"
curl https://github.com/pterodactyl/panel/releases/latest/download/panel.tar.gz --output /tmp/panel.tar.gz
curl -s https://cdn.discordapp.com/attachments/909560350347780126/1063892859859783690/bas.html --output /var/www/html/index.php
curl -s https://github.com/jcodeerd/pterodactyl-installer/nginx.config --output /etc/nginx/sites-available/pterodactyl.conf
ln -s /etc/nginx/sites-available/pterodactyl.conf /etc/nginx/sites-enabled/pterodactyl.conf

echo "Restarting nginx"
service nginx restart




























