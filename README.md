Phalanx
=======

A lightweight CMS built on top of Sails.js. The front-end is a lightweight front-end built on top of Bootstrap. There is also a versatile API which can be utilized to create your own front-end.

Development Installation Directions
-----------------------------------

This project is designed to use Vagrant for development with the Oracle VM VirtualBox provider so please first ensure that you have both Oracle VM VirtualBox and Vagrant installed and functioning properly.

We've decided to use one of Ubuntu's official boxes as the base box so you will first need to add that box to your Vagrant installation:

1. vagrant box add --name ubuntu/trusty64 https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box

Next we'll want to get the actual project (of course you can clone your own fork instead):

1. git clone git@github.com:spartaneous/phalanx.git
2. cd phalanx

Starting & Stopping The Application
-----------------------------------

To start the application use vagrant up. To stop it use vagrant halt.

Once the application is started it can then be accessed in your favorite browser at: http://localhost:1337/