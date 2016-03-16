#!/bin/sh
# Grabs latest code from github, builds and executes.
# move this file to: /usr/local/src and chmod +x update-raspatron.sh
#

clear

echo "Stopping raspatron web"
/etc/init.d/raspatron-web.sh stop

echo "Executing update script for raspatron-web..."

rm -rf /usr/local/src/raspatron-web
git clone https://github.com/zoroloco/raspatron-web.git /usr/local/src/raspatron-web

echo "Now installing dependencies."
cd /usr/local/src/raspatron-web
sudo npm install

echo "making scripts executable"
chmod +x /usr/local/src/raspatron-web/raspatron-web.sh

echo "Now running raspatron-web."
/usr/local/src/raspatron-web/raspatron-web.sh