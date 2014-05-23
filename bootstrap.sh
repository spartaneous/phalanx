#!/bin/sh

# install node, npm, and needed packages
apt-get -y install npm
ln -s /usr/bin/nodejs /usr/bin/node
npm install -g sails@v0.10.0-rc7
npm install -g forever

# install needed packages for phalanx
cd /vagrant
sudo -u vagrant npm install

# daemonize phalanx
cd /home/vagrant
touch start-phalanx.sh
chown vagrant:vagrant start-phalanx.sh
chmod +x start-phalanx.sh
echo '#!/bin/bash' > start-phalanx.sh
echo 'cd /vagrant' >> start-phalanx.sh
echo '/usr/local/bin/forever -w start app.js' >> start-phalanx.sh

# setup upstart init script for phalanx
cd /etc/init
touch phalanx.conf
echo 'description "Daemonizes the Phalanx CMS"' > phalanx.conf
echo 'author "Spartaneous"' >> phalanx.conf
echo 'start on runlevel [2345]' >> phalanx.conf
echo 'start on vagrant-mounted' >> phalanx.conf
echo 'stop on runlevel [06]' >> phalanx.conf
echo 'exec start-stop-daemon --start --chuid vagrant --make-pidfile --pidfile /var/opt/phalanx.pid --exec /home/vagrant/start-phalanx.sh >> /var/opt/phalanx.log 2>&1' >> phalanx.conf

# start phalanx
start phalanx
