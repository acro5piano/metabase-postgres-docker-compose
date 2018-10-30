#!/bin/bash

set -eux

sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y remove docker docker-engine docker.io
sudo apt-get -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) \
    stable"

sudo apt-get -y update
sudo apt-get -y install docker-ce docker-compose
