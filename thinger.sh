#!/bin/bash
sudo apt update
sudo apt upgrade

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6

echo "deb [ arch=amd64,arm64 ] http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list

sudo apt update
sudo apt install -y mongodb-org
echo "copy the following configuration and save the file."
echo "	"
echo "[Unit]
Description=High-performance, schema-free document-oriented database
After=network.target

[Service]
User=mongodb
ExecStart=/usr/bin/mongod --quiet --config /etc/mongod.conf

[Install]
WantedBy=multi-user.target"
echo "	"
sleep 10s
echo "10 seconds to copy above configuration"
sudo nano /etc/systemd/system/mongodb.service

sudo systemctl start mongodb
sudo systemctl enable mongodb
#sudo systemctl status mongodb

sudo snap install thinger-maker-server
#sudo service snap.thinger-maker-server.thingerd status
#sudo service snap.thinger-maker-server.thingerd restart
#sudo service snap.thinger-maker-server.thingerd stop
