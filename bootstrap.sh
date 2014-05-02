#!/bin/sh

sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y install npm
sudo ln -s /usr/bin/nodejs /usr/bin/node
sudo npm install -g sails@v0.10.0-rc5
sudo npm install -g forever
cd /vagrant
forever start app.js