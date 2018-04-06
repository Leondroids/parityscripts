#!/usr/bin/env bash


export SCRIPT_HOME=~/parityscripts
sudo cp ~/$SCRIPT_HOME/parity.service.orig ~/$SCRIPT_HOME/parity.service
sed -i 's/USERNAME/"$USER"/g' $SCRIPT_HOME/parity.service
sudo cp ~/$SCRIPT_HOME/parity.service /etc/systemd/system/parity.service
rm ~/$SCRIPT_HOME/parity.service