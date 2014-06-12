#!/bin/bash

apt-get update 
apt-get -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" \
    install apache2

