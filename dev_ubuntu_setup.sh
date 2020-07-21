#!/bin/bash

sudo apt-get -y install git curl ruby ruby-dev zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev nodejs npm
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt update
sudo apt install -y oracle-java8-installer
sudo apt install -y oracle-java8-unlimited-jce-policy
sudo npm install -g grunt-cli
sudo npm install --global npm-check
sudo ln -s /usr/bin/nodejs /usr/bin/node
sudo npm install -g bower
sudo gem install scss_lint
sudo gem install compass
