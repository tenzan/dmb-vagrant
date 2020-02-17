#!/usr/bin/env bash

apt-get update
apt install curl -y
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
apt install build-essential nodejs -y
sudo apt autoremove -y
cd code
sudo npm install
npm run serve