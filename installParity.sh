#!/usr/bin/env bash

export SCRIPT_HOME=~/parityscripts

sudo apt-get install build-essential
sudo apt install gcc
sudo apt install g++
sudo apt install libssl-dev
sudo apt install openssl
sudo apt install libudev-dev
sudo apt install pkg-config

echo 'alias parity=~/parity/target/release/parity' >>~/.profile
mkdir config
mkdir data

cp $SCRIPT_HOME/config.toml ~/config/

sed -i 's/USERNAME/$USER/g' $SCRIPT_HOME/parityservice/parity.service
sudo cp ~/$SCRIPT_HOME/parityservice/parity.service /etc/systemd/system